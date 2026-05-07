<script lang="ts">
  import "../styles/global.css";
  import logoUrl from "../assets/park-tech.svg?url";

  const textLinks: { label: string; href: string }[] = [
    { label: "Home", href: "/" },
    { label: "About", href: "/about/" },
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
      return "page";

    return null;
  }
</script>

<header class="relative top-0 right-0 left-0 z-50 px-2 py-3">
  <div class="mx-auto max-w-7xl px-4">
    <nav class="mx-0 flex flex-wrap items-center justify-between gap-4">
      <a href="/" class="flex items-center">
        <img src={logoUrl} class="h-7 w-7" alt="Park Technologies logo" />
        <h1 class="pl-4 font-semibold text-[#e0e7ff]">Park Technologies</h1>
      </a>
      <ul class="item-center flex space-x-2 px-0 py-2 sm:space-x-6 sm:px-4">
        {#each textLinks as { label, href }}
          <li>
            <a
              aria-current={isCurrentPage(href)}
              class="rounded-sm px-3 py-1 text-sm font-semibold
          text-[#e0e7ff]
          transition-colors
          duration-150
          hover:text-[#00f0c0]
          aria-[current=page]:text-[#00f0c0]
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
