export default defineNuxtConfig({
  modules: ['@nuxtjs/tailwindcss', '@nuxtjs/color-mode'],
  colorMode: {
    classSuffix: '',
  },
  // https://tailwindcss.nuxtjs.org
  tailwindcss: {
    // Expose tailwind config with #tailwind-config
    exposeConfig: true,
  },

  // Enable build caching https://nuxt.com/docs/guide/going-further/experimental-features#buildcache
  // Cache contents live at <workspace>/node_modules/.cache/nuxt/builds
  experimental: {
    buildCache: true,
  },
})
