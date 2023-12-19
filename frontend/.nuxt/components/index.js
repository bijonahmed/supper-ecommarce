export { default as Banner } from '../..\\components\\Banner.vue'
export { default as ExploreCampain } from '../..\\components\\ExploreCampain.vue'
export { default as Footer } from '../..\\components\\Footer.vue'
export { default as LeftsidebarDesktop } from '../..\\components\\LeftsidebarDesktop.vue'
export { default as LeftsidebarMobile } from '../..\\components\\LeftsidebarMobile.vue'
export { default as Loader } from '../..\\components\\Loader.vue'
export { default as MainSlider } from '../..\\components\\MainSlider.vue'
export { default as MobileMenu } from '../..\\components\\MobileMenu.vue'
export { default as Navbar } from '../..\\components\\Navbar.vue'
export { default as SellingFastSlider } from '../..\\components\\SellingFastSlider.vue'
export { default as SoldOut } from '../..\\components\\SoldOut.vue'
export { default as Winner } from '../..\\components\\Winner.vue'

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
