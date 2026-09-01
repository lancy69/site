SOURCES := $(shell find src/pages -type f -name '*.typ')
OUTPUTS := $(patsubst src/pages/%.typ,dist/%.html,$(SOURCES))

.PHONY: help pub dev

help:
	@echo 'Run `make pub` to compile src/pages/*.typ into dist/*.html.'
	@echo 'Run `make dev` to compile and serve the site at http://localhost:8000.'

pub: $(OUTPUTS)

dev: pub
	python3 -m http.server 8000 --directory dist

dist/%.html: src/pages/%.typ
	mkdir -p "$(@D)"
	typst compile --features html --root src "$<" "$@"
