SOURCES := $(shell find src -type f -name '*.typ')
OUTPUTS := $(patsubst src/%.typ,dist/%.html,$(SOURCES))

.PHONY: help pub

help:
	@echo 'Run make pub to compile src/*.typ into dist/*.html.'

pub: $(OUTPUTS)

dist/%.html: src/%.typ
	mkdir -p "$(@D)"
	typst compile --features html --root src "$<" "$@"
