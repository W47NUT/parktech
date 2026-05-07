<script lang="ts">
  import "../styles/global.css";

  const supportAreas = [
    {
      title: "Office technology",
      marker: "01",
      body: "Workstations, printers, scanners, Wi-Fi, email, files, vendors, and the everyday systems your office depends on.",
    },
    {
      title: "Security basics",
      marker: "02",
      body: "Password manager adoption, MFA review, account cleanup, device updates, backup discovery, and safer access habits.",
    },
    {
      title: "Clear documentation",
      marker: "03",
      body: "Plain-English notes for devices, accounts, vendors, support requests, changes, and follow-up items.",
    },
  ];

  const helpItems = [
    "Everyday computer and workstation support",
    "Microsoft 365 or Google Workspace basics",
    "Password manager and MFA support",
    "Printer, scanner, and network troubleshooting",
    "Account and access organization",
    "Device and asset documentation",
    "Vendor coordination",
    "Basic security hygiene",
    "Plain-English support notes and monthly summaries",
  ];

  const workingSteps = [
    {
      step: "01",
      title: "Understand the office",
      body: "ParkTech identifies the devices, accounts, vendors, and workflows your office relies on.",
    },
    {
      step: "02",
      title: "Document the environment",
      body: "Important systems, access, devices, vendors, and risks are documented in plain English.",
    },
    {
      step: "03",
      title: "Fix immediate issues",
      body: "Support focuses on the problems that are actively slowing the office down.",
    },
    {
      step: "04",
      title: "Improve basic security",
      body: "ParkTech helps with practical safeguards such as MFA, password manager adoption, account cleanup, device updates, and backup discovery.",
    },
    {
      step: "05",
      title: "Keep support organized",
      body: "Support requests, changes, and follow-up items are tracked so technology does not live only in someone's memory.",
    },
  ];

  const ownershipPoints = [
    "Client-owned accounts whenever possible",
    "Named admin access instead of shared personal logins",
    "Documentation that makes offboarding possible",
    "No unnecessary storage of client data",
    "No raw passwords in documentation",
  ];

  const founderPoints = [
    "Direct point of contact",
    "Plain-English explanations",
    "Careful documentation",
    "Practical recommendations",
    "No oversized IT theater",
  ];
</script>

<section
  id="what-parktech-helps-with"
  class="relative mx-auto max-w-7xl px-4 py-16"
