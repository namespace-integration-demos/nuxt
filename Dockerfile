FROM docker.io/library/node:20.11.0-alpine@sha256:2f46fd49c767554c089a5eb219115313b72748d8f62f5eccb58ef52bc36db4ad

ARG DIR=examples/ui/tailwindcss

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

COPY . .

WORKDIR ${DIR}

RUN pnpm install

# Requires https://github.com/nuxt/nuxt/releases/tag/v3.13.1 
RUN --mount=type=cache,target=/node_modules/.cache/nuxt/builds,sharing=locked pnpm run build
