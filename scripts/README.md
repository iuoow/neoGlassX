# Repository Scripts

- `Test-Repository.ps1`: validates UTF-8, JSON, required architecture files, local Markdown links, local HTML assets, Token output, accessibility structure, and deprecated architecture terms. Use `-Release` to additionally reject unreplaced publication placeholders and validate `MANIFEST.md` hashes.
- `Test-Accessibility.ps1`: checks document language, page H1s, image alt text, the Agent Run accessibility baseline, and generated preference support.
- `Update-Manifest.ps1`: regenerates the release-oriented SHA-256 inventory in `MANIFEST.md`.

Run from the repository root:

```powershell
pwsh -File scripts/Test-Repository.ps1
pwsh -File scripts/Test-Accessibility.ps1
pwsh -File scripts/Update-Manifest.ps1
pwsh -File scripts/Test-Repository.ps1 -Release
```
