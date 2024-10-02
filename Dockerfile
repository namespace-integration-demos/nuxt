FROM docker.io/library/node:22.9-slim

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

COPY . .

RUN pnpm -r install

RUN ls -al

RUN ls -al /examples/ui/daisyui

RUN pnpm run build

# Requires https://github.com/nuxt/nuxt/releases/tag/v3.13.1
# Copy dance to not wipe node_modules

# RUN --mount=type=cache,target=/nuxt-cache,sharing=locked mkdir -p /node_modules/.cache/nuxt/builds \
#     && cp -rf /nuxt-cache /node_modules/.cache/nuxt/builds \
#     && pnpm run build \
#     && cp -rf /node_modules/.cache/nuxt/builds /nuxt-cache
