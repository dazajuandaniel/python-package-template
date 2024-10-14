#!/usr/bin/env make
include ./make_resources/Makehelp
include ./make_resources/bootstrap.mk

PYTHON_FILES=.

## Checks for the required bins
check_:
	$(foreach bin,$(REQUIRED_BINS),\
		$(if $(shell command -v $(bin) 2> /dev/null),$(info ✅ Found $(bin).),$(error ❌ Please install $(bin).)))
.PHONY: check_

## Checks for the required bins for package development
check_dev:
	$(foreach bin,$(REQUIRED_BINS_DEV),\
		$(if $(shell command -v $(bin) 2> /dev/null),$(info ✅ Found $(bin).),$(error ❌ Please install $(bin).)))
.PHONY: check-dev

## Checks for linting and formatting
lint: check_dev
	@echo "Running Formatter..."
	@poetry run black $(PYTHON_FILES) --check
	@echo "Running Linter..."
	@poetry run ruff check $(PYTHON_FILES)
.PHONY: lint


## Create header
_header:
	@ printf "${GREEN}$$HEADER\n${RESET}"
