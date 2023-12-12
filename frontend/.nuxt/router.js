import Vue from 'vue'
import Router from 'vue-router'
import { normalizeURL, decode } from 'ufo'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _46f59540 = () => interopDefault(import('..\\pages\\about.vue' /* webpackChunkName: "pages/about" */))
const _23641086 = () => interopDefault(import('..\\pages\\agreement.vue' /* webpackChunkName: "pages/agreement" */))
const _15b4b0bd = () => interopDefault(import('..\\pages\\cart.vue' /* webpackChunkName: "pages/cart" */))
const _62621993 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages/contact" */))
const _1c6489ee = () => interopDefault(import('..\\pages\\faq.vue' /* webpackChunkName: "pages/faq" */))
const _3055131c = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages/login" */))
const _0052fa18 = () => interopDefault(import('..\\pages\\privacy-policy.vue' /* webpackChunkName: "pages/privacy-policy" */))
const _7cb7c52e = () => interopDefault(import('..\\pages\\ticket.vue' /* webpackChunkName: "pages/ticket" */))
const _2a116ed3 = () => interopDefault(import('..\\pages\\user\\notification.vue' /* webpackChunkName: "pages/user/notification" */))
const _0539e824 = () => interopDefault(import('..\\pages\\user\\offer.vue' /* webpackChunkName: "pages/user/offer" */))
const _6b3c8ece = () => interopDefault(import('..\\pages\\user\\payment.vue' /* webpackChunkName: "pages/user/payment" */))
const _3a5d449d = () => interopDefault(import('..\\pages\\user\\personal-details.vue' /* webpackChunkName: "pages/user/personal-details" */))
const _5cb7461e = () => interopDefault(import('..\\pages\\user\\profile.vue' /* webpackChunkName: "pages/user/profile" */))
const _3c6e2e0b = () => interopDefault(import('..\\pages\\user\\settings.vue' /* webpackChunkName: "pages/user/settings" */))
const _e9ac7446 = () => interopDefault(import('..\\pages\\user\\thankyou.vue' /* webpackChunkName: "pages/user/thankyou" */))
const _178c3474 = () => interopDefault(import('..\\pages\\user\\ticket.vue' /* webpackChunkName: "pages/user/ticket" */))
const _2e15dee1 = () => interopDefault(import('..\\pages\\user\\wallet.vue' /* webpackChunkName: "pages/user/wallet" */))
const _0af586ad = () => interopDefault(import('..\\pages\\user\\wishlist.vue' /* webpackChunkName: "pages/user/wishlist" */))
const _66ad7005 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages/index" */))

const emptyFn = () => {}

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: '/',
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
    path: "/about",
    component: _46f59540,
    name: "about"
  }, {
    path: "/agreement",
    component: _23641086,
    name: "agreement"
  }, {
    path: "/cart",
    component: _15b4b0bd,
    name: "cart"
  }, {
    path: "/contact",
    component: _62621993,
    name: "contact"
  }, {
    path: "/faq",
    component: _1c6489ee,
    name: "faq"
  }, {
    path: "/login",
    component: _3055131c,
    name: "login"
  }, {
    path: "/privacy-policy",
    component: _0052fa18,
    name: "privacy-policy"
  }, {
    path: "/ticket",
    component: _7cb7c52e,
    name: "ticket"
  }, {
    path: "/user/notification",
    component: _2a116ed3,
    name: "user-notification"
  }, {
    path: "/user/offer",
    component: _0539e824,
    name: "user-offer"
  }, {
    path: "/user/payment",
    component: _6b3c8ece,
    name: "user-payment"
  }, {
    path: "/user/personal-details",
    component: _3a5d449d,
    name: "user-personal-details"
  }, {
    path: "/user/profile",
    component: _5cb7461e,
    name: "user-profile"
  }, {
    path: "/user/settings",
    component: _3c6e2e0b,
    name: "user-settings"
  }, {
    path: "/user/thankyou",
    component: _e9ac7446,
    name: "user-thankyou"
  }, {
    path: "/user/ticket",
    component: _178c3474,
    name: "user-ticket"
  }, {
    path: "/user/wallet",
    component: _2e15dee1,
    name: "user-wallet"
  }, {
    path: "/user/wishlist",
    component: _0af586ad,
    name: "user-wishlist"
  }, {
    path: "/",
    component: _66ad7005,
    name: "index"
  }],

  fallback: false
}

export function createRouter (ssrContext, config) {
  const base = (config._app && config._app.basePath) || routerOptions.base
  const router = new Router({ ...routerOptions, base  })

  // TODO: remove in Nuxt 3
  const originalPush = router.push
  router.push = function push (location, onComplete = emptyFn, onAbort) {
    return originalPush.call(this, location, onComplete, onAbort)
  }

  const resolve = router.resolve.bind(router)
  router.resolve = (to, current, append) => {
    if (typeof to === 'string') {
      to = normalizeURL(to)
    }
    return resolve(to, current, append)
  }

  return router
}
