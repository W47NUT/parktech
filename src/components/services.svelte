<script>
  import "../styles/global.css";
  import servers from "../assets/servercluster.svg?url";
  import shield from "../assets/shield.svg?url";
  import cloud from "../assets/cloud.svg?url";
</script>

<div class="mx-auto max-w-7xl space-y-6 px-4 py-12">
  <div class="flex">
    <div
      class="mb-6 ml-auto inline-block rounded border border-[#3a3f5e]/50 bg-[#181c27]/30 px-3 py-1 text-[#a0aed0] backdrop-blur-sm"
    >
      <h1 class="font-bold text-[#e0e7ff]">
        <span class="text-[#00f0c0]">&gt;&nbsp;&nbsp;</span> Why do our clients choose
        us?
      </h1>
    </div>
  </div>

  <div class="inset-0 rounded-lg">
    <div>
      <div
        class=" glow relative grid grid-flow-col grid-rows-3 gap-4 overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#eef]"
      >
        <div class="row-span-3">
          <img class="mx-auto h-64 w-64" src={servers} alt="server cluster" />
        </div>
        <div
          class="col-span-2 my-auto pt-2 font-bold text-zinc-900 underline underline-offset-4"
        >
          Managed IT
        </div>
        <div class="col-span-2 row-span-2 font-semibold text-zinc-900">
          All-in-one IT support, monitoring, and maintenance. We handle every
          device, system, and user so you can focus on business.
        </div>
      </div>
    </div>
  </div>

  <div
    class="grid grid-flow-col grid-rows-3 gap-4 border border-white shadow-lg"
  >
    <div
      class="col-span-2 my-auto text-right font-bold underline underline-offset-4"
    >
      Cybersecurity
    </div>
    <div class="col-span-2 row-span-2 text-right font-semibold">
      Protection from threats with practical, business-grade security. Hardened
      systems, ongoing monitoring, and user safety built in.
    </div>
    <div class="row-span-3">
      <img class="mx-auto h-64 w-64" src={shield} alt="shield" />
    </div>
  </div>
  <div class="grid grid-flow-col grid-rows-3 gap-4 border shadow-lg">
    <div class="row-span-3">
      <img class="mx-auto h-64 w-64" src={cloud} alt="cloud" />
    </div>
    <div class="col-span-2 my-auto font-bold underline underline-offset-4">
      Cloud Solutions
    </div>
    <div class="col-span-2 row-span-2 font-semibold">
      Migration, setup, and management of cloud platforms for email, files, and
      productivity. Simple, secure, and always available.
    </div>
  </div>
</div>
