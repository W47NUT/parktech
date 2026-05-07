<script lang="ts">
  import "../styles/global.css";

  const goodFits = [
    "Therapy practices",
    "Small law offices",
    "Bookkeeping and accounting offices",
    "Small clinics",
    "Wellness offices",
    "Solo professionals",
    "Local businesses with small teams",
  ];

  const includeItems = [
    "Your name",
    "Business name",
    "Type of office",
    "Approximate number of users or devices",
    "A short description of the issue or support need",
    "Whether the issue is urgent",
    "Best contact method",
  ];

  const sensitiveItems = [
    "Passwords",
    "MFA codes",
    "PHI or patient information",
    "Client case details",
    "Financial records",
    "Private documents",
    "Sensitive screenshots",
  ];
</script>

<section
  class="relative mx-auto grid max-w-6xl gap-8 px-4 py-14 sm:py-20 lg:grid-cols-[1.05fr_0.95fr] lg:items-end"
>
  <div>
    <div class="section-tag mb-6">
      <span class="section-tag__marker">&gt;</span>
      <span class="section-tag__text">Contact</span>
    </div>
    <h1
      class="cyber-glitch glow-text text-4xl leading-tight font-semibold text-balance text-[#e0e7ff] sm:text-5xl"
      data-text="Contact Park Technologies"
    >
      Contact Park Technologies
    </h1>
    <p class="max-w-2xl pt-6 text-[#e0e7ff]">
      Need practical IT support for a small office? Send a short description of
      your office, what you need help with, and the best way to contact you.
    </p>
  </div>

  <div
    class="relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]/95 p-6 shadow-lg sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
    ></div>
    <p class="text-xs font-bold text-[#ff2a6d]">/&nbsp; Direct email</p>
    <a
      class="gradient-text block pt-3 text-2xl font-bold break-all sm:text-3xl"
      href="mailto:support@parktech.dev?subject=ParkTech%20support%20inquiry"
    >
      support@parktech.dev
    </a>
    <p class="pt-4 text-sm font-semibold text-[#a0aed0]">
      Email is for initial coordination only. Keep the first message general if
      the issue involves sensitive information.
    </p>
    <a
      class="glow mt-6 inline-flex w-full items-center justify-center rounded bg-[#00f0c0] px-6 py-3 text-sm font-bold text-[#0a0c12] transition-all duration-300 hover:-translate-y-1 hover:bg-[#00f0c0]/90 sm:w-auto"
      href="mailto:support@parktech.dev?subject=ParkTech%20support%20inquiry"
    >
      Email ParkTech
    </a>
  </div>
</section>

<section
  class="relative mx-auto grid max-w-6xl items-stretch gap-5 px-4 pb-12 lg:grid-cols-2"
