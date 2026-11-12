.PHONY: help assets clean dev pub

help:
	@echo 'Run `make assets` to generate index for assets.'
	@echo 'Run `make clean` to remove `dist/`.'
	@echo 'Run `make dev` to serve the site locally with live reload.'
	@echo 'Run `make pub` to build the site into `dist/` with Typst bundle export.'

assets:
	@find typst/assets \
		-name '.*' -prune -o \
		-type f \
		! -path 'typst/assets/index' \
		! -path 'typst/assets/index.tmp' \
		-print \
		| LC_ALL=C sort \
		| sed 's|^typst/assets/||' \
		> typst/assets/index.tmp
	@mv typst/assets/index.tmp typst/assets/index

clean:
	rm -rf dist

dev: assets
	typst watch --features html,bundle --root typst -f bundle typst/main.typ dist

pub: assets
	typst compile --features html,bundle --root typst -f bundle typst/main.typ dist
