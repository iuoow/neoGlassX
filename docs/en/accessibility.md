# Accessibility baseline

NeoGlass X targets WCAG 2.2 AA as a design goal. This is not a certification
claim. Each product implementation still needs testing with its content,
assistive technology, and deployment environment.

## Reference-page baseline

The Agent Run Workspace includes:

- a document language and skip link;
- semantic landmarks, headings, lists, definitions, and native `details`;
- visible keyboard focus and named controls;
- native modal dialogs with labels and explicit confirmation;
- polite live regions for simulated Run and approval updates;
- high-contrast, reduced-motion, and no-transparency preferences.

## Required review for a new reference page

1. Navigate all interactive controls with a keyboard only.
2. Verify focus is visible on every surface and dialog action.
3. Confirm headings and landmarks communicate the task structure.
4. Ensure status, risk, and approval context are not conveyed by color alone.
5. Test reduced-motion and high-contrast preferences.
6. Check that an approval identifies the tool, target, scope, reversibility,
   and expiry before confirmation.
7. Test with at least one screen reader before calling the implementation
   ready for broader review.

`scripts/Test-Accessibility.ps1` provides a lightweight structural guard for
the shipped reference pages. It supplements, rather than replaces, manual and
assistive-technology testing.