>
  <div
    class="glow relative h-full overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27] p-6 sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#00f0c0]">
      ParkTech is built for small professional offices.
    </h2>
    <p class="pt-5 text-[#e0e7ff]">
      Park Technologies works with very small offices that need practical
      technology support, clearer documentation, and help improving basic
      security hygiene.
    </p>
    <div class="mt-6 grid gap-4 sm:grid-cols-2 sm:gap-3">
      {#each goodFits as fit}
        <p
          class="mobile-solid-surface-dark rounded border border-[#3a3f5e]/80 bg-[#0a0c12]/60 p-3 text-sm font-semibold text-[#e0e7ff] sm:last:col-span-2"
        >
          <span class="text-[#ff2a6d]">/&nbsp;</span>{fit}
        </p>
      {/each}
    </div>
  </div>

  <div
    class="glow-alt relative h-full overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27] p-6 sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#ff2a6d] to-[#00f0c0]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#ff2a6d]">
      What to include in your message
    </h2>
    <p class="pt-5 text-[#e0e7ff]">
      To help ParkTech understand the request, include the practical details
      needed to size up the issue.
    </p>
    <ul class="mt-6 grid gap-4 text-[#e0e7ff] sm:grid-cols-2 sm:gap-3">
      {#each includeItems as item}
        <li
          class="mobile-solid-surface-dark rounded border border-[#3a3f5e]/80 bg-[#0a0c12]/60 p-3 text-sm font-semibold sm:last:col-span-2"
        >
          <span class="text-[#00f0c0]">/&nbsp;</span>{item}
        </li>
      {/each}
    </ul>
  </div>
</section>

<section class="relative mx-auto max-w-6xl px-4 pb-12">
  <div
    class="relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]/90 p-6 sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#00f0c0]">
      Please do not send sensitive information by email.
    </h2>
    <p class="pt-5 text-[#e0e7ff]">
      Do not send passwords, MFA codes, patient information, client case
      details, financial records, private documents, or sensitive screenshots
      through email unless a secure method has been agreed on.
    </p>
    <p class="pt-4 text-[#a0aed0]">
      If sensitive information is involved, describe the issue generally first.
    </p>
    <div class="mt-6 grid gap-4 sm:grid-cols-2 sm:gap-3 lg:grid-cols-4">
      {#each sensitiveItems as item}
        <p
          class="mobile-solid-surface-dark rounded border border-[#ff2a6d]/50 bg-[#0a0c12]/60 p-3 text-sm font-semibold text-[#e0e7ff] sm:last:col-span-2 lg:last:col-span-2"
        >
          {item}
        </p>
      {/each}
    </div>
  </div>
</section>

<section
  class="relative mx-auto grid max-w-6xl items-stretch gap-5 px-4 pb-12 lg:grid-cols-2"
>
  <div
    class="relative h-full overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]/90 p-6 sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#00f0c0]">Example message</h2>
    <div
      class="mt-5 rounded border border-[#3a3f5e]/80 bg-[#0a0c12]/70 p-5 text-[#e0e7ff]"
    >
      <p>Hi ParkTech,</p>
      <p class="pt-4">
        My office has three users and one front desk computer. We need help
        organizing our accounts, improving password/MFA setup, and figuring out
        whether our important files are backed up.
      </p>
      <p class="pt-4">Please let me know what the next step would be.</p>
    </div>
  </div>

  <div
    class="relative h-full overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]/90 p-6 sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#ff2a6d] to-[#00f0c0]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#ff2a6d]">Response expectations</h2>
    <p class="pt-5 text-[#e0e7ff]">
      ParkTech is a founder-led small business, not an emergency service
      provider. For normal inquiries, ParkTech will review the message and
      respond as availability allows.
    </p>
    <p class="pt-4 text-[#a0aed0]">
      Urgent issues should be described clearly, especially if they involve
      account access, business outage, suspected compromise, or a lost or stolen
      device.
    </p>
    <p class="pt-4 text-sm font-semibold text-[#a0aed0]">
      Unless separately agreed in writing, contacting ParkTech does not create
      an emergency support window, formal SLA, or regulatory relationship.
    </p>
  </div>
</section>

<section class="relative mx-auto max-w-6xl px-4 pb-20">
  <div
    class="relative overflow-hidden rounded-lg border border-[#3a3f5e] bg-[#181c27]/95 p-6 shadow-lg sm:p-8"
  >
    <div
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] to-[#ff2a6d]"
    ></div>
    <div
      class="absolute right-0 bottom-0 h-20 w-20 border-r border-b border-[#00f0c0]/30"
    ></div>
    <div
      class="flex flex-col gap-6 lg:flex-row lg:items-center lg:justify-between"
    >
      <div class="max-w-3xl">
        <p class="text-xs font-bold text-[#ff2a6d]">/&nbsp; Next step</p>
        <h2 class="text-2xl font-bold text-[#e0e7ff]">
          Ready to make your office technology clearer?
        </h2>
        <p class="pt-2 font-semibold text-[#a0aed0]">
          ParkTech is focused on small professional offices and local
          businesses. Remote support may be available depending on the
          situation, with onsite support considered where practical.
        </p>
      </div>
      <a
        class="glow inline-flex w-full items-center justify-center rounded bg-[#00f0c0] px-7 py-3 text-center text-sm font-bold text-[#0a0c12] transition-all duration-300 hover:-translate-y-1 hover:bg-[#00f0c0]/90 sm:w-auto"
        href="mailto:support@parktech.dev?subject=ParkTech%20support%20inquiry"
      >
        Email ParkTech
      </a>
    </div>
  </div>
</section>
