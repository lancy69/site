.PHONY: help pub dev

help:
	@echo 'Run `make dev` to serve the site locally with live reload.'
	@echo 'Run `make pub` to build the site into `dist/` with Typst bundle export.'

dev:
	typst watch --features html,bundle --root typst -f bundle typst/main.typ dist

pub:
	typst compile --features html,bundle --root typst -f bundle typst/main.typ dist