>
  <div class="flex">
    <div
      class="mb-6 ml-auto inline-block rounded border border-[#3a3f5e]/50 bg-[#181c27]/30 px-3 py-1 text-[#a0aed0] backdrop-blur-sm"
    >
      <h1 class="font-bold text-[#e0e7ff]">
        <span class="text-[#00f0c0]">&gt;&nbsp;&nbsp;</span> What ParkTech helps
        with
      </h1>
    </div>
  </div>

  <div class="grid gap-8 lg:grid-cols-[0.95fr_1.05fr]">
    <div class="space-y-6">
      <div
        class="glow relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27] p-6 sm:p-8"
      >
        <div
          class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
        ></div>
        <h2 class="text-2xl font-semibold text-[#00f0c0]">
          Practical support for the technology your office already depends on.
        </h2>
        <p class="pt-5 text-[#e0e7ff]">
          Small offices do not always need a complicated IT department. They
          need someone who can understand the environment, fix real problems,
          document what matters, and make steady improvements over time.
        </p>
        <p class="pt-5 text-sm font-semibold text-[#a0aed0]">
          ParkTech focuses on practical IT support and risk reduction. It does
          not claim to certify legal or regulatory requirements or replace
          legal, insurance, or regulatory professionals.
        </p>
      </div>

      <div class="grid gap-4 sm:grid-cols-3">
        {#each supportAreas as area}
          <div
            class="relative overflow-hidden rounded border border-[#3a3f5e]/80 bg-[#181c27]/80 p-5 text-[#e0e7ff]"
          >
            <div
              class="absolute top-0 left-0 h-full w-1 bg-gradient-to-b from-[#00f0c0] to-[#ff2a6d]"
            ></div>
            <p class="gradient-text pl-3 text-xs font-bold">
              {area.marker}
            </p>
            <h3 class="pl-3 font-semibold text-[#00f0c0]">{area.title}</h3>
            <p class="pt-3 pl-3 text-sm text-[#a0aed0]">{area.body}</p>
          </div>
        {/each}
      </div>
    </div>

    <div class="grid gap-4 sm:grid-cols-2">
      {#each helpItems as item, index}
        <div
          class="relative min-h-28 overflow-hidden rounded border border-[#3a3f5e]/80 bg-[#181c27]/80 p-4 text-[#e0e7ff] backdrop-blur-sm sm:last:col-span-2"
        >
          <div
            class="absolute top-0 left-0 h-full w-1 bg-gradient-to-b from-[#00f0c0] to-[#ff2a6d]"
          ></div>
          <div
            class="absolute right-3 bottom-3 h-8 w-8 border-r border-b border-[#3a3f5e]/70"
          ></div>
          <p class="gradient-text pl-3 text-xs font-bold">
            {String(index + 1).padStart(2, "0")}
          </p>
          <p class="pt-3 pl-3 font-semibold">{item}</p>
        </div>
      {/each}
    </div>
  </div>
</section>

<section id="how-support-works" class="relative mx-auto max-w-7xl px-4 py-16">
  <div
    class="mb-6 inline-block rounded border border-[#3a3f5e]/50 bg-[#181c27]/30 px-3 py-1 text-[#a0aed0] backdrop-blur-sm"
  >
    <h1 class="font-bold text-[#e0e7ff]">
      <span class="text-[#00f0c0]">&gt;&nbsp;&nbsp;</span> How support works
    </h1>
  </div>

  <div
    class="glow relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27] p-6 sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#00f0c0]">
      A simple process built around clarity.
    </h2>
    <div class="mt-8 grid gap-4 md:grid-cols-5">
      {#each workingSteps as step}
        <div class="rounded border border-[#3a3f5e]/80 bg-[#0a0c12]/60 p-4">
          <p class="gradient-text text-sm font-bold">{step.step}</p>
          <h3 class="pt-3 font-semibold text-[#e0e7ff]">{step.title}</h3>
          <p class="pt-3 text-sm text-[#a0aed0]">{step.body}</p>
        </div>
      {/each}
    </div>
  </div>
</section>

<section
  class="relative mx-auto grid max-w-7xl gap-8 px-4 py-16 lg:grid-cols-2"
>
  <div
    class="glow relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27] p-6 sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#00f0c0]">
      Your systems stay yours.
    </h2>
    <p class="pt-5 text-[#e0e7ff]">
      ParkTech's operating principle is simple: the client owns the systems.
      ParkTech gets controlled access where needed, documents the work, and
      removes access when the relationship ends.
    </p>
    <ul class="mt-6 space-y-3 text-[#e0e7ff]">
      {#each ownershipPoints as point}
        <li><span class="text-[#ff2a6d]">/&nbsp;</span>{point}</li>
      {/each}
    </ul>
  </div>

  <div
    class="glow-alt relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27] p-6 sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#ff2a6d] to-[#00f0c0]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#ff2a6d]">
      Direct help from the person responsible for the work.
    </h2>
    <p class="pt-5 text-[#e0e7ff]">
      Small offices often need someone who can listen carefully, explain
      clearly, document what matters, and make steady improvements without
      overcomplicating the business.
    </p>
    <ul class="mt-6 space-y-3 text-[#e0e7ff]">
      {#each founderPoints as point}
        <li><span class="text-[#00f0c0]">/&nbsp;</span>{point}</li>
      {/each}
    </ul>
  </div>
</section>
