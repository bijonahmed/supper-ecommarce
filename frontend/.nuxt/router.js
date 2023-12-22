import Vue from 'vue'
import Router from 'vue-router'
import { normalizeURL, decode } from 'ufo'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _d0344366 = () => interopDefault(import('..\\pages\\about.vue' /* webpackChunkName: "pages/about" */))
const _4ca8f24a = () => interopDefault(import('..\\pages\\agreement.vue' /* webpackChunkName: "pages/agreement" */))
const _537edbe0 = () => interopDefault(import('..\\pages\\cart.vue' /* webpackChunkName: "pages/cart" */))
const _38645360 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages/contact" */))
const _f7323954 = () => interopDefault(import('..\\pages\\faq.vue' /* webpackChunkName: "pages/faq" */))
const _fd7547ae = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages/login" */))
const _5ba6d59c = () => interopDefault(import('..\\pages\\offer.vue' /* webpackChunkName: "pages/offer" */))
const _15e31887 = () => interopDefault(import('..\\pages\\privacy-policy.vue' /* webpackChunkName: "pages/privacy-policy" */))
const _6fc18b58 = () => interopDefault(import('..\\pages\\products.vue' /* webpackChunkName: "pages/products" */))
const _e2861408 = () => interopDefault(import('..\\pages\\ticket.vue' /* webpackChunkName: "pages/ticket" */))
const _c333c558 = () => interopDefault(import('..\\pages\\winners.vue' /* webpackChunkName: "pages/winners" */))
const _d439fa34 = () => interopDefault(import('..\\pages\\user\\notification.vue' /* webpackChunkName: "pages/user/notification" */))
const _38c07371 = () => interopDefault(import('..\\pages\\user\\offer.vue' /* webpackChunkName: "pages/user/offer" */))
const _410e2f58 = () => interopDefault(import('..\\pages\\user\\order-details.vue' /* webpackChunkName: "pages/user/order-details" */))
const _472c28fe = () => interopDefault(import('..\\pages\\user\\orderlist.vue' /* webpackChunkName: "pages/user/orderlist" */))
const _51650a4a = () => interopDefault(import('..\\pages\\user\\payment.vue' /* webpackChunkName: "pages/user/payment" */))
const _7c509730 = () => interopDefault(import('..\\pages\\user\\personal-details.vue' /* webpackChunkName: "pages/user/personal-details" */))
const _3db548fe = () => interopDefault(import('..\\pages\\user\\profile.vue' /* webpackChunkName: "pages/user/profile" */))
const _527ac39e = () => interopDefault(import('..\\pages\\user\\settings.vue' /* webpackChunkName: "pages/user/settings" */))
const _bd934920 = () => interopDefault(import('..\\pages\\user\\thankyou.vue' /* webpackChunkName: "pages/user/thankyou" */))
const _54d712c7 = () => interopDefault(import('..\\pages\\user\\ticket.vue' /* webpackChunkName: "pages/user/ticket" */))
const _6b60bd34 = () => interopDefault(import('..\\pages\\user\\wallet.vue' /* webpackChunkName: "pages/user/wallet" */))
const _21021c40 = () => interopDefault(import('..\\pages\\user\\wishlist.vue' /* webpackChunkName: "pages/user/wishlist" */))
const _90c48ddc = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages/index" */))
const _1d735ea4 = () => interopDefault(import('..\\pages\\categories\\_slug.vue' /* webpackChunkName: "pages/categories/_slug" */))
const _408f6a16 = () => interopDefault(import('..\\pages\\product-details\\_slug.vue' /* webpackChunkName: "pages/product-details/_slug" */))

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
    component: _d0344366,
    name: "about"
  }, {
    path: "/agreement",
    component: _4ca8f24a,
    name: "agreement"
  }, {
    path: "/cart",
    component: _537edbe0,
    name: "cart"
  }, {
    path: "/contact",
    component: _38645360,
    name: "contact"
  }, {
    path: "/faq",
    component: _f7323954,
    name: "faq"
  }, {
    path: "/login",
    component: _fd7547ae,
    name: "login"
  }, {
    path: "/offer",
    component: _5ba6d59c,
    name: "offer"
  }, {
    path: "/privacy-policy",
    component: _15e31887,
    name: "privacy-policy"
  }, {
    path: "/products",
    component: _6fc18b58,
    name: "products"
  }, {
    path: "/ticket",
    component: _e2861408,
    name: "ticket"
  }, {
    path: "/winners",
    component: _c333c558,
    name: "winners"
  }, {
    path: "/user/notification",
    component: _d439fa34,
    name: "user-notification"
  }, {
    path: "/user/offer",
    component: _38c07371,
    name: "user-offer"
  }, {
    path: "/user/order-details",
    component: _410e2f58,
    name: "user-order-details"
  }, {
    path: "/user/orderlist",
    component: _472c28fe,
    name: "user-orderlist"
  }, {
    path: "/user/payment",
    component: _51650a4a,
    name: "user-payment"
  }, {
    path: "/user/personal-details",
    component: _7c509730,
    name: "user-personal-details"
  }, {
    path: "/user/profile",
    component: _3db548fe,
    name: "user-profile"
  }, {
    path: "/user/settings",
    component: _527ac39e,
    name: "user-settings"
  }, {
    path: "/user/thankyou",
    component: _bd934920,
    name: "user-thankyou"
  }, {
    path: "/user/ticket",
    component: _54d712c7,
    name: "user-ticket"
  }, {
    path: "/user/wallet",
    component: _6b60bd34,
    name: "user-wallet"
  }, {
    path: "/user/wishlist",
    component: _21021c40,
    name: "user-wishlist"
  }, {
    path: "/",
    component: _90c48ddc,
    name: "index"
  }, {
    path: "/categories/:slug?",
    component: _1d735ea4,
    name: "categories-slug"
  }, {
    path: "/product-details/:slug?",
    component: _408f6a16,
    name: "product-details-slug"
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
