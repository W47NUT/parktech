<script lang="ts">
  import { onMount } from "svelte";

  const CONTAINER_ID = "particles";
  const STYLE_ID = "parktech-particles-style";

  // Keep the count bounded. The particles are identity texture, not content,
  // and should stay cheap on small laptops and phones.
  const PARTICLE_COUNT = 100;

  function randomOffset() {
    return `${Math.random() * 100 - 50}px`;
  }

  // The animation keyframes are injected once because Astro may re-run this
  // component during page restores or future client-side navigation.
  function ensureParticleStyles() {
    if (document.getElementById(STYLE_ID)) return;

    const style = document.createElement("style");
    style.id = STYLE_ID;
    style.textContent = `
      @keyframes parktech-particle-float {
        0% { transform: translate3d(0, 0, 0); }
        25% { transform: translate3d(var(--float-x-1), var(--float-y-1), 0); }
        50% { transform: translate3d(var(--float-x-2), var(--float-y-2), 0); }
        75% { transform: translate3d(var(--float-x-3), var(--float-y-3), 0); }
        100% { transform: translate3d(0, 0, 0); }
      }
    `;
    document.head.appendChild(style);
  }

  // ParkTech's retained visual identity uses teal and pink accents. Each dot
  // gets its own float offsets so the background feels alive without a library.
  function createParticle() {
    const particle = document.createElement("div");
    const size = Math.random() * 3 + 1;
    const color = Math.random() > 0.5 ? "#00f0c0" : "#ff2a6d";
    const opacity = Math.random() * 0.5 + 0.1;
    const duration = Math.random() * 50 + 20;

    particle.style.position = "absolute";
    particle.style.left = `${Math.random() * 100}%`;
    particle.style.top = `${Math.random() * 100}%`;
    particle.style.width = `${size}px`;
    particle.style.height = `${size}px`;
    particle.style.backgroundColor = color;
    particle.style.borderRadius = "50%";
    particle.style.opacity = String(opacity);
    particle.style.boxShadow = `0 0 ${size * 2}px ${color}`;
    particle.style.animation = `parktech-particle-float ${duration}s infinite linear`;
    particle.style.setProperty("--float-x-1", randomOffset());
    particle.style.setProperty("--float-y-1", randomOffset());
    particle.style.setProperty("--float-x-2", randomOffset());
    particle.style.setProperty("--float-y-2", randomOffset());
    particle.style.setProperty("--float-x-3", randomOffset());
    particle.style.setProperty("--float-y-3", randomOffset());

    return particle;
  }

  // replaceChildren clears any old dots before inserting new ones, which avoids
  // duplicate particle layers after browser page restores.
  function rebuildParticles(container: HTMLElement) {
    ensureParticleStyles();

    const fragment = document.createDocumentFragment();
    for (let i = 0; i < PARTICLE_COUNT; i++) {
      fragment.appendChild(createParticle());
    }

    container.replaceChildren(fragment);
  }

  onMount(() => {
    let disposed = false;
    let frameId: number | undefined;
    let retryId: ReturnType<typeof setTimeout> | undefined;

    // The layout owns #particles, but hydration can race the DOM on slow page
    // loads. Retry briefly, then fail quietly because this is decorative.
    const init = (attempt = 0) => {
      if (disposed) return;

      const container = document.getElementById(CONTAINER_ID);
      if (!container) {
        if (attempt < 8) {
          retryId = setTimeout(() => init(attempt + 1), 75);
        }
        return;
      }

      rebuildParticles(container);
    };

    // Use the next animation frame so the container is measurable and attached
    // before particles are generated.
    const scheduleInit = () => {
      if (frameId) cancelAnimationFrame(frameId);
      frameId = requestAnimationFrame(() => init());
    };

    scheduleInit();
    window.addEventListener("pageshow", scheduleInit);
    document.addEventListener("astro:page-load", scheduleInit);

    return () => {
      // Cancel scheduled work and listeners so future remounts start cleanly.
      disposed = true;
      if (frameId) cancelAnimationFrame(frameId);
      if (retryId) clearTimeout(retryId);
      window.removeEventListener("pageshow", scheduleInit);
      document.removeEventListener("astro:page-load", scheduleInit);
    };
  });
</script>
