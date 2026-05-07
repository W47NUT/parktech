<script lang="ts">
  import "../styles/global.css";

  const signals = [
    {
      value: "1-10",
      label: "Typical small-office user range",
    },
    {
      value: "Client-owned",
      label: "Systems stay under the client's control",
    },
    {
      value: "Plain English",
      label: "Support notes and recommendations are written to be usable",
    },
  ];
</script>

<section class="relative py-16">
  <div class="mx-auto max-w-7xl px-6">
    <dl class="grid grid-cols-1 gap-6 text-center md:grid-cols-3">
      {#each signals as signal}
        <div class="mx-auto flex max-w-xs flex-col gap-y-4">
          <dt class="text-[#e0e7ff]">{signal.label}</dt>
          <dd class="order-first text-3xl font-semibold tracking-tight">
            <span
              class="cyber-glitch glow-text text-[#e0e7ff]"
              data-text={signal.value}
            >
              {signal.value}
            </span>
          </dd>
        </div>
      {/each}
    </dl>
  </div>
</section>
