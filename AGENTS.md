# Park Technologies Website Agent Instructions

This repository is the Park Technologies public website.

Agents must treat this as a real business website, not a playground.

## Current Goal

Rewrite the site for Park Technologies V2.

ParkTech V2 is a founder-led IT support and practical security hygiene business for very small professional offices with roughly 1 to 10 users.

Target clients include:

- Therapists
- Small attorneys
- Bookkeepers and accountants
- Small clinics
- Wellness offices
- Solo professionals
- Local small businesses without internal IT

## Required Site Direction

The site should feel:

- Clean
- Practical
- Founder-led
- Calm
- Trustworthy
- Plain-English
- Small-office focused

The site should not feel:

- Fake enterprise
- Generic MSP
- Cybersecurity theater
- Resume-first
- Overbuilt
- Stock-photo heavy

## Navigation Direction

Target navigation:

- Home
- About
- Contact

Do not keep Services in the main navigation unless explicitly instructed.

The homepage should carry the core offer.

## Claims and Compliance Boundaries

Do not claim ParkTech provides:

- Guaranteed HIPAA compliance
- Compliance certification
- Full cybersecurity protection
- 24/7 SOC coverage
- MDR services
- Penetration testing
- Breach-proof systems
- Guaranteed uptime
- Guaranteed response time
- Enterprise-scale MSP services

Do not use phrases like:

- We make you HIPAA compliant
- Breach-proof
- 24/7 expert coverage
- Enterprise-grade SOC
- Full cyber defense
- Dedicated incident response team
- Automated compliance packs
- Audit-ready proof
- Military-grade security

Acceptable language:

- Practical IT support
- Practical security hygiene
- Improve technical safeguards
- Reduce avoidable technology risk
- Document systems
- Support secure workflows
- Help clients make better technology decisions
- Plain-English documentation
- Client-owned systems
- Controlled access

## Client-Owned Systems Principle

The site should support this operating principle:

Client owns the systems. ParkTech gets controlled access. ParkTech documents the work. ParkTech removes access when the relationship ends.

## Contact Rules

Use:

support@parktech.dev

Do not add a contact form backend.

Do not add scheduling software.

Do not add tracking or analytics unless explicitly approved.

The Contact page should warn visitors not to send:

- Passwords
- MFA codes
- PHI
- Patient information
- Client case details
- Financial records
- Sensitive screenshots

## Technical Rules

Do not add dependencies unless explicitly approved.

Do not edit deployment settings unless explicitly approved.

Do not edit environment files.

Do not add secrets.

Do not touch git remote configuration.

Do not push changes.

Do not commit unless explicitly asked.

## Files Expected to Change During V2 Rewrite

Likely allowed files:

- README.md
- src/pages/index.astro
- src/pages/contact.astro
- src/pages/about.astro
- src/components/navbar.svelte
- src/components/hero.svelte
- src/components/value.svelte
- src/components/services.svelte
- src/components/cta.svelte
- src/components/contact.svelte
- src/components/footer.svelte

Likely not needed in first pass:

- src/pages/legal/privacy.md
- src/pages/legal/terms.md
- public/.well-known/security.txt
- astro.config.mjs
- package.json
- pnpm-lock.yaml

Do not edit those unless explicitly instructed.

## Completion Standard

A website rewrite task is complete only when:

- The site builds successfully
- Navigation is Home / About / Contact
- The homepage clearly explains ParkTech V2
- The About page introduces ParkTech and Jessie without becoming a resume page
- The Contact page uses support@parktech.dev
- No overpromising cybersecurity or compliance claims remain
- No fake enterprise MSP tone remains
- The diff is reviewable
