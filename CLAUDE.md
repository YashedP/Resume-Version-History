# Repository Guidelines

## Purpose
This repo maintains a single-page LaTeX resume. Keep changes concise, readable, and layout-safe.

## What to Edit
- Main source: `Yash_Resume.tex`
- Build helper: `makefile`
- Generated files (`Yash_Resume.pdf`, `*.aux`, `*.log`, `*.out`) are outputs, not hand-edited sources.

## Required Validation (Every Change)
After each single-line modification only, run all checks below immediately; do not make multi-line or batched edits before validating.
1. Build: `make build`
2. Confirm build success (exit code `0`).
3. Confirm one-page output from log:
   `rg "Output written on Yash_Resume.pdf \\(1 page," Yash_Resume.log`
4. If the page check fails, revise content/layout and rebuild until it passes.
5. Confirm ATS extraction with `pdftotext Yash_Resume.pdf -` and verify key fields, dates, and keywords read correctly.

This is a hard gate for commits and pushes.

## Preview in WSL
Use this command to open the PDF on this machine after all planned edits are complete (not after each individual edit):
`powershell.exe -NoProfile -Command "Start-Process 'C:\\Users\\yashj\\Documents\\Coding Projects\\Resume-Version-History\\Yash_Resume.pdf'"`

## Commit Expectations
- Keep commits focused and small.
- Use clear imperative messages (for example, `refine ALTR bullet wording`).
- Before push, ensure the required validation above has passed on the latest edits.
