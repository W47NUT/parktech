<script lang="ts">
  // Good-fit cards help visitors self-identify before emailing. Keep this list
  // aligned with the small-office V2 audience.
  const goodFits = [
    "Therapy practices",
    "Small law offices",
    "Bookkeeping and accounting offices",
    "Small clinics",
    "Wellness offices",
    "Solo professionals",
    "Local businesses with small teams",
  ];

  // Initial-email checklist. These are safe logistical details, not a request
  // for secrets, client records, or sensitive screenshots.
  const includeItems = [
    "Your name",
    "Business name",
    "Type of office",
    "Approximate number of users or devices",
    "A short description of the issue or support need",
    "Whether the issue is urgent",
    "Best contact method",
  ];

  // Warning chips shown before the mailto CTA. Keep this explicit because the
  // site does not provide a secure intake portal.
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
    <div class="mt-6 grid auto-rows-fr gap-3 sm:grid-cols-2">
      {#each goodFits as fit}
        <p
          class="mobile-solid-surface-dark flex min-h-14 items-center rounded border border-[#3a3f5e]/80 bg-[#0a0c12]/60 px-3 py-3 text-sm leading-snug font-semibold text-[#e0e7ff] sm:last:col-span-2"
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
    <ul class="mt-6 grid auto-rows-fr gap-3 text-[#e0e7ff] sm:grid-cols-2">
      {#each includeItems as item}
        <li
          class="mobile-solid-surface-dark flex min-h-14 items-center rounded border border-[#3a3f5e]/80 bg-[#0a0c12]/60 px-3 py-3 text-sm leading-snug font-semibold sm:last:col-span-2"
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
      class="absolute top-0 left-0 h-1 w-full bg-gradient-to-r from-[#00f0c0] via-[#ff2a6d] to-[#00f0c0]"
    ></div>
    <h2 class="text-2xl font-semibold text-[#e0e7ff]">
      Before you email ParkTech
    </h2>

    <div class="mt-7 grid gap-8 lg:grid-cols-2 lg:gap-10">
      <div class="lg:border-r lg:border-[#3a3f5e]/80 lg:pr-10">
        <h3 class="text-lg font-semibold text-[#00f0c0]">
          Sensitive information warning
        </h3>
        <p class="pt-4 text-[#e0e7ff]">
          Do not send passwords, MFA codes, patient information, client case
          details, financial records, private documents, or sensitive
          screenshots by email unless a secure method has been agreed on.
        </p>
        <p class="pt-4 text-[#a0aed0]">
          If sensitive information is involved, describe the issue generally
          first.
        </p>
        <div class="mt-5 flex flex-wrap gap-2">
          {#each sensitiveItems as item}
            <p
              class="mobile-solid-surface-dark rounded border border-[#ff2a6d]/45 bg-[#0a0c12]/60 px-3 py-2 text-xs leading-tight font-semibold text-[#e0e7ff]"
            >
              {item}
            </p>
          {/each}
        </div>
      </div>

      <div>
        <h3 class="text-lg font-semibold text-[#ff2a6d]">
          Response expectations
        </h3>
        <div class="space-y-4 pt-4">
          <p class="text-[#e0e7ff]">
            ParkTech provides direct support and is not an emergency helpdesk.
            For normal inquiries, ParkTech will review the message and respond
            as availability allows.
          </p>
          <p class="text-[#a0aed0]">
            Urgent issues should be described clearly, especially if they
            involve account access, business outage, suspected compromise, or
            lost/stolen devices.
          </p>
          <p class="text-sm font-semibold text-[#a0aed0]">
            Unless separately agreed in writing, contacting ParkTech does not
            create an emergency support window, formal SLA, or regulatory
            relationship.
          </p>
        </div>
      </div>
    </div>
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
