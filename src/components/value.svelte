<script lang="ts">
  import "../styles/global.css";

  const clientTypes = [
    "Therapy practices",
    "Small law offices",
    "Bookkeeping and accounting offices",
    "Small clinics",
    "Wellness offices",
    "Solo professionals",
    "Local businesses with small teams",
  ];
</script>

<section id="who-parktech-helps" class="relative mx-auto max-w-7xl px-4 py-16">
  <div
    class="mb-6 inline-block rounded border border-[#3a3f5e]/50 bg-[#181c27]/30 px-3 py-1 text-[#a0aed0] backdrop-blur-sm"
  >
    <h1 class="font-bold text-[#e0e7ff]">
      <span class="text-[#00f0c0]">&gt;&nbsp;&nbsp;</span> Who ParkTech helps
    </h1>
  </div>

  <div class="grid gap-8 lg:grid-cols-[1.2fr_1fr]">
    <div class="relative flex flex-col">
      <div class="absolute inset-0 rounded-lg bg-[#00f0c0]/20"></div>
      <div
        class="h-full glow relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]"
      >
        <div
          class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
        ></div>
        <div class="p-6 sm:p-8">
          <div class="mb-6 flex">
            <h2 class="text-2xl font-semibold text-[#00f0c0]">
              Built for offices too small for internal IT.
            </h2>
          </div>
          <div class="space-y-4 text-[#e0e7ff]">
            <p>
              Many small professional offices rely on a mix of personal
              knowledge, vendor support, old passwords, scattered files, and
              undocumented systems.
            </p>
            <p>
              That works until something breaks, someone leaves, an account gets
              locked, a device fails, or nobody knows who owns a critical system.
            </p>
            <p>
              ParkTech helps bring order to that environment without forcing a
              giant IT model onto a small office.
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="grid gap-4 sm:grid-cols-2 lg:grid-cols-1">
      {#each clientTypes as clientType}
        <div
          class="rounded border border-[#3a3f5e]/80 bg-[#181c27]/80 p-4 text-[#e0e7ff] backdrop-blur-sm sm:last:col-span-2 lg:last:col-span-1"
        >
          <p class="font-semibold">
            <span class="text-[#ff2a6d]">/&nbsp;</span>{clientType}
          </p>
        </div>
      {/each}
    </div>
  </div>
</section>
