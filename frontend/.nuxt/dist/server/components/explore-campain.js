exports.ids = [3,6];
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

/***/ 45:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/ExploreCampain.vue?vue&type=template&id=5b9fded8&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<section class=\"campain_sec\">", "</section>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<div class=\"campain_list\">", "</div>", [_vm._ssrNode("<h4>Explore campaigns</h4> "), _vm._ssrNode("<ul>", "</ul>", [_vm.loading ? _vm._ssrNode("<span>", "</span>", [_c('Loader')], 1) : _vm._e(), _vm._ssrNode(" "), _vm._l(_vm.prouducts, function (item, index) {
    return _vm._ssrNode("<li>", "</li>", [_vm._ssrNode("<div class=\"campain_box\">", "</div>", [_vm._ssrNode("<div class=\"total_ticket\"><div class=\"t_count\"><div><h6>25</h6> <p>Total</p></div></div> <h5>Tickets</h5></div> "), _vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-5\"><div class=\"c_campain_left\"><div class=\"camp_count\"><div id=\"timer\" data-endtime=\"25 october 2024 10:00:00 GMT+01:00\" class=\"c_timer\"></div></div> <div class=\"campain_image\"><div class=\"swiper campain_s\"><div class=\"swiper-wrapper\"><div class=\"swiper-slide\"><img src=\"/images/cash.png\" loading=\"lazy\" alt class=\"img-fulid\"></div> <div class=\"swiper-slide\"><img src=\"/images/cash1.png\" loading=\"lazy\" alt class=\"img-fulid\"></div> <div class=\"swiper-slide\"><img src=\"/images/cash2.png\" loading=\"lazy\" alt class=\"img-fulid\"></div></div></div></div> <div class=\"c_price\"><div class=\"creadit_ticket\"><p>Lottery Creadit</p> <h1>BDT125</h1></div></div></div></div> "), _vm._ssrNode("<div class=\"col-md-7\">", "</div>", [_vm._ssrNode("<div class=\"c_content_right\">", "</div>", [_vm._ssrNode("<div class=\"c_content_box\">", "</div>", [_vm._ssrNode("<h1>Win</h1> <h2>" + _vm._ssrEscape(_vm._s(item.name)) + "</h2> <h6>Buy a lottery credit and make it yours!</h6> <span>" + _vm._ssrEscape("$" + _vm._s(item.price)) + "</span> "), _vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<div class=\"d-flex\">", "</div>", [_c('nuxt-link', {
      attrs: {
        "to": `/product-details/${item.slug}`
      }
    }, [_vm._v("View Details")])], 1)]), _vm._ssrNode(" <div class=\"col-md-12\"><p> Draw Date: 21 November, 2023 or earlier based on the time passed. </p></div>")], 2)], 2), _vm._ssrNode(" <div class=\"button_\"><button type=\"button\" class=\"btn_share active\"><i class=\"fa-solid fa-heart\"></i></button> <button type=\"button\" class=\"btn_share share_btn\"><i class=\"fa-solid fa-share\"></i></button></div>")], 2)])], 2)], 2)]);
  })], 2)], 2)])])])]), _vm._ssrNode(" <div class=\"details_modal\"><div class=\"m_content_\"><div class=\"d-flex justify-content-between\"><ul id=\"pills-tab\" role=\"tablist\" class=\"nav nav-pills tb_btns tb_btns mb-3\"><li role=\"presentation\" class=\"nav-item tb_btns_left\"><button id=\"pills-home-tab\" data-bs-toggle=\"pill\" data-bs-target=\"#pills-prize\" type=\"button\" role=\"tab\" aria-controls=\"pills-home\" aria-selected=\"true\" class=\"nav-link active\">Product Details </button></li></ul> <button type=\"button\" class=\"btn_mclose\"><i class=\"fa-solid fa-x\"></i></button></div> <div id=\"pills-tabContent\" class=\"tab-content\"><div id=\"pills-prize\" role=\"tabpanel\" aria-labelledby=\"pills-home-tab\" tabindex=\"0\" class=\"tab-pane p_details fade show active\"><p id=\"description\"></p></div></div></div></div> <div class=\"modal_share\"><div class=\"popup\"><header><span>Share With </span> <div class=\"close\"><i class=\"fa-solid fa-x\"></i></div></header> <div class=\"content\"><p>Share this link via</p> <ul class=\"icons\"><a href=\"#\"><i class=\"fab fa-facebook-f\"></i></a> <a href=\"#\"><i class=\"fab fa-twitter\"></i></a> <a href=\"#\"><i class=\"fab fa-whatsapp\"></i></a> <a href=\"#\"><i class=\"fab fa-telegram-plane\"></i></a></ul> <p>Or copy link</p> <div class=\"field\"><i class=\"url-icon uil uil-link\"></i> <input type=\"text\" readonly=\"readonly\" id=\"myInput\" value=\"https://futuregenit.com\"> <button onclick=\"copy()\" id=\"change_txt\">Copy</button></div></div></div></div>")], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/ExploreCampain.vue?vue&type=template&id=5b9fded8&

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/ExploreCampain.vue?vue&type=script&lang=js&
/* harmony default export */ var ExploreCampainvue_type_script_lang_js_ = ({
  data() {
    return {
      loading: false,
      cart: [],
      prouducts: [],
      itemCount: 0,
      updatedQuantity: 0
    };
  },
  mounted() {
    this.sellingFast();
  },
  methods: {
    async wishlist(slug) {
      try {
        this.loading = true; // Show loader
        // Define parameters
        const page = 1;
        const limit = 10;
        // Make GET request with parameters
        const response = await this.$axios.get(`/order/addtowish/${slug}`);
        console.log(response.data);
        const Toast = Swal.mixin({
          toast: true,
          position: "top-end",
          showConfirmButton: false,
          timer: 1500,
          timerProgressBar: true,
          didOpen: toast => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
          }
        });
        Toast.fire({
          icon: "success",
          title: "Item added to wishlist successfully!"
        });
      } catch (error) {
        console.error('Error fetching slidersImages:', error);
      } finally {
        this.loading = false; // Hide loader after response or error
      }
    },

    async sellingFast() {
      const response = await this.$axios.get('/unauthenticate/sellingFast');
      this.prouducts = response.data;
    },
    addtoCart(product) {
      this.loading = true;
      // const cart = JSON.parse(localStorage.getItem('cart')) || [];
      const existingProduct = this.cart.find(item => item.id === product.id);
      if (existingProduct) {
        existingProduct.quantity += 1;
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
    saveCart() {
      if (false) {}
    },
    async viewDetails(slug) {
      const prosulg = slug;
      const response = await this.$axios.get(`/unauthenticate/productSlug/${prosulg}`);
      $("#description").html(response.data.product_descr);
      //console.log("product row " + response.data.product_descr);

      $(".details_modal").fadeIn();
    },
    hideDetails() {
      $(".details_modal").fadeOut();
    },
    shareBtn() {
      $(".modal_share").fadeIn();
    },
    shareBtnCls() {
      $(".modal_share").fadeOut();
    }
  }
});
// CONCATENATED MODULE: ./components/ExploreCampain.vue?vue&type=script&lang=js&
 /* harmony default export */ var components_ExploreCampainvue_type_script_lang_js_ = (ExploreCampainvue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/ExploreCampain.vue





/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  components_ExploreCampainvue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "00e605e0"
  
)

/* harmony default export */ var ExploreCampain = __webpack_exports__["default"] = (component.exports);

/* nuxt-component-imports */
installComponents(component, {Loader: __webpack_require__(38).default})


/***/ })

};;
//# sourceMappingURL=explore-campain.js.map