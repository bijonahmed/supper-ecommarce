exports.ids = [10,6];
exports.modules = {

/***/ 39:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(41);
if(content.__esModule) content = content.default;
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add CSS to SSR context
var add = __webpack_require__(9).default
module.exports.__inject__ = function (context) {
  add("d39a30e0", content, true, context)
};

/***/ }),

/***/ 40:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(39);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Loader_vue_vue_type_style_index_0_id_7dbb8f16_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));


/***/ }),

/***/ 41:
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

/***/ 42:
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
  
  var style0 = __webpack_require__(40)
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

/***/ 53:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/SellingFastSlider.vue?vue&type=template&id=e782b850&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<section class=\"selling_fast\">", "</section>", [_vm._ssrNode("<div class=\"container app_hide\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<h1>Selling Fast</h1> "), _vm.loading ? _vm._ssrNode("<span>", "</span>", [_c('Loader')], 1) : _vm._e(), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"swiper pro_slider\">", "</div>", [_vm._ssrNode("<div class=\"swiper-wrapper\">", "</div>", _vm._l(_vm.products, function (item, index) {
    return _vm._ssrNode("<div class=\"swiper-slide\">", "</div>", [_c('nuxt-link', {
      attrs: {
        "to": `/product-details/${item.slug}`
      }
    }, [_c('div', {
      staticClass: "sell_fast"
    }, [_c('div', {
      staticClass: "product_image"
    }, [_c('img', {
      staticClass: "img-fluid",
      attrs: {
        "src": item.thumnail,
        "loading": "lazy",
        "alt": ""
      }
    }), _vm._v(" "), item.addi_pname !== '' && item.addi_thumnail !== '' ? _c('div', {
      staticClass: "p_tag"
    }, [_c('img', {
      staticClass: "img-fluid",
      attrs: {
        "src": item.addi_thumnail,
        "loading": "lazy",
        "alt": ""
      }
    }), _vm._v(" "), _c('h6', [_vm._v(_vm._s(item.addi_pname))])]) : _vm._e()]), _vm._v(" "), _c('h3', [_vm._v("Get a chance to "), _c('span', [_vm._v("WIN")])]), _vm._v(" "), _c('h2', [_vm._v(_vm._s(item.name))])])])], 1);
  }), 0)])], 2)])])]), _vm._ssrNode(" "), _vm._ssrNode("<section class=\"product my-3\">", "</section>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm.imgloading ? _vm._ssrNode("<div>", "</div>", [_c('center', [_c('img', {
    staticClass: "rounded",
    staticStyle: {
      "height": "50px",
      "width": "50px"
    },
    attrs: {
      "src": "/images/loading_animated.gif"
    }
  })])], 1) : _vm._e(), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"product_grid\">", "</div>", _vm._l(_vm.rproducts, function (item, index) {
    return _vm._ssrNode("<div class=\"product_gview\">", "</div>", [_vm._ssrNode((_vm.loggedIn ? "<span><button type=\"button\" class=\"active\"><i class=\"fa-solid fa-heart\"></i></button></span>" : "<span><button type=\"button\" class=\"active\"><i class=\"fa-solid fa-heart\"></i></button></span>") + " "), _c('nuxt-link', {
      attrs: {
        "to": `/product-details/${item.slug}`
      }
    }, [_c('div', {
      staticClass: "product_image"
    }, [_c('img', {
      staticClass: "img-fluid",
      attrs: {
        "src": item.thumnail,
        "loading": "lazy",
        "alt": ""
      }
    }), _vm._v(" "), item.addi_pname !== '' && item.addi_thumnail !== '' ? _c('div', {
      staticClass: "p_tag"
    }, [_c('img', {
      staticClass: "img-fluid",
      attrs: {
        "src": item.addi_thumnail,
        "loading": "lazy",
        "alt": ""
      }
    }), _vm._v(" "), _c('h6', [_vm._v(_vm._s(item.addi_pname))])]) : _vm._e()]), _vm._v(" "), _c('h5', [_vm._v(_vm._s(item.name))]), _vm._v(" "), _c('p', [_vm._v("TK." + _vm._s(item.price))])])], 2);
  }), 0)], 2)]), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-4 col-12 m-auto\">", "</div>", [_c('nuxt-link', {
    staticClass: "btn_submit text-center m-0 mb-2 w-100 fw-600",
    staticStyle: {
      "display": "block",
      "text-decoration": "none"
    },
    attrs: {
      "to": "/products"
    }
  }, [_vm._v("Explore More")])], 1)])], 2), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"login_modal\">", "</div>", [_vm._ssrNode("<div class=\"main_content\">", "</div>", [_vm._ssrNode("<div class=\"log_regi\">", "</div>", [_vm._ssrNode("<button class=\"cls_mdal\"><i class=\"fa-solid fa-x\"></i></button> "), _vm._ssrNode("<div class=\"login_section\">", "</div>", [_c('center', [_c('span', {
    staticClass: "text-danger text-center"
  }, [_vm._v(_vm._s(_vm.invaliderror))])]), _vm._ssrNode(" "), _vm._ssrNode("<form id=\"formrest_login\" enctype=\"multipart/form-data\" class=\"forms-sample\">", "</form>", [_vm._ssrNode("<h5 class=\"text-center\">Login</h5> "), _vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\"><div class=\"input-container\"><input placeholder=\"Email\" type=\"text\"" + _vm._ssrAttr("value", _vm.login.email) + " class=\"input-field\"> <label for=\"input-field\" class=\"input-label\">Email </label> " + (_vm.errors.email ? "<span class=\"text-danger\">" + _vm._ssrEscape(_vm._s(_vm.errors.email[0])) + "</span>" : "<!---->") + " <span class=\"input-highlight\"></span></div></div> <div class=\"col-md-12\"><div class=\"input-container\">" + ((_vm.showPassword ? 'text' : 'password') === 'checkbox' ? "<input placeholder=\"Password\" id=\"password-field\" type=\"checkbox\"" + _vm._ssrAttr("checked", Array.isArray(_vm.login.password) ? _vm._i(_vm.login.password, null) > -1 : _vm.login.password) + " class=\"input-field\">" : (_vm.showPassword ? 'text' : 'password') === 'radio' ? "<input placeholder=\"Password\" id=\"password-field\" type=\"radio\"" + _vm._ssrAttr("checked", _vm._q(_vm.login.password, null)) + " class=\"input-field\">" : "<input placeholder=\"Password\" id=\"password-field\"" + _vm._ssrAttr("type", _vm.showPassword ? 'text' : 'password') + _vm._ssrAttr("value", _vm.login.password) + " class=\"input-field\">") + " <label for=\"input-field\" class=\"input-label\">Password </label> " + (_vm.errors.password ? "<span class=\"text-danger\">" + _vm._ssrEscape(_vm._s(_vm.errors.password[0])) + "</span>" : "<!---->") + " <span class=\"input-highlight\"></span> <i toggle=\"#password-field\" class=\"fa-solid fa-eye toggle-password\"></i></div></div> "), _vm._ssrNode("<div class=\"row pe-0\">", "</div>", [_vm._ssrNode("<div class=\"col-6\"><div class=\"input-container d-none\"><a href=\"javascript:\" class=\"f_link\"><small><p style=\"color:white;\">Forget Password?</p></small></a></div></div> "), _vm._ssrNode("<div class=\"col-6\">", "</div>", [_vm._ssrNode("<div class=\"input-container\">", "</div>", [_c('nuxt-link', {
    staticClass: "f_link",
    staticStyle: {
      "text-align": "right"
    },
    attrs: {
      "to": "/register"
    }
  }, [_c('div', [_c('small', {
    staticStyle: {
      "color": "white"
    }
  }, [_vm._v("Register")])])])], 1)]), _vm._ssrNode(" <div class=\"col-12 px-0\"><div class=\"input-container text-end\"><input value=\"Login\" type=\"submit\" class=\"btn_submit w-100\"><br><br></div></div>")], 2)], 2)], 2)], 2)], 2)])])], 2)], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/SellingFastSlider.vue?vue&type=template&id=e782b850&

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/SellingFastSlider.vue?vue&type=script&lang=js&
/* harmony default export */ var SellingFastSlidervue_type_script_lang_js_ = ({
  data() {
    return {
      imgloading: true,
      loading: false,
      cart: [],
      products: [],
      rproducts: [],
      itemCount: 0,
      updatedQuantity: 0,
      login: {
        email: '',
        password: ''
      },
      showPassword: false,
      errors: {},
      invaliderror: '',
      notifmsg: ''
    };
  },
  mounted() {
    setTimeout(() => {
      this.randomProducts();
      this.imgloading = false;
    }, 2000); //
    this.sellingFast();
    this.$nextTick(() => {
      this.initCarousel();
    });
  },
  computed: {
    loggedIn() {
      return this.$auth.loggedIn;
    }
  },
  methods: {
    async userLogin() {
      try {
        const postData = {
          email: this.login.email,
          password: this.login.password
          // Add other parameters as needed
        };

        let {
          data
        } = await this.$axios.post('/auth/login', postData); //await this.login.post('/auth/login');
        await this.$auth.setUserToken(data.access_token);
        this.closePopup();
        const Toast = Swal.mixin({
          toast: true,
          position: "top-end",
          showConfirmButton: false,
          timer: 3000,
          timerProgressBar: true,
          didOpen: toast => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
          }
        });
        Toast.fire({
          icon: "success",
          title: "Signed in successfully"
        });
        this.$router.push('/');
      } catch (err) {
        if (err.response.status === 422) {
          this.errors = err.response.data.errors;
          this.errorHandler(err);
        }
        console.log(err);
      }
    },
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

    async randomProducts() {
      try {
        this.loading = true; // Show loader
        const response = await this.$axios.get('/unauthenticate/randomProducts');
        this.rproducts = response.data;
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
    showhidePassword() {
      this.showPassword = !this.showPassword;
    },
    loginPopup() {
      $(".login_modal").fadeIn();
    },
    closePopup() {
      $(".login_modal").fadeOut();
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
installComponents(component, {Loader: __webpack_require__(42).default})


/***/ })

};;
//# sourceMappingURL=selling-fast-slider.js.map