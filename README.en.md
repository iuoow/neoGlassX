# NeoGlass Experience System

> An open design system for trustworthy AI agents, enterprise software, data platforms, operations, and immersive product experiences.

[简体中文](./README.md) · [Architecture](./ARCHITECTURE.md) · [Roadmap](./ROADMAP.md) · [Contributing](./CONTRIBUTING.md) · [Security](./SECURITY.md)

**Version:** `0.2.0-alpha.1`  
**Maturity:** Experimental / Specification-first  
**Primary language:** Simplified Chinese; English documentation is in progress.

## What it is

NeoGlass Experience System — **NeoGlass X** or **NGES** — is a multi-profile design system for:

- AI agent workbenches
- Enterprise applications
- Finance and data platforms
- Operations and observability products
- Product websites, concept demos, and launch experiences

Neo-Glass is an optional experience capability, not a mandatory visual treatment. Dense production applications can use a solid surface profile, while marketing and launch experiences can use glass, spatial UI, and expressive motion.

The project's primary differentiation is trustworthy agent execution UX: plans, tool calls, risk, approvals, evidence, and artifacts must remain visible and auditable—not be collapsed into a chat answer.

## Architecture contract

NeoGlass X does not promise that every design dimension can be freely combined. User preferences (theme, density, motion, and transparency), experience levels, product profiles, and action-level risk are modeled separately. Risk is attached to an action, tool call, or approval rather than to a page-wide theme. See [`ARCHITECTURE.md`](./ARCHITECTURE.md) for supported presets and degradation rules.

## Profiles

| Profile | Primary use |
|---|---|
| Agent Workbench | Agent runs, plans, tool calls, approvals, skills, memory, artifacts, nodes, and sandboxes |
| Enterprise | Organizations, permissions, workflows, audit, forms, tables, and bulk operations |
| Finance & Data | Data trust, provenance, freshness, precision, lineage, reconciliation, and analysis |
| Operations | Alerts, incidents, metrics, logs, traces, topology, SLOs, and runbooks |
| Marketing & Launch | Product sites, interactive demos, events, 3D storytelling, and conversion flows |

This project is not affiliated with or endorsed by OpenClaw, Hermes Agent, or their maintainers. Their names are used only to describe reference product categories.

## Status

The repository currently contains a Chinese documentation set and open-source project scaffolding. It does not yet ship a stable component library or a complete Figma kit.

Planned milestones:

- `0.3.x`: DTCG 2025.10 tokens, schemas, validation, and transforms
- `0.4.x`: Figma kit and reference screens
- `0.5.x`: framework-agnostic CSS primitives or Web Component exploration
- `0.6.x`: Agent and Enterprise reference implementations
- `0.7.x`: Finance, Data, and Operations patterns
- `0.8.x`: documentation site and translations
- `0.9.x`: API freeze and release audits
- `1.0.0`: stable public interfaces and governance

## Get started

```bash
git clone https://github.com/iuoow/neoGlassX.git
cd neoGlassX
```

Start with:

- [`README.md`](./README.md)
- [`docs/zh-CN`](./docs/zh-CN/)
- [`ROADMAP.md`](./ROADMAP.md)
- [`CONTRIBUTING.md`](./CONTRIBUTING.md)

The repository URL and GitHub maintainer are configured. Before creating a public release, confirm private reporting channels for security and the Code of Conduct.

## Contributing

Contributions are welcome across design patterns, agent safety UX, accessibility, tokens, reference implementations, documentation, and translations.

Major changes should begin with a Design Proposal issue. The project uses the Developer Certificate of Origin; sign commits with:

```bash
git commit -s -m "docs: improve approval guidance"
```

See [`CONTRIBUTING.md`](./CONTRIBUTING.md).

## Licensing

Recommended dual-license structure:

- Code, tokens, schemas, scripts, and automation: Apache-2.0
- Documentation, diagrams, and non-trademark design material: CC BY 4.0

Names, logos, and trademarks are excluded unless explicitly granted. See [`TRADEMARKS.md`](./TRADEMARKS.md).

This licensing structure is a project-starting recommendation, not legal advice.

## Security

Do not disclose unpatched vulnerabilities, secrets, customer data, or actionable agent attack chains in public issues. See [`SECURITY.md`](./SECURITY.md).

## Naming status

`NeoGlass Experience System` is a working name. A preliminary web search did not surface a prominent open-source design system with the exact name, but “NeoGlass” is used by unrelated products. Complete repository, package, domain, and trademark clearance before a formal launch.
