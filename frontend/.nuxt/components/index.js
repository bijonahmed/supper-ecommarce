export const Banner = () => import('../..\\components\\Banner.vue' /* webpackChunkName: "components/banner" */).then(c => wrapFunctional(c.default || c))
export const ExploreCampain = () => import('../..\\components\\ExploreCampain.vue' /* webpackChunkName: "components/explore-campain" */).then(c => wrapFunctional(c.default || c))
export const Footer = () => import('../..\\components\\Footer.vue' /* webpackChunkName: "components/footer" */).then(c => wrapFunctional(c.default || c))
export const LeftsidebarDesktop = () => import('../..\\components\\LeftsidebarDesktop.vue' /* webpackChunkName: "components/leftsidebar-desktop" */).then(c => wrapFunctional(c.default || c))
export const LeftsidebarMobile = () => import('../..\\components\\LeftsidebarMobile.vue' /* webpackChunkName: "components/leftsidebar-mobile" */).then(c => wrapFunctional(c.default || c))
export const Loader = () => import('../..\\components\\Loader.vue' /* webpackChunkName: "components/loader" */).then(c => wrapFunctional(c.default || c))
export const MainSlider = () => import('../..\\components\\MainSlider.vue' /* webpackChunkName: "components/main-slider" */).then(c => wrapFunctional(c.default || c))
export const MobileMenu = () => import('../..\\components\\MobileMenu.vue' /* webpackChunkName: "components/mobile-menu" */).then(c => wrapFunctional(c.default || c))
export const Navbar = () => import('../..\\components\\Navbar.vue' /* webpackChunkName: "components/navbar" */).then(c => wrapFunctional(c.default || c))
export const SellingFastSlider = () => import('../..\\components\\SellingFastSlider.vue' /* webpackChunkName: "components/selling-fast-slider" */).then(c => wrapFunctional(c.default || c))
export const SoldOut = () => import('../..\\components\\SoldOut.vue' /* webpackChunkName: "components/sold-out" */).then(c => wrapFunctional(c.default || c))
export const Winner = () => import('../..\\components\\Winner.vue' /* webpackChunkName: "components/winner" */).then(c => wrapFunctional(c.default || c))

// nuxt/nuxt.js#8607
function wrapFunctional(options) {
  if (!options || !options.functional) {
    return options
  }

  const propKeys = Array.isArray(options.props) ? options.props : Object.keys(options.props || {})

  return {
    render(h) {
      const attrs = {}
      const props = {}

      for (const key in this.$attrs) {
        if (propKeys.includes(key)) {
          props[key] = this.$attrs[key]
        } else {
          attrs[key] = this.$attrs[key]
        }
      }

      return h(options, {
        on: this.$listeners,
        attrs,
        props,
        scopedSlots: this.$scopedSlots,
      }, this.$slots.default)
    }
  }
}
