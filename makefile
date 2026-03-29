.DEFAULT_GOAL := help

help: ## Show available commands
	@grep -E '^[a-zA-Z_-]+:.*## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*## "}; {printf "  %-10s %s\n", $$1, $$2}'

build: ## Compile resume PDF from LaTeX source
	pdflatex Yash_Resume.tex
	rm -f Yash_Resume.aux Yash_Resume.log Yash_Resume.out

open: ## Open the compiled resume PDF
	open Yash_Resume.pdf

PLATFORM ?= $(shell uname -s | tr '[:upper:]' '[:lower:]')

setup: ## Install LaTeX dependencies (auto-detects OS, or pass PLATFORM=darwin|linux)
ifeq ($(PLATFORM),darwin)
	@echo "Installing LaTeX for macOS..."
	brew install --cask basictex
	sudo tlmgr update --self
	sudo tlmgr install fontawesome5 hyperref fancyhdr titlesec enumitem preprint marvosym accsupp
else
	@echo "Installing LaTeX for Linux..."
	sudo apt update && sudo apt install -y texlive-latex-extra texlive-fonts-extra
endif
	@echo "Setup complete! Run 'make build' to compile your resume."

.PHONY: help build open setup
