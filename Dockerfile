FROM docker.io/library/node:20.11.0-alpine@sha256:2f46fd49c767554c089a5eb219115313b72748d8f62f5eccb58ef52bc36db4ad

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

COPY . .

RUN pnpm -r install

RUN pnpm run build

# Requires https://github.com/nuxt/nuxt/releases/tag/v3.13.1
# Copy dance to not wipe node_modules

# RUN --mount=type=cache,target=/nuxt-cache,sharing=locked mkdir -p /node_modules/.cache/nuxt/builds \
#     && cp -rf /nuxt-cache /node_modules/.cache/nuxt/builds \
#     && pnpm run build \
#     && cp -rf /node_modules/.cache/nuxt/builds /nuxt-cache
