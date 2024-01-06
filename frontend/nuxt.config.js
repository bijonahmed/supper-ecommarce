import FriendlyErrorsWebpackPlugin from 'friendly-errors-webpack-plugin';
export default {
  // Global page headers: https://go.nuxtjs.dev/config-head
  head: {
    title: 'Welcome to winup360',
    htmlAttrs: {
      lang: 'en'
    },
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' },
      { name: 'format-detection', content: 'telephone=no' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/images/logo.png' },
      { rel: "preconnect",href: "https://fonts.googleapis.com"},
      { rel: "preconnect",href: "https://fonts.gstatic.com"},
      { rel: "stylesheet",href: "https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600;700;800;900&display=swap"},
      { rel: "stylesheet",href: "https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"},
      { rel: "stylesheet", href: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/css/intlTelInput.css" },
      { rel: "stylesheet", href: "/assets/bootstrap-5.3.2/css/bootstrap.min.css" },
      { rel: "stylesheet", href: "/assets/fontawesome-free-6.4.2/css/all.min.css" },
      { rel: "stylesheet", href: "/css/styles.css" },
    ],
    script: [
      { src: "https://code.jquery.com/jquery-3.7.0.js" },
      { src: "/assets/bootstrap-5.3.2/js/bootstrap.bundle.js" },
      { src: "https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js" },
      { src: "https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js" },
      { src: "/js/countdown.js" },
      { src: "/js/share_modal.js" },
      { src: "/js/html2canvas.js" },
      { src: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/js/intlTelInput.min.js" },
      { src: "https://cdn.jsdelivr.net/npm/sweetalert2@11" },

   
    ],
  },
  // Global CSS: https://go.nuxtjs.dev/config-css
  // css: [
  //   'owl.carousel/dist/assets/owl.carousel.min.css',
  //   'owl.carousel/dist/assets/owl.theme.default.min.css'
  // ],
  // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
  plugins: [
    { src: '~plugins/jquery.js', ssr: false }, // Import jQuery
    { src: '~plugins/vue-owl-carousel.js', ssr: false },
  ],
  // Auto import components: https://go.nuxtjs.dev/config-components
  components: true,
  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [
  
  ],
  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
    '@nuxtjs/axios',
    "@nuxtjs/auth-next",
  ],
  auth: {
    // Options
    strategies: {
      local: {
        token: {
          property: "access_token",
        },
        user: {
          property: false,
        },
        endpoints: {
          login: { url: "/auth/login", method: "post" },
          logout: { url: "/auth/logout", method: "post" },
          user: { url: "/auth/me", method: "post" },
        },
      },
    },
    redirect: {
      login: "/login",
      logout: "/",
      callback: "/login",
      home: "/",
    },
  },
   // Axios module configuration: https://go.nuxtjs.dev/config-axios
   axios: {
    //baseURL: "http://127.0.0.1:8000/api",
    baseURL: "https://api.winup360.com/api",
    },
  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {
    transpile: ["defu"],
    vendor: ['jquery'],
    build: {
      extend(config, { isDev, isClient }) {
        if (isDev && isClient) {
          // Add FriendlyErrorsWebpackPlugin
          const FriendlyErrorsWebpackPlugin = require('friendly-errors-webpack-plugin');
          config.plugins.push(new FriendlyErrorsWebpackPlugin());
        }
      }
    },
  }
}
