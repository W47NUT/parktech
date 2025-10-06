<script>
  import "../styles/global.css";
  import servers from "../assets/servercluster.svg?url";
  import shield from "../assets/shield.svg?url";
  import cloud from "../assets/cloud.svg?url";
</script>

<div class="mx-auto max-w-7xl px-4">
  <div class="flex">
    <div
      class="mb-6 ml-auto inline-block rounded border border-[#3a3f5e]/50 bg-[#181c27]/30 px-3 py-1 text-[#a0aed0] backdrop-blur-sm"
    >
      <h1 class="font-bold text-[#e0e7ff]">
        <span class="text-[#00f0c0]">&gt;&nbsp;&nbsp;</span> What can we do for you?
      </h1>
    </div>
  </div>
    
  <div class="flex pb-16">
    <div class="pr-4 flex-shrink-0">
      <img  class="relative h-64 w-64" src={servers} alt="server cluster" />
    </div>
    <div class="glow relative grid grid-flow-col grid-rows-3 gap-4 overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]">
      <div
        class="from-[#00f0c0] to-[#ff2a6d] absolute top-0 left-0 h-1 w-full bg-gradient-to-r">
      </div>
      <div class="col-span-2 my-auto pt-2 pl-16 font-bold text-[#00f0c0]">
        24/7 Proactive IT Management
      </div>
      <div class="px-16 col-span-2 row-span-2 font-semibold text-[#e0e7ff]">
       We continuously monitor every server, workstation, router, and endpoint around the clock. Automatic patching, performance tuning, and real‑time alerts stop problems before they become outages. Plus, you get a single point of contact for any support request. Focus on growing your business, your IT is covered. 
      </div>
    </div>
  </div>

  <div class="flex pb-16">
    <div class="glow relative grid grid-flow-col grid-rows-3 gap-4 overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]">
      <div
        class="from-[#00f0c0] to-[#ff2a6d] absolute top-0 left-0 h-1 w-full bg-gradient-to-r">
      </div>
      <div class="col-span-2 my-auto pt-2 pl-16 font-bold text-[#00f0c0]">
        Enterprise-Grade Cyber Defense
      </div>
      <div class="px-16 col-span-2 row-span-2 font-semibold text-[#e0e7ff]">
        Our multi-layer security platform combines next-gen firewalls, endpoint detection, regular vulnerability scans, and threat-intelligence feeds to keep your data safe. Should an incident occur, our dedicated response team acts immediately, containing threats and guiding you through remediation. Maintain compliance, build customer trust, and sleep easy knowing your assets are protected.
      </div>
    </div>
    <div class="pl-4 flex-shrink-0">
      <img  class="relative h-64 w-64" src={shield} alt="server cluster" />
    </div>
  </div>

  <div class="flex">
    <div class="pr-4 flex-shrink-0">
      <img  class="relative h-64 w-64" src={cloud} alt="server cluster" />
    </div>
    <div class="glow relative grid grid-flow-col grid-rows-3 gap-4 overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]">
      <div
        class="from-[#00f0c0] to-[#ff2a6d] absolute top-0 left-0 h-1 w-full bg-gradient-to-r">
      </div>
      <div class="col-span-2 my-auto pt-2 pl-16 font-bold text-[#00f0c0]">
        Cloud Infrastructure & Support
      </div>
      <div class="px-16 col-span-2 row-span-2 font-semibold text-[#e0e7ff]">
        Move to the cloud with confidence and give your team the power to work from anywhere with rock‑solid file sharing, company‑wide email and calendar access, and HD video meetings. We handle configuration, security, and scaling, so your documents sync instantly across desktop, mobile, and web. Your users stay connected whether online or offline, and you never lose a file. Focus on projects and clients, your cloud environment is in expert hands.
      </div>
    </div>
  </div>
</div>
