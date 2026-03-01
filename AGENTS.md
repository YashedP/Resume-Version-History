# Repository Guidelines

## Project Structure & Module Organization
- `Yash_Resume.tex`: Primary source file for the resume (all sections, macros, and content).
- `makefile`: Convenience targets for setup and build.
- Generated artifacts: `Yash_Resume.pdf`, `*.aux`, `*.log`, `*.out`.
- Keep edits focused on `Yash_Resume.tex`; do not manually edit generated files.

## Build, Test, and Development Commands
- `make build`: Compiles the resume PDF using `pdflatex Yash_Resume.tex`.
- `pdflatex -interaction=nonstopmode -halt-on-error Yash_Resume.tex`: Strict local compile that fails fast on LaTeX errors.
- `make setup`: Installs TeX dependencies (uses `apt`/`tlmgr`; run only on machines where system package installs are acceptable).
- Optional cleanup: `rm -f *.aux *.log *.out` to remove intermediate files before a clean rebuild.

## Coding Style & Naming Conventions
- Follow existing LaTeX formatting and macro usage in `Yash_Resume.tex` (e.g., `\resumeSubheading`, `\resumeItem`).
- Preserve two-space indentation inside environments and keep one logical field per line for readable diffs.
- Use consistent date formatting: `Mon YYYY -- Mon YYYY` (or `Mon YYYY -- Present`).
- Keep bullet points concise, action-first, and impact-oriented (include metrics when available).

## Testing Guidelines
- There is no automated unit-test framework; compilation is the validation step.
- Minimum check before commit: run `make build` and ensure exit code `0`.
- Review LaTeX warnings in terminal/log (e.g., overfull boxes) and resolve when practical.
- Manually inspect `Yash_Resume.pdf` for layout regressions and one-page fit.

## Commit & Pull Request Guidelines
- Current history favors short, direct commit messages (examples: `Small wording change`, `added backend`).
- Prefer imperative, scoped messages such as `update ALTR title` or `refine project bullet wording`.
- PR checklist:
1. Brief summary of changed resume sections.
2. Confirmation that `make build` succeeded.
3. Regenerated `Yash_Resume.pdf` (or a clear note if intentionally omitted).

## Security & Configuration Tips
- Avoid introducing sensitive personal data beyond intended resume content.
- Do not paste secrets/tokens into LaTeX source, commit messages, or logs.
