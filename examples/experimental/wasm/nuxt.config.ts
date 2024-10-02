export default defineNuxtConfig({
  nitro: {
    experimental: {
      buildCache: true,
      wasm: true,
    },
  },
  extends: [
    '@nuxt/examples-ui',
  ],
})
