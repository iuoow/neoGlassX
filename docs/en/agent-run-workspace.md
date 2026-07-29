# Agent Run Workspace reference

The static [Agent Run Workspace](../../examples/agent-run-workspace/index.html)
is the first vertical reference implementation for NeoGlass X. It demonstrates
how an agent task exposes execution state without connecting to a service or
performing real actions.

## What it demonstrates

- A visible Run identifier, environment, execution state, and side-effect
  status.
- Timeline entries for Plan, Tool Call, analysis, and Approval required.
- Expandable Tool Call evidence with permission, data scope, and masking.
- An action-level R3 approval that explains target, impact, reversibility, and
  expiry.
- Artifact previews that avoid real customer data.
- Local-only pause, cancel, and filtering interactions with screen-reader
  status feedback.
- Dark and high-contrast themes plus reduced motion and transparency controls.

## Safety boundary

Every button changes only local demonstration state. The page does not call a
network API, send email, persist an approval, or cancel a server process.
Production implementations MUST bind approval decisions to a server-side
policy, capture the final parameters, record an audit event, and prevent a
decision from being reused outside its intended action.

## Try preferences

Open the page with URL parameters to exercise its supported preference
presets:

```text
?theme=high-contrast&transparency=none&motion=none
```

Keyboard users can use the skip link, native disclosure controls, native
dialogs, and standard form controls. See the
[accessibility baseline](./accessibility.md) for the checks that accompany the
example.
