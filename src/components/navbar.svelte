<script lang="ts">
  import "../styles/global.css";
  import logoUrl from "../assets/park-tech.svg?url";

  const textLinks: { label: string; href: string }[] = [
    { label: "Home", href: "/" },
    { label: "Services", href: "/services/" },
    { label: "Blog", href: "/blog/" },
    { label: "Contact", href: "/contact/" },
  ];

  function isCurrentPage(href: string) {
    if (typeof window === "undefined") return null; // SSR safety

    let pathname = window.location.pathname.replace(
      import.meta.env.BASE_URL,
      ""
    );

    if (pathname.at(0) !== "/") pathname = `/${pathname}`;

    if (pathname.at(-1) !== "/") pathname = `${pathname}/`;

    if (pathname === href || (href !== "/" && pathname.startsWith(href)))
      return "path";

    return null;
  }
</script>

<header class="top-0 right-0 left-0 z-50 px-2 py-2">
  <div class="mx-auto max-w-7xl px-4">
    <nav class="mx-0 flex items-center justify-between">
      <a href="/" class="flex">
        <img src={logoUrl} class="h-6 w-6" alt="Logo" />
        <h1 class="pl-6 font-semibold text-[#e0e7ff]">Park Technologies</h1>
      </a>
      <ul class="item-center flex space-x-6 px-4 py-2">
        {#each textLinks as { label, href }}
          <li>
            <a
              aria-current={isCurrentPage(href)}
              class="rounded-sm px-3 py-1 font-semibold
          text-[#e0e7ff]
          transition-colors
          duration-150
          hover:text-[#00f0c0]
          focus:outline-none"
              {href}
            >
              {label}
            </a>
          </li>
        {/each}
      </ul>
    </nav>
  </div>
</header>
