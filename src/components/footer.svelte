<script lang="ts">
  // Footer mirrors the main navigation. Keep this list aligned with Navbar so
  // the public site stays focused on Home, About, and Contact.
  const footerLinks: { label: string; href: string }[] = [
    { label: "Home", href: "/" },
    { label: "About", href: "/about/" },
    { label: "Contact", href: "/contact/" },
  ];
</script>

<footer class="relative border-t border-[#3a3f5e]/40">
  <div class="mx-auto max-w-7xl px-4 py-10">
    <div
      class="flex flex-col gap-6 sm:flex-row sm:items-center sm:justify-between"
    >
      <div>
        <p class="font-semibold text-[#e0e7ff]">Park Technologies</p>
        <p class="pt-2 text-sm text-[#a0aed0]">
          Practical IT support for small professional offices.
        </p>
      </div>
      <nav class="flex gap-5 text-sm font-semibold">
        {#each footerLinks as { label, href }}
          <a class="text-[#e0e7ff] hover:text-[#00f0c0]" {href}>{label}</a>
        {/each}
      </nav>
    </div>

    <div
      class="mt-8 flex flex-col gap-3 border-t border-[#3a3f5e]/40 pt-6 text-sm text-[#a0aed0] sm:flex-row sm:items-center sm:justify-between"
    >
      <p>
        Client-owned systems. Controlled access. Plain-English documentation.
      </p>
      <p>Copyright Park Technologies &copy; 2026. All rights reserved.</p>
    </div>
  </div>
</footer>
