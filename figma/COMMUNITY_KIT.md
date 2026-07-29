# NeoGlass X Figma Community Kit blueprint

This blueprint keeps the Figma Library aligned with the repository while the
maintained `.fig` source file is prepared. It defines what may be published as
experimental and what must remain a documented pattern rather than a component
promise.

## Library pages

| Page | Contents | Initial maturity |
|---|---|---|
| Cover & Start | scope, release notes, contribution link | Preview |
| Foundations | color, type, spacing, radius, elevation, motion | Preview |
| Variables | primitive, semantic, theme, and profile modes | Preview |
| Core Components | button, field, status, badge, surface, dialog | Draft |
| Agent Workbench | Run header, timeline, Tool Call, Approval, Artifact | Preview |
| Accessibility | focus, contrast, motion, content annotations | Preview |
| Patterns | enterprise, data, operations, marketing examples | Draft |
| Archive | deprecated experiments and migration notes | Internal |

## Variables and modes

The JSON source in `tokens/` is authoritative. Figma variables should preserve
the following mapping rather than inventing a parallel naming system:

```text
primitive/color.json        → Primitive / Color
primitive/layout.json       → Primitive / Layout
primitive/motion.json       → Primitive / Motion
semantic/color.json         → Semantic / Color
themes/dark.json            → Theme / Dark
themes/high-contrast.json   → Theme / High Contrast
profiles/agent-workbench.json → Profile / Agent Workbench
```

Theme and accessibility modes may change surfaces, borders, text, action color,
backdrop blur, and motion. Risk R0–R4 must be attached to action components and
must not become a Figma page-wide theme mode.

## Component publication rules

1. A published component MUST have a named purpose, variants, states, keyboard
   behavior notes, and an accessibility annotation.
2. A component that produces an external side effect MUST include an approval
   context or link to its policy pattern.
3. Prototype-only interactions MUST be labelled as examples, not production
   behavior.
4. The component description MUST link to its repository source or specification.
5. Experimental components use a `Preview /` prefix and are not treated as
   stable library contracts.

## First review checklist

- [ ] Variables resolve to the current token JSON names.
- [ ] Dark and high-contrast modes are reviewed side by side.
- [ ] Components expose default, hover, focus, disabled, loading, error, and
      selected states where applicable.
- [ ] Agent Approval exposes tool, target, scope, reversibility, expiry, and
      evidence link.
- [ ] No customer content, commercial font, or unlicensed asset is included.
- [ ] A version and repository commit are recorded on the Cover page.
