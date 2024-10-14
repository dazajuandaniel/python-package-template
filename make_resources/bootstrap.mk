#!/usr/bin/env make

.DEFAULT_GOAL := help

# COLORS
GREEN  := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE  := $(shell tput -Txterm setaf 7)
RED    := $(shell tput -Txterm setaf 1)
CYAN   := $(shell tput -Txterm setaf 6)
RESET  := $(shell tput -Txterm sgr0)

TARGET_MAX_CHAR_NUM := 20

# Define header
define HEADER
.______   ____    ____ .___________. __    __    ______   .__   __. 
|   _  \  \   \  /   / |           ||  |  |  |  /  __  \  |  \ |  | 
|  |_)  |  \   \/   /  `---|  |----`|  |__|  | |  |  |  | |   \|  | 
|   ___/    \_    _/       |  |     |   __   | |  |  |  | |  . `  | 
|  |          |  |         |  |     |  |  |  | |  `--'  | |  |\   | 
| _|          |__|         |__|     |__|  |__|  \______/  |__| \__|                                               
endef
export HEADER

# Required tools
REQUIRED_BINS := poetry make python
REQUIRED_BINS_DEV := poetry make python black ruff
EVAL := FALSE