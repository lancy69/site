SOURCES := $(shell find src/pages -type f -name '*.typ')
OUTPUTS := $(patsubst src/pages/%.typ,dist/%.html,$(SOURCES))

.PHONY: help pub

help:
	@echo 'Run make pub to compile src/pages/*.typ into dist/*.html.'

pub: $(OUTPUTS)

dist/%.html: src/pages/%.typ
	mkdir -p "$(@D)"
	typst compile --features html --root src "$<" "$@"
