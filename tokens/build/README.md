# Build outputs

`neoglass.css` is the generated reference output for the supported `agent-workbench/dark/compact/solid` preset and the initial high-contrast override. It exists to make the first reference page executable while the formal token transformation pipeline is still experimental.

Regenerate it with `powershell -NoProfile -ExecutionPolicy Bypass -File scripts/Build-Tokens.ps1`. CI checks that it is current. Do not treat this directory as a published package.
