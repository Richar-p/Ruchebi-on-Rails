// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools:  { enabled: true },

  // Port 3000 are already used by Rails.
  devServer: { port: 4000 },

  nitro: {
    // Use devProxy to link API to Frontend by docker (no HTTPS..)
    // Every link of the API are usable from /api/[...]
    devProxy: {
      "/api": {
        target: "http://app:3000",
      }
    }
  },

  // Disable pre-rendering to be sure API-call are done at the good timing
  routeRules: {
    '/': { ssr: false },
    '*': { ssr: false }
  },

  // Nuxt UI are used to stylize the UI.
  // Nuxt Image are used to rendering images easier (on the logo for the moment)
  modules: ["@nuxt/ui", "@nuxt/image"]
})