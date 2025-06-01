# ################################################################################
#  Copyright (c) 2025  Claudio André <portfolio-2025br at claudioandre.slmail.me>
#      ____              __                                _       _________  __
#     / __ )____  ____  / /__________ _____ ___  ____     | |     / / ____/ |/ /
#    / __  / __ \/ __ \/ __/ ___/ __ `/ __ `__ \/ __ \    | | /| / / __/  |   /
#   / /_/ / /_/ / /_/ / /_/ /__/ /_/ / / / / / / /_/ /    | |/ |/ / /___ /   |
#  /_____/\____/\____/\__/\___/\__,_/_/ /_/ /_/ .___/     |__/|__/_____//_/|_|
#                                            /_/
#
# This program comes with ABSOLUTELY NO WARRANTY; express or implied.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, as expressed in version 2, seen at
# https://www.gnu.org/licenses/gpl-2.0.html
# ################################################################################
# Dockerfile for development with VS Code
# More info at https://github.com/portfolio-2025br/bootcamp-wex

FROM mcr.microsoft.com/vscode/devcontainers/base:noble@sha256:763eca1839b2c6366f25b9c2b4c75c46e3d485a8d1b95f725e829397398a4c46

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        dotnet-sdk-8.0=* nodejs=* zlib1g=* \
    # Clean up
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

USER vscode
HEALTHCHECK NONE
