# NeoGlass X Architecture Contract

> This repository is an architecture preview. It defines a shared core, a trustworthy-agent focus, and constrained product profiles; it does not yet provide a stable component API.

[简体中文](./README.md) · [English](./README.en.md) · [Token source](./tokens/) · [Roadmap](./ROADMAP.md)

## Product focus

NeoGlass X is centered on trustworthy agent execution UX:

```text
Goal → Plan → Tool Call → Approval → Evidence → Artifact → Audit
```

Enterprise, Finance & Data, and Operations are profiles that adapt this core to domain workflows. Marketing and launch work is a separate brand-delivery layer, not a production-application profile.

## Layer model

```text
Brand foundation
        ↓
Primitive tokens
        ↓
Semantic tokens
        ↓
Component tokens
        ↓
Product-profile mappings
        ↓
Reference pages and product implementations
```

Components consume semantic and component tokens only. Profiles map existing tokens; they do not fork a separate component system.

## Configuration contract

| Category | Values | Scope |
|---|---|---|
| User preference | Theme, Density, Motion, Transparency | Application or user setting |
| Experience level | Solid, Glass, Immersive | Preset-controlled visual capability |
| Product profile | Agent, Enterprise, Finance, Ops | Token and pattern mapping |
| Risk | R0–R4 | Individual action, tool call, approval, and audit event |

Risk is never a page-wide visual theme. A page may contain both an R0 read action and an R4 privileged action; each must retain its own permission, approval, evidence, and audit treatment.

## Initial supported presets

| Preset | Theme / density | Experience | Required evidence |
|---|---|---|---|
| Agent Workbench | Dark / Compact | Solid; limited subtle glass | Run timeline, Tool Call, Approval, Artifact |
| Enterprise | Light or Dark / Compact | Solid | Data grid, permissions, workflow, audit |
| Finance & Data | Dark / Compact | Solid | source, freshness, precision, reconciliation |
| Operations | Dark / Compact | Solid | alert, incident, metrics/logs/traces, runbook |
| Marketing & Launch | Light or Dark / Comfortable | Glass or Immersive | static fallback, reduced motion, CTA remains usable |

Any combination not listed here is experimental until it has a Token mapping, a reference example, accessibility evidence, and visual-regression coverage.

## Degradation order

```text
Immersive → Glass → Solid
expressive motion → productive motion → reduced / none
full transparency → reduced transparency → opaque surfaces
```

Degradation must never remove risk level, approval content, audit evidence, or the user's ability to complete a core task.

## Source of truth

- [`tokens/`](./tokens/): machine-readable source and validation schema
- [`docs/zh-CN/`](./docs/zh-CN/): Chinese normative drafts and acceptance rules
- [`figma/`](./figma/): Figma release and mapping policy
- [`examples/`](./examples/): future runnable references, never production templates

Before `1.0.0`, all token names, profiles, and component APIs are experimental. Breaking changes require a migration note and a changelog entry.
