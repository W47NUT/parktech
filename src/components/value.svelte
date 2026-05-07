<script lang="ts">
  import "../styles/global.css";

  const clientTypes = [
    "Therapy practices",
    "Small law offices",
    "Bookkeepers and accountants",
    "Small clinics",
    "Wellness offices",
    "Solo professionals",
    "Local businesses with small teams",
  ];
</script>

<section id="who-parktech-helps" class="relative mx-auto max-w-7xl px-4 py-16">
  <div class="section-tag mb-6">
    <span class="section-tag__marker">&gt;</span>
    <span class="section-tag__text">Who ParkTech helps</span>
  </div>

  <div class="grid gap-8 lg:grid-cols-[0.95fr_1.25fr] lg:items-start">
    <div class="relative self-start">
      <div class="absolute inset-0 rounded-lg bg-[#00f0c0]/20"></div>
      <div
        class="glow relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]"
      >
        <div
          class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
        ></div>
        <div class="p-6 sm:p-7">
          <div class="mb-4 flex">
            <h2 class="text-2xl font-semibold text-[#00f0c0]">
              For offices where technology cannot live in one person's head.
            </h2>
          </div>
          <div class="space-y-3 text-[#e0e7ff]">
            <p>
              ParkTech is for offices that run on email, files, devices,
              printers, portals, and vendor accounts but do not have internal
              IT.
            </p>
            <p>
              When access, vendors, devices, and support history are scattered,
              routine problems turn into lost time.
            </p>
            <p>
              ParkTech fixes the issue, cleans up the surrounding confusion, and
              leaves useful notes behind.
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="grid gap-4 sm:grid-cols-2">
      {#each clientTypes as clientType}
        <div
          class="mobile-solid-surface flex min-h-16 items-center rounded border border-[#3a3f5e]/80 bg-[#181c27]/80 p-4 text-[#e0e7ff] backdrop-blur-sm sm:last:col-span-2"
        >
          <p class="font-semibold">
            <span class="text-[#ff2a6d]">/&nbsp;</span>{clientType}
          </p>
        </div>
      {/each}
    </div>
  </div>
</section>
