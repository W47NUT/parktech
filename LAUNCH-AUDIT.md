# ParkTech V2 Launch Readiness Audit

## 1. Build Result

Passed.

Command run:

```sh
pnpm build
```

Result: Astro built 6 static pages successfully: Home, About, Contact, Trust,
Privacy, and Terms.

## 2. Pages Reviewed

- Home: reviewed for V2 positioning, metadata, links, and claim safety.
- About: reviewed for metadata, broad positioning, operating model copy, and
  heading structure.
- Contact: reviewed for email-only intake, sensitive-information warnings, and
  response-expectation language.
- Trust: reviewed as a public route for safe contact and sensitive-information
  guidance.
- Privacy and Terms: scanned for stale site-behavior claims and legal
  disclaimers. Privacy was updated to remove contact-form and tracking language.
- `public/.well-known/security.txt`: reviewed and kept conservative. It lists
  security contact and policy location only; it does not promise a bounty, SLA,
  emergency response, or formal compliance program.

## 3. Navigation Status

Pass.

Main navigation and footer navigation are Home, About, Contact. The nav brand
label is no longer an `h1`, leaving each primary Astro page with one clear page
heading.

## 4. `/services/` Route/Redirect Status

Pass.

The deleted `/services` and `/services/` paths are not represented as site
pages. `vercel.json` now redirects both old paths to `/` permanently.

## 5. Sitemap/Robots Status

Pass.

`public/sitemap.xml` now lists:

- `https://parktech.dev/`
- `https://parktech.dev/about/`
- `https://parktech.dev/contact/`
- `https://parktech.dev/trust/`
- `https://parktech.dev/legal/privacy/`
- `https://parktech.dev/legal/terms/`

`public/robots.txt` allows crawling and points to the sitemap. The old Services
route is not listed.

## 6. Security Headers Status

Pass with one documented CSP tradeoff.

A new root `vercel.json` applies these headers to all routes:

- Strict-Transport-Security
- X-Content-Type-Options
- Referrer-Policy
- Permissions-Policy
- X-Frame-Options
- Content-Security-Policy

The Tailwind CDN script was removed from `BaseLayout.astro`; the site now uses
the local Tailwind/Vite setup already present in the project.

The CSP uses `script-src 'self' 'unsafe-inline'`. A stricter
`script-src 'self'` would block Astro's inline island bootstrapping scripts for
the existing Svelte particle effect. No external script domains are allowed.

## 7. Dependency Audit Result

Incomplete due to network/DNS failure in this environment.

Command run:

```sh
pnpm audit --prod
```

Result: failed after retries with `EAI_AGAIN` and `fetch failed` while reaching
the npm registry advisory endpoint. No dependency changes were made.

## 8. Secret/Sensitive-Data Scan Result

Pass with expected public-warning hits.

No API keys, private keys, tokens, credentials, client data, old Proton email,
or old phone-number contact information were found in the reviewed source.

An `.envrc` file exists and contains only `use flake`; it does not contain
secrets. Sensitive-data search hits are public warnings telling visitors not to
email passwords, MFA codes, PHI, patient information, client case details,
financial records, private documents, or sensitive screenshots.

## 9. Contact/Email Status

Pass.

Public support intake uses `support@parktech.dev`. There is no contact form
backend, scheduling software, analytics script, or tracking addition. The
Contact and Trust pages warn visitors not to email sensitive material unless a
secure method has been agreed on first.

## 10. Accessibility/Semantics Notes

Pass for the basic source-level pass.

The primary pages have clear page-level `h1` headings, nav links have readable
labels, mailto links expose the destination address or action clearly, and CTA
controls that navigate or email are links. The logo has descriptive alt text.
No fake form controls were found.

## 11. Claim Scan Result

Pass with one acceptable legal-disclaimer hit.

The site copy does not market emergency coverage, SOC/MDR/SIEM services,
breach-proof systems, guaranteed uptime, guaranteed response time, a dedicated
help desk, automated compliance packs, or full cybersecurity protection.

The remaining source hit is in `src/pages/legal/terms.md`, where the Terms page
says the website is not an offer, guarantee, or legal/technical advice. That is
a disclaimer, not a marketing claim.

## 12. SEO Basics Status

Pass.

Home, About, Contact, and Trust have descriptive titles and descriptions without
boxed-in office-size language. Sitemap and robots are current. No stale Services
page appears in the sitemap.

## 13. Remaining Issues

- `pnpm audit --prod` must be rerun from an environment that can reach the npm
  registry before treating the dependency audit as complete.
- The security header configuration should be verified on Vercel after deploy
  because headers and redirects are platform-applied behavior.

## 14. Final Recommendation

Ready after minor fixes.

The website build, routing, content safety, sitemap/robots, contact posture,
basic semantics, and security-header configuration are deploy-ready. The only
required deploy-readiness item still unresolved is the production dependency
audit, which was blocked by registry access in this environment.
