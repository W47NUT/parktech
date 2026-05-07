<script lang="ts">
  // Homepage support-area cards. These are public marketing copy, so keep them
  // practical and avoid language that makes the service sound larger than it is.
  const supportAreas = [
    {
      title: "Daily support",
      marker: "01",
      body: "Help with workstations, email, files, printers, scanners, Wi-Fi, network basics, and vendor handoffs.",
    },
    {
      title: "Access basics",
      marker: "02",
      body: "Support for account ownership, password managers, MFA, device updates, backups discovery, and safer access habits.",
    },
    {
      title: "Documentation rhythm",
      marker: "03",
      body: "Plain-English records for devices, accounts, vendors, changes, support requests, and follow-up items.",
    },
  ];

  // Checklist-style support items shown in the right-side card grid.
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

  // Process cards explain how work is handled without creating a service-level
  // promise or emergency-support expectation.
  const workingSteps = [
    {
      step: "01",
      title: "Map what exists",
      body: "ParkTech identifies the devices, accounts, vendors, and workflows the office relies on.",
    },
    {
      step: "02",
      title: "Fix the blocker",
      body: "Support starts with the practical issue that is slowing the office down.",
    },
    {
      step: "03",
      title: "Improve the basics",
      body: "Access, MFA, password manager use, device updates, and backup questions are handled pragmatically.",
    },
    {
      step: "04",
      title: "Leave a clear record",
      body: "Changes, support notes, access details, and next steps are documented in plain English.",
    },
  ];

  // Guardrail copy for the client-owned systems principle.
  const ownershipPoints = [
    "Client-owned accounts whenever possible",
    "Named admin access instead of shared personal logins",
    "Documentation that makes offboarding possible",
    "No unnecessary storage of client data",
    "No raw passwords in documentation",
  ];

  // Short trust signals. Keep these grounded in delivery style, not scale.
  const supportPoints = [
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
    <div class="section-tag mb-6 ml-auto">
      <span class="section-tag__marker">&gt;</span>
      <span class="section-tag__text">What ParkTech helps with</span>
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
          Get the office out of technology guesswork.
        </h2>
        <p class="pt-5 text-[#e0e7ff]">
          ParkTech helps with the ordinary systems that decide whether the day
          runs smoothly: devices, email, files, accounts, printers, scanners,
          network basics, vendor portals, passwords, MFA, and documentation.
        </p>
        <p class="pt-5 text-sm font-semibold text-[#a0aed0]">
          The goal is practical support and reduced avoidable technology risk,
          not overbuilt security theater or certification claims.
        </p>
      </div>

      <div class="grid auto-rows-fr gap-4 sm:grid-cols-3">
        {#each supportAreas as area}
          <div
            class="mobile-solid-surface relative h-full overflow-hidden rounded border border-[#3a3f5e]/80 bg-[#181c27]/80 p-5 text-[#e0e7ff]"
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

    <div class="support-help-grid">
      {#each helpItems as item, index}
        <div
          class="support-help-card mobile-solid-surface relative flex h-full flex-col overflow-hidden rounded border border-[#3a3f5e]/80 bg-[#181c27]/80 p-4 text-[#e0e7ff] backdrop-blur-sm"
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
          <p class="support-help-card__text font-semibold">
            {item}
          </p>
        </div>
      {/each}
    </div>
  </div>
</section>

<section id="how-support-works" class="relative mx-auto max-w-7xl px-4 py-16">
  <div class="section-tag mb-6">
    <span class="section-tag__marker">&gt;</span>
    <span class="section-tag__text">How support works</span>
  </div>

  <div
    class="glow relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27] p-6 sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#00f0c0]">
      A simple process built around useful records.
    </h2>
    <div class="mt-8 grid auto-rows-fr gap-4 md:grid-cols-4">
      {#each workingSteps as step}
        <div
          class="mobile-solid-surface-dark h-full rounded border border-[#3a3f5e]/80 bg-[#0a0c12]/60 p-4"
        >
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
      Direct IT support, documented clearly.
    </h2>
    <p class="pt-5 text-[#e0e7ff]">
      Small offices often need accountable support that can listen carefully,
      explain clearly, document what matters, and make practical
      recommendations.
    </p>
    <ul class="mt-6 space-y-3 text-[#e0e7ff]">
      {#each supportPoints as point}
        <li><span class="text-[#00f0c0]">/&nbsp;</span>{point}</li>
      {/each}
    </ul>
  </div>
</section>
