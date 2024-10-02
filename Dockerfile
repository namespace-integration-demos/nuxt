FROM docker.io/library/node:22.9-slim

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

COPY . /app

WORKDIR /app

# Requires https://github.com/nuxt/nuxt/releases/tag/v3.13.1
RUN --mount=type=cache,target=/nuxt-cache,sharing=locked pnpm run build
