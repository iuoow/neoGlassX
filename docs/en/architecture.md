# NeoGlass X architecture contract

NeoGlass X is a specification-first design system for trustworthy agent
execution and complex product interfaces. It separates shared foundations from
product-specific profiles so that a marketing experience cannot accidentally
become the visual default for a dense or high-risk workspace.

## The execution model

The primary reference flow is:

```text
Goal → Plan → Tool Call → Approval → Evidence → Artifact → Audit
```

An interface MUST make meaningful state changes visible. A user should be able
to identify what the agent intends to do, which tool or authority it will use,
whether a side effect has occurred, and how to inspect the resulting evidence.

## Four independent configuration axes

| Axis | Examples | Owner |
|---|---|---|
| User preference | theme, density, motion, transparency | user or operating system |
| Experience level | solid, glass, immersive | product profile |
| Product profile | agent, enterprise, finance-data, operations | product team |
| Risk semantics | R0–R4 | individual action, Tool Call, or Approval |

Risk is never a page theme. An R3 email approval, for example, is expressed
next to the concrete action and evidence rather than by tinting the entire
workspace orange.

## Supported first preset

The first browser reference is:

```text
agent-workbench / dark / compact / solid
```

Glass effects are limited to non-critical layers. When system preferences,
performance, assistive technology, or operational context call for a simpler
experience, NeoGlass X degrades in this order:

1. Disable expressive motion.
2. Remove backdrop blur and transparency.
3. Prefer solid, high-contrast surfaces.
4. Preserve text, controls, approval context, evidence, and audit records.

## Source of truth

| Concern | Source |
|---|---|
| Design principles and profile rules | `docs/zh-CN` and this English core |
| Token source | `tokens/` JSON files |
| Browser variable output | `tokens/build/neoglass.css` |
| Reference behavior | `examples/agent-run-workspace/` |
| Release and governance policy | repository root documents |

The generated CSS is reproducible from the token source. Do not edit it by
hand; run `scripts/Build-Tokens.ps1` after changing token files.

## Maturity

The project intentionally does not claim a stable component API. Token names,
profiles, and examples may change before `1.0.0`. Consumers should pin a Git
tag or commit and treat the reference page as an implementation guide rather
than a production dependency.
