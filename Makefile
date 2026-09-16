.PHONY: help pub dev clean

help:
	@echo 'Run `make clean` to remove `dist/`.'
	@echo 'Run `make dev` to serve the site locally with live reload.'
	@echo 'Run `make pub` to build the site into `dist/` with Typst bundle export.'

clean:
	rm -rf dist

dev:
	typst watch --features html,bundle --root typst -f bundle typst/main.typ dist

pub:
	typst compile --features html,bundle --root typst -f bundle typst/main.typ dist
