# Repository Guidelines

## Purpose
This repo maintains a single-page LaTeX resume. Keep changes concise, readable, and layout-safe.

## What to Edit
- Main source: `Yash_Resume.tex`
- Build helper: `makefile`
- Generated files (`Yash_Resume.pdf`, `*.aux`, `*.log`, `*.out`) are outputs, not hand-edited sources.

## Required Validation (Every Change)
After any modification in this repository, run all checks below:
1. Build: `make build`
2. Confirm build success (exit code `0`).
3. Confirm one-page output from log:
   `rg "Output written on Yash_Resume.pdf \\(1 page," Yash_Resume.log`
4. If the page check fails, revise content/layout and rebuild until it passes.

This is a hard gate for commits and pushes.

## Preview in WSL
Use this command to open the PDF on this machine:
`powershell.exe -NoProfile -Command "Start-Process 'C:\\Users\\yashj\\Documents\\Coding Projects\\Resume-Version-History\\Yash_Resume.pdf'"`

## Commit Expectations
- Keep commits focused and small.
- Use clear imperative messages (for example, `refine ALTR bullet wording`).
- Before push, ensure the required validation above has passed on the latest edits.
