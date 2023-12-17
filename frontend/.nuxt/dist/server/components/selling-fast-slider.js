exports.ids = [9,6];
exports.modules = {

/***/ 35:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(37);
if(content.__esModule) content = content.default;
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add CSS to SSR context
var add = __webpack_require__(9).default
module.exports.__inject__ = function (context) {
  add("d39a30e0", content, true, context)
};

/***/ }),

/***/ 36:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(35);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));


/***/ }),

/***/ 37:
/***/ (function(module, exports, __webpack_require__) {

// Imports
var ___CSS_LOADER_API_IMPORT___ = __webpack_require__(8);
var ___CSS_LOADER_EXPORT___ = ___CSS_LOADER_API_IMPORT___(function(i){return i[1]});
// Module
___CSS_LOADER_EXPORT___.push([module.i, ".loading-indicator[data-v-7dbb8f16]{background-color:hsla(0,0%,100%,.8);height:100%;left:0;position:fixed;top:0;width:100%;z-index:9999}.loader-container[data-v-7dbb8f16],.loading-indicator[data-v-7dbb8f16]{align-items:center;display:flex;justify-content:center}.loader-container[data-v-7dbb8f16]{flex-direction:column;height:100vh;position:relative}.loader-text[data-v-7dbb8f16]{margin:0}.loader-top[data-v-7dbb8f16]{top:0}.loader-bottom[data-v-7dbb8f16]{bottom:0}", ""]);
// Exports
___CSS_LOADER_EXPORT___.locals = {};
module.exports = ___CSS_LOADER_EXPORT___;


/***/ }),

/***/ 38:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/Loader.vue?vue&type=template&id=7dbb8f16&scoped=true&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<div class=\"loading-indicator\" data-v-7dbb8f16>", "</div>", [_vm._ssrNode("<div class=\"loader-container\" data-v-7dbb8f16>", "</div>", [_c('center', {
    staticClass: "loader-text"
  }, [_vm._v("Loading...")]), _vm._ssrNode(" <img src=\"/loader/loader.gif\" alt=\"Loader\" data-v-7dbb8f16>")], 2)])]);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/Loader.vue?vue&type=template&id=7dbb8f16&scoped=true&

// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/Loader.vue

var script = {}
function injectStyles (context) {
  
  var style0 = __webpack_require__(36)
if (style0.__inject__) style0.__inject__(context)

}

/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  script,
  render,
  staticRenderFns,
  false,
  injectStyles,
  "7dbb8f16",
  "60d4433e"
  
)

/* harmony default export */ var Loader = __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ 44:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/SellingFastSlider.vue?vue&type=template&id=02582c5c&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<section class=\"selling_fast\">", "</section>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<h1>Selling Fast</h1> "), _vm.loading ? _vm._ssrNode("<span>", "</span>", [_c('Loader')], 1) : _vm._e(), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"swiper pro_slider\">", "</div>", [_vm._ssrNode("<div class=\"swiper-wrapper\">", "</div>", _vm._l(_vm.products, function (item, index) {
    return _vm._ssrNode("<div class=\"swiper-slide\">", "</div>", [_c('nuxt-link', {
      attrs: {
        "to": `/product-details/${item.slug}`
      }
    }, [_c('div', {
      staticClass: "sell_fast"
    }, [_c('div', {
      staticClass: "sell_progress"
    }, [_c('div', {
      staticClass: "d-none"
    }, [_c('p', [_vm._v("1372 sold out of 1950")]), _vm._v(" "), _c('div', {
      staticClass: "progress",
      attrs: {
        "role": "progressbar",
        "aria-label": "Success example",
        "aria-valuenow": "25",
        "aria-valuemin": "0",
        "aria-valuemax": "100"
      }
    }, [_c('div', {
      staticClass: "progress-bar",
      staticStyle: {
        "width": "25%"
      }
    })])])]), _vm._v(" "), _c('img', {
      staticClass: "img-fulid",
      attrs: {
        "src": item.thumnail,
        "loading": "lazy",
        "alt": ""
      }
    }), _vm._v(" "), _c('h3', [_vm._v("Get a chance to "), _c('span', [_vm._v("WIN")])]), _vm._v(" "), _c('h2', [_vm._v(_vm._s(item.name))])])])], 1);
  }), 0)])], 2)])])])]);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/SellingFastSlider.vue?vue&type=template&id=02582c5c&

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/SellingFastSlider.vue?vue&type=script&lang=js&
/* harmony default export */ var SellingFastSlidervue_type_script_lang_js_ = ({
  data() {
    return {
      loading: false,
      cart: [],
      products: [],
      itemCount: 0,
      updatedQuantity: 0
    };
  },
  mounted() {
    this.sellingFast();
    this.$nextTick(() => {
      this.initCarousel();
    });
  },
  methods: {
    async sellingFast() {
      try {
        this.loading = true; // Show loader
        const response = await this.$axios.get('/unauthenticate/sellingFast');
        this.products = response.data;
        // Handle other logic related to products if needed
      } catch (error) {
        console.error('Error fetching sellingFast:', error);
        // Handle error if needed
      } finally {
        this.loading = false; // Hide loader after response or error
      }
    },

    addtoCart(product) {
      this.loading = true;
      // const cart = JSON.parse(localStorage.getItem('cart')) || [];
      const existingProduct = this.cart.find(item => item.id === product.id);
      if (existingProduct) {
        // existingProduct.quantity += 1;
      } else {
        this.cart.push({
          ...product,
          quantity: 1
        });
      }
      // Merge with existing data if any
      const existingData = JSON.parse(localStorage.getItem('cart')) || [];
      const newData = [...existingData, ...this.cart];
      localStorage.setItem('cart', JSON.stringify(newData));
      setTimeout(() => {
        this.loading = false;
      }, 1000);
    },
    initCarousel() {
      // Pro slider
      new Swiper(".pro_slider", {
        slidesPerView: 1,
        spaceBetween: 20,
        breakpoints: {
          320: {
            slidesPerView: 1,
            spaceBetween: 20
          },
          377: {
            slidesPerView: 2,
            spaceBetween: 20
          },
          480: {
            slidesPerView: 2,
            spaceBetween: 20
          },
          576: {
            slidesPerView: 2,
            spaceBetween: 20
          },
          768: {
            slidesPerView: 3,
            spaceBetween: 20
          },
          992: {
            slidesPerView: 4
          },
          1200: {
            slidesPerView: 6
          }
        }
      });
    }
  }
});
// CONCATENATED MODULE: ./components/SellingFastSlider.vue?vue&type=script&lang=js&
 /* harmony default export */ var components_SellingFastSlidervue_type_script_lang_js_ = (SellingFastSlidervue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/SellingFastSlider.vue





/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  components_SellingFastSlidervue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "a39e8e22"
  
)

/* harmony default export */ var SellingFastSlider = __webpack_exports__["default"] = (component.exports);

/* nuxt-component-imports */
installComponents(component, {Loader: __webpack_require__(38).default})


/***/ })

};;
//# sourceMappingURL=selling-fast-slider.js.map