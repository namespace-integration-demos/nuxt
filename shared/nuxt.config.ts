export default defineNuxtConfig({
  modules: ["@nuxt/ui"],

  ui: {
    icons: ["simple-icons"],
  },

  tailwindcss: {
    viewer: false,
  },

  // Enable build caching https://nuxt.com/docs/guide/going-further/experimental-features#buildcache
  // Cache contents live at node_modules/.cache/nuxt/builds
  experimental: {
    buildCache: true,
  },
});
