exports.ids = [20,1,2,3,6,7,8,9,10];
exports.modules = {

/***/ 32:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/Footer.vue?vue&type=template&id=5d93a9ed&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<footer>", "</footer>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"footer\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-6\">", "</div>", [_vm._ssrNode("<div class=\"footer_links\">", "</div>", [_vm._ssrNode("<div class=\"d-flex justify-content-around\">", "</div>", [_vm._ssrNode("<div>", "</div>", [_vm._ssrNode("<h6>Quick Links</h6> "), _vm._ssrNode("<ul>", "</ul>", [_vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/about"
    }
  }, [_vm._v("About")])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/profile"
    }
  }, [_vm._v("My Account")])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/ticket"
    }
  }, [_vm._v("Active Ticket")])], 1)], 2)], 2), _vm._ssrNode(" "), _vm._ssrNode("<div>", "</div>", [_vm._ssrNode("<h6>Customer Service</h6> "), _vm._ssrNode("<ul>", "</ul>", [_vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/contact"
    }
  }, [_vm._v("Contact Us")])], 1), _vm._ssrNode(" <li><a href=\"#\">How it is work</a></li>")], 2)], 2)], 2)])]), _vm._ssrNode(" <div class=\"col-md-6\"><div class=\"social\"><a href=\"https://www.facebook.com/winup360\" target=\"_blank\"><i class=\"fa-brands fa-facebook-f\"></i></a></div> <div class=\"app_link\"><p>Download the LOTTERY app for the ultimate shopping experience!</p> <div class=\"d-flex justify-content-center\"><a href=\"https://paly.google.com\"><img src=\"/images/Play.png\" loading=\"lazy\" alt class=\"img-fulid\"></a> <a href=\"https://app.store.com\"><img src=\"/images/Apple.png\" loading=\"lazy\" alt class=\"img-fulid\"></a></div></div></div>")], 2)]), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"copyright_section\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-6\">", "</div>", [_vm._ssrNode("<div class=\"copyright_text\">", "</div>", [_vm._ssrNode("<p>© Copyright 2024 <strong style=\"color: #aded28;\">winup360</strong>. All Rights Reserved.</p> "), _vm._ssrNode("<ul>", "</ul>", [_vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/agreement",
      "href": "javascript:void();"
    }
  }, [_vm._v("User Agreement")])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/privacy-policy",
      "href": "javascript:void();"
    }
  }, [_vm._v("Privacy Policy")])], 1)], 2)], 2)]), _vm._ssrNode(" <div class=\"col-md-6\"><div class=\"we_accept\"><p>We Accept: </p> <img src=\"/images/Bkash.png\" loading=\"lazy\" alt class=\"img-fulid\"> <img src=\"/images/Roket.png\" loading=\"lazy\" alt class=\"img-fulid\"> <img src=\"/images/nogot.png\" loading=\"lazy\" alt class=\"img-fulid\"> <img src=\"/images/Upay.png\" loading=\"lazy\" alt class=\"img-fulid\"></div></div>")], 2)])], 2)])]);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/Footer.vue?vue&type=template&id=5d93a9ed&

// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/Footer.vue

var script = {}


/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  script,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "12915fe9"
  
)

/* harmony default export */ var Footer = __webpack_exports__["default"] = (component.exports);

/* nuxt-component-imports */
installComponents(component, {Footer: __webpack_require__(32).default})


/***/ }),

/***/ 33:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(0);
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(vue__WEBPACK_IMPORTED_MODULE_0__);
// plugins/bus.js

const bus = new vue__WEBPACK_IMPORTED_MODULE_0___default.a();
/* harmony default export */ __webpack_exports__["a"] = (bus);

/***/ }),

/***/ 34:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(36);
if(content.__esModule) content = content.default;
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add CSS to SSR context
var add = __webpack_require__(9).default
module.exports.__inject__ = function (context) {
  add("d6508686", content, true, context)
};

/***/ }),

/***/ 35:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_940fe2c4_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(34);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_940fe2c4_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_940fe2c4_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_940fe2c4_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_940fe2c4_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));


/***/ }),

/***/ 36:
/***/ (function(module, exports, __webpack_require__) {

// Imports
var ___CSS_LOADER_API_IMPORT___ = __webpack_require__(8);
var ___CSS_LOADER_EXPORT___ = ___CSS_LOADER_API_IMPORT___(function(i){return i[1]});
// Module
___CSS_LOADER_EXPORT___.push([module.i, ".mobile_footer[data-v-940fe2c4]{bottom:0;padding:10px 0;position:fixed;width:100%;z-index:1000}.active[data-v-940fe2c4]{color:#007bff}", ""]);
// Exports
___CSS_LOADER_EXPORT___.locals = {};
module.exports = ___CSS_LOADER_EXPORT___;


/***/ }),

/***/ 37:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/Navbar.vue?vue&type=template&id=07064a25&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<section class=\"top_nav app_hide\">", "</section>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<nav class=\"navbar navbar-expand-lg\">", "</nav>", [_vm._ssrNode("<div class=\"container-fluid\">", "</div>", [_c('nuxt-link', {
    staticClass: "navbar-brand",
    attrs: {
      "to": "/"
    }
  }, [_c('div', {
    staticClass: "logo_"
  }, [_c('img', {
    staticClass: "img-fluid",
    attrs: {
      "src": "/images/logo.png",
      "loading": "lazy",
      "alt": ""
    }
  })])]), _vm._ssrNode(" <button type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\" class=\"navbar-toggler\"><i class=\"fa-solid fa-bars\"></i></button> "), _vm._ssrNode("<div id=\"navbarSupportedContent\" class=\"collapse navbar-collapse\">", "</div>", [_vm._ssrNode("<ul class=\"navbar-nav ms-auto mb-2 mb-lg-0\">", "</ul>", [_vm._ssrNode("<li class=\"nav-item\"><a aria-current=\"page\" href=\"https://www.facebook.com/winup360\" target=\"_blank\" class=\"nav-link active\">Need Help? Contact\r\n                                            us\r\n                                        </a></li> "), _vm._ssrNode("<li class=\"nav-item\">", "</li>", [_c('nuxt-link', {
    staticClass: "nav-link active",
    attrs: {
      "aria-current": "page",
      "to": "/products"
    }
  }, [_c('div', {
    staticClass: "creadit_ticket"
  }, [_c('p', [_vm._v("Win Exclusive Price")]), _vm._v(" "), _c('h1', [_vm._v("PRODUCT")])])])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li class=\"nav-item\">", "</li>", [_c('nuxt-link', {
    staticClass: "nav-link active",
    attrs: {
      "to": "/winners",
      "aria-current": "page"
    }
  }, [_c('div', {
    staticClass: "creadit_ticket"
  }, [_c('p', [_vm._v("Win Exclusive Price")]), _vm._v(" "), _c('h1', [_vm._v("WINNERS")])])])], 1), _vm._ssrNode(" <li class=\"nav-item d-none\"><select name id><option value><img src=\"/images/flags/united-states-emoji-96.png\" loading=\"lazy\" alt class=\"img-fulid\">USDT</option> <option value>BDT</option></select></li> <li class=\"nav-item d-none\"><select name id><option value>English</option> <option value>Bengali</option></select></li> "), _vm._ssrNode("<li class=\"nav-item\">", "</li>", [_c('nuxt-link', {
    staticClass: "nav-link mobile_ position-relative",
    attrs: {
      "to": "/cart"
    }
  }, [_vm._v("\r\n                                            Cart\r\n                                            "), _c('span', {
    staticClass: "position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
  }, [_vm._v("\r\n                                                " + _vm._s(_vm.itemCounts) + "\r\n                                            ")])])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li class=\"nav-item\">", "</li>", [_c('nuxt-link', {
    staticClass: "nav-link",
    attrs: {
      "to": "/user/profile"
    }
  }, [_vm._v("My Dashboard")])], 1) : _vm._e(), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li class=\"nav-item\">", "</li>", [_vm._ssrNode("<a href=\"#\" class=\"nav-link\">Logout</a>")], 2) : _vm._ssrNode("<li class=\"nav-item\">", "</li>", [_c('nuxt-link', {
    staticClass: "nav-link",
    attrs: {
      "to": "/login"
    }
  }, [_vm._v("Register/Login")])], 1)], 2)])], 2)])])])])]), _vm._ssrNode(" "), _vm._ssrNode("<section class=\"mobile_header app_show\">", "</section>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<div class=\"header_button\">", "</div>", [_c('nuxt-link', {
    class: {
      'active': _vm.$route.path === '/'
    },
    attrs: {
      "to": "/"
    }
  }, [_c('div', {
    staticClass: "creadit_ticket"
  }, [_c('p', [_vm._v("Win Exclusive Price")]), _vm._v(" "), _c('h1', [_vm._v("Lottery")])])]), _vm._ssrNode(" "), _c('nuxt-link', {
    class: {
      'active': _vm.$route.path === '/products'
    },
    attrs: {
      "to": "/products"
    }
  }, [_c('div', {
    staticClass: "creadit_ticket"
  }, [_c('p', [_vm._v("Win Exclusive Price")]), _vm._v(" "), _c('h1', [_vm._v("PRODUCT")])])]), _vm._ssrNode(" "), _c('nuxt-link', {
    class: {
      'active': _vm.$route.path === '/winners'
    },
    attrs: {
      "to": "/winners"
    }
  }, [_c('div', {
    staticClass: "creadit_ticket"
  }, [_c('p', [_vm._v("Winner from last Draw")]), _vm._v(" "), _c('h1', [_vm._v("WINNERS")])])])], 2)])])])])], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/Navbar.vue?vue&type=template&id=07064a25&

// EXTERNAL MODULE: ./plugins/bus.js
var bus = __webpack_require__(33);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/Navbar.vue?vue&type=script&lang=js&

/* harmony default export */ var Navbarvue_type_script_lang_js_ = ({
  data() {
    return {
      cart: [],
      _itemCount: 0,
      itemCounts: 0
    };
  },
  mounted() {
    this.loadCart();
    bus["a" /* default */].$on('updateCart', updatedCart => {
      this.loadCart();
    });
  },
  computed: {
    loggedIn() {
      return this.$auth.loggedIn;
    },
    itemCount: {
      get() {
        return this._itemCount;
      },
      set(value) {
        this._itemCount = value;
      }
    }
  },
  methods: {
    redirectHomePages() {
      this.$router.push('/');
    },
    loadCart() {
      const savedCart = localStorage.getItem('cart');
      if (savedCart) {
        this.cart = JSON.parse(savedCart);
      }
      let itemCount = 0;
      this.cart.forEach(item => {
        itemCount += parseInt(item.quantity);
      });
      //console.log("Finally get total Cart" + itemCount);
      this.itemCounts = itemCount;
    },
    async logout() {
      await this.$auth.logout();
      localStorage.removeItem('jwtToken');
      this.$router.push('/');
    }
  }
});
// CONCATENATED MODULE: ./components/Navbar.vue?vue&type=script&lang=js&
 /* harmony default export */ var components_Navbarvue_type_script_lang_js_ = (Navbarvue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/Navbar.vue





/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  components_Navbarvue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "9d78f844"
  
)

/* harmony default export */ var Navbar = __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ 38:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/MobileMenu.vue?vue&type=template&id=940fe2c4&scoped=true&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', {
    staticStyle: {
      "position": "sticky",
      "bottom": "0",
      "width": "100%",
      "z-index": "5"
    }
  }, [_vm._ssrNode("<footer class=\"mobile_footer app_show\" style=\"position: unset;\" data-v-940fe2c4>", "</footer>", [_vm._ssrNode("<div class=\"container-fluid\" data-v-940fe2c4>", "</div>", [_vm._ssrNode("<div class=\"row\" data-v-940fe2c4>", "</div>", [_vm._ssrNode("<div class=\"col-md-12\" data-v-940fe2c4>", "</div>", [_vm._ssrNode("<div class=\"f_mnu\" data-v-940fe2c4>", "</div>", [_vm._ssrNode("<ul data-v-940fe2c4>", "</ul>", [_vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/'
  }) + " data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-home"
  })]), _vm._ssrNode(" <p data-v-940fe2c4>Home</p>")], 2), _vm._ssrNode(" "), _vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/user/ticket'
  }) + " data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/ticket"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-ticket"
  })]), _vm._ssrNode(" <p data-v-940fe2c4>Ticket</p>")], 2), _vm._ssrNode(" "), _vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/offer'
  }) + " data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/offer"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-gift"
  })]), _vm._ssrNode(" <p data-v-940fe2c4>Offers</p>")], 2), _vm._ssrNode(" "), _vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/cart'
  }) + " data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/cart"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-cart-shopping"
  })]), _vm._ssrNode(" <p data-v-940fe2c4>Cart</p> <span class=\"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger\" data-v-940fe2c4>" + _vm._ssrEscape("\r\n                                    " + _vm._s(_vm.itemCounts) + "\r\n                                ") + "</span>")], 2), _vm._ssrNode(" <li data-v-940fe2c4><a data-bs-toggle=\"offcanvas\" href=\"#mobile_menu\" role=\"button\" aria-controls=\"mobile_menu\" data-v-940fe2c4><i class=\"fa-solid fa-bars\" data-v-940fe2c4></i></a> <p data-v-940fe2c4>Menu</p></li>")], 2)])])])])]), _vm._ssrNode(" "), _vm._ssrNode("<div tabindex=\"-1\" id=\"mobile_menu\" aria-labelledby=\"mobile_menuLabel\" class=\"offcanvas offcanvas-start app_show\" data-v-940fe2c4>", "</div>", [_vm._ssrNode("<div class=\"offcanvas-header\" data-v-940fe2c4><h5 id=\"offcanvasExampleLabel\" class=\"offcanvas-title\" data-v-940fe2c4>Lottery</h5> <button type=\"button\" data-bs-dismiss=\"offcanvas\" aria-label=\"Close\" class=\"btn_close bg-transparent text-white\" data-v-940fe2c4><i class=\"fa-solid fa-x color-white\" style=\"color: #fff;\" data-v-940fe2c4></i></button></div> "), _vm._ssrNode("<div class=\"offcanvas-body\" style=\"height: 90%;overflow: auto;\" data-v-940fe2c4>", "</div>", [_vm._ssrNode("<div id=\"pills-tabContent\" class=\"tab-content\" data-v-940fe2c4>", "</div>", [_vm._ssrNode("<div class=\"profile_links\" data-v-940fe2c4>", "</div>", [_vm._ssrNode("<ul data-v-940fe2c4>", "</ul>", [_vm.loggedIn ? _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/profile"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-user"
  }), _vm._v("Personal\r\n                                    Details")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-user"
  }), _vm._v("Personal\r\n                                    Details")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/wishlist"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-heart"
  }), _vm._v("Wishlist")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-heart"
  }), _vm._v("Wishlist")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/wallet"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-dollar-sign"
  }), _vm._v("Wallet")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-dollar-sign"
  }), _vm._v("Wallet")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/offer"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gift"
  }), _vm._v("Offer")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gift"
  }), _vm._v("Offer")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/ticket"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-ticket"
  }), _vm._v("Active Ticket")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-ticket"
  }), _vm._v("Active Ticket")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/payment"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-regular fa-credit-card"
  }), _vm._v("Payment Option ")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-regular fa-credit-card"
  }), _vm._v("Payment Option ")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/settings"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gear"
  }), _vm._v("Settings")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gear"
  }), _vm._v("Settings")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/notification"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-bell"
  }), _vm._v("Notifications")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-bell"
  }), _vm._v("Notifications")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_vm._ssrNode("<a href=\"#\" data-v-940fe2c4><span data-v-940fe2c4><strong class=\"fa-solid fa-right-from-bracket\" data-v-940fe2c4></strong>Logout</span></a>")], 2) : _vm._ssrNode("<li data-v-940fe2c4>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-right-from-bracket"
  }), _vm._v("Login/Register")])])], 1)], 2)])])])], 2)], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/MobileMenu.vue?vue&type=template&id=940fe2c4&scoped=true&

// EXTERNAL MODULE: ./plugins/bus.js
var bus = __webpack_require__(33);

// EXTERNAL MODULE: external "axios"
var external_axios_ = __webpack_require__(4);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/MobileMenu.vue?vue&type=script&lang=js&


/* harmony default export */ var MobileMenuvue_type_script_lang_js_ = ({
  data() {
    return {
      //loggedIn: false,
      cart: [],
      _itemCount: 0,
      itemCounts: 0
    };
  },
  computed: {
    loggedIn() {
      return this.$auth.loggedIn;
    },
    itemCount: {
      get() {
        return this._itemCount;
      },
      set(value) {
        this._itemCount = value;
      }
    }
  },
  mounted() {
    this.loadCart();
    bus["a" /* default */].$on('updateCart', updatedCart => {
      this.loadCart();
    });
  },
  methods: {
    loadCart() {
      const savedCart = localStorage.getItem('cart');
      if (savedCart) {
        this.cart = JSON.parse(savedCart);
      }
      let itemCount = 0;
      this.cart.forEach(item => {
        itemCount += parseInt(item.quantity);
      });
      console.log("Finally get total Cart" + itemCount);
      this.itemCounts = itemCount;
    },
    async logout() {
      await this.$auth.logout();
      localStorage.removeItem('jwtToken');
      this.$router.push('/');
    }
  }
});
// CONCATENATED MODULE: ./components/MobileMenu.vue?vue&type=script&lang=js&
 /* harmony default export */ var components_MobileMenuvue_type_script_lang_js_ = (MobileMenuvue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/MobileMenu.vue



function injectStyles (context) {
  
  var style0 = __webpack_require__(35)
if (style0.__inject__) style0.__inject__(context)

}

/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  components_MobileMenuvue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  injectStyles,
  "940fe2c4",
  "395de56f"
  
)

/* harmony default export */ var MobileMenu = __webpack_exports__["default"] = (component.exports);

/* nuxt-component-imports */
installComponents(component, {Footer: __webpack_require__(32).default})


/***/ }),

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

/***/ 52:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/MainSlider.vue?vue&type=template&id=0781afcf&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<section class=\"main_slider\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-12\"><div class=\"swiper main_slider_box\"><div class=\"swiper-wrapper\">" + (_vm.loading ? "<span><div class=\"d-flex justify-content-center\"><div role=\"status\" class=\"spinner-border\"><span class=\"visually-hidden\">Loading...</span></div></div></span>" : "<!---->") + " " + _vm._ssrList(_vm.products, function (item, index) {
    return "<div class=\"swiper-slide\"><div class=\"slide_box\"><img" + _vm._ssrAttr("src", item.images) + " loading=\"lazy\" alt class=\"img-fulid\"></div></div>";
  }) + "</div> <div class=\"navi_op\"><div class=\"swiper-button-next\"></div> <div class=\"swiper-button-prev\"></div></div></div></div></div></div></section>")]);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/MainSlider.vue?vue&type=template&id=0781afcf&

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/MainSlider.vue?vue&type=script&lang=js&
/* harmony default export */ var MainSlidervue_type_script_lang_js_ = ({
  data() {
    return {
      loading: false,
      products: []
    };
  },
  mounted() {
    this.mainSlider();
    this.$nextTick(() => {
      this.initCarousel();
    });
  },
  methods: {
    async mainSlider() {
      try {
        this.loading = true; // Show loader
        const response = await this.$axios.get('/unauthenticate/slidersImages');
        this.products = response.data;
        // Handle other logic related to products if needed
      } catch (error) {
        console.error('Error fetching sellingFast:', error);
        // Handle error if needed
      } finally {
        this.loading = false; // Hide loader after response or error
      }
    },

    initCarousel() {
      // Main slider box
      new Swiper(".main_slider_box", {
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev"
        },
        spaceBetween: 10
      });
    }
  }
});
// CONCATENATED MODULE: ./components/MainSlider.vue?vue&type=script&lang=js&
 /* harmony default export */ var components_MainSlidervue_type_script_lang_js_ = (MainSlidervue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/MainSlider.vue





/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  components_MainSlidervue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "d1235870"
  
)

/* harmony default export */ var MainSlider = __webpack_exports__["default"] = (component.exports);

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


/***/ }),

/***/ 54:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/ExploreCampain.vue?vue&type=template&id=391b202e&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<section class=\"campain_sec\">", "</section>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<div class=\"campain_list\">", "</div>", [_vm._ssrNode("<h4>Explore campaigns</h4> "), _vm._ssrNode("<ul>", "</ul>", [_vm.loading ? _vm._ssrNode("<span>", "</span>", [_c('Loader')], 1) : _vm._e(), _vm._ssrNode(" " + (_vm.imgloading ? "<div class=\"loader text-center fade show\"><div role=\"status\" class=\"spinner-border text-success\"><span class=\"visually-hidden\">Loading...</span></div></div>" : "<!---->") + " "), _vm._l(_vm.prouducts, function (item, index) {
    return _vm._ssrNode("<li>", "</li>", [_vm._ssrNode("<div class=\"campain_box\">", "</div>", [_vm._ssrNode("<div class=\"available_ticket\"><div class=\"sold\"><h6>" + _vm._ssrEscape(_vm._s(item.total_selling)) + "</h6> <p>Sold</p></div> <div class=\"total\"><p>Out of</p> <h6>" + _vm._ssrEscape(_vm._s(item.total_tickets)) + "</h6></div></div> "), _vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-5\"><div class=\"c_campain_left\"><div class=\"camp_count\"><div>" + _vm._ssrEscape("BDT " + _vm._s(item.price) + "Tk.") + "</div></div> <div class=\"campain_image\"><div class=\"swiper campain_s\"><div class=\"swiper-wrapper\"><div class=\"swiper-slide\"><img" + _vm._ssrAttr("src", item.thumnail) + " loading=\"lazy\" alt class=\"img-fulid\"></div></div></div></div> <div class=\"c_price\"><div class=\"creadit_ticket\"><p>Lottery Creadit</p> <h1>" + _vm._ssrEscape("BDT" + _vm._s(item.price) + "TK.") + "</h1></div></div></div></div> "), _vm._ssrNode("<div class=\"col-md-7\">", "</div>", [_vm._ssrNode("<div class=\"c_content_right\">", "</div>", [_vm._ssrNode("<div class=\"c_content_box\">", "</div>", [_vm._ssrNode("<h1>Win</h1> <h2>" + _vm._ssrEscape(_vm._s(item.name)) + "</h2> "), _vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<div class=\"d-flex\">", "</div>", [_c('nuxt-link', {
      attrs: {
        "to": `/product-details/${item.slug}`
      }
    }, [_vm._v("View Details")]), _vm._ssrNode(" " + (item.stock_status == 1 ? "<button type=\"button\">Add to cart</button>" : "<button type=\"button\">Stock Out</button>"))], 2)]), _vm._ssrNode(" <div class=\"col-md-12\">" + _vm._ssrEscape("\r\n                                                            " + _vm._s(item.description) + "\r\n                                                        ") + "</div>")], 2)], 2), _vm._ssrNode(" <div class=\"button_\">" + (_vm.loggedIn ? "<span><button type=\"button\" class=\"btn_share active\"><i class=\"fa-solid fa-heart\"></i></button></span>" : "<span><button type=\"button\" class=\"btn_share active\"><i class=\"fa-solid fa-heart\"></i></button></span>") + " <button type=\"button\" class=\"btn_share share_btn\"><i class=\"fa-solid fa-share\"></i></button></div>")], 2)])], 2)], 2)]);
  })], 2)], 2)])])])]), _vm._ssrNode(" <div class=\"details_modal\"><div class=\"m_content_\"><div class=\"d-flex justify-content-between\"><ul id=\"pills-tab\" role=\"tablist\" class=\"nav nav-pills tb_btns tb_btns mb-3\"><li role=\"presentation\" class=\"nav-item tb_btns_left\"><button id=\"pills-home-tab\" data-bs-toggle=\"pill\" data-bs-target=\"#pills-prize\" type=\"button\" role=\"tab\" aria-controls=\"pills-home\" aria-selected=\"true\" class=\"nav-link active\">Product Details </button></li></ul> <button type=\"button\" class=\"btn_mclose\"><i class=\"fa-solid fa-x\"></i></button></div> <div id=\"pills-tabContent\" class=\"tab-content\"><div id=\"pills-prize\" role=\"tabpanel\" aria-labelledby=\"pills-home-tab\" tabindex=\"0\" class=\"tab-pane p_details fade show active\"><p id=\"description\"></p></div></div></div></div> "), _vm._ssrNode("<div class=\"login_modal\">", "</div>", [_vm._ssrNode("<div class=\"main_content\">", "</div>", [_vm._ssrNode("<div class=\"log_regi\">", "</div>", [_vm._ssrNode("<button class=\"cls_mdal\"><i class=\"fa-solid fa-x\"></i></button> "), _vm._ssrNode("<div class=\"login_section\">", "</div>", [_c('center', [_c('span', {
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
  }, [_vm._v("Register")])])])], 1)]), _vm._ssrNode(" <div class=\"col-12 px-0\"><div class=\"input-container text-end\"><input value=\"Login\" type=\"submit\" class=\"btn_submit w-100\"><br><br></div></div>")], 2)], 2)], 2)], 2)], 2)])]), _vm._ssrNode(" <div class=\"modal_share\"><div class=\"popup\"><header><span>Share With </span> <div class=\"close\"><i class=\"fa-solid fa-x\"></i></div></header> <div class=\"content\"><p>Share this link via</p> <ul class=\"icons\"><a href=\"#\"><i class=\"fab fa-facebook-f\"></i></a> <a href=\"#\"><i class=\"fab fa-twitter\"></i></a> <a href=\"#\"><i class=\"fab fa-whatsapp\"></i></a> <a href=\"#\"><i class=\"fab fa-telegram-plane\"></i></a></ul> <p>Or copy link</p> <div class=\"field\"><i class=\"url-icon uil uil-link\"></i> <input type=\"text\" readonly=\"readonly\" id=\"myInput\" value=\"https://winup360.com/\"> <button onclick=\"copy()\" id=\"change_txt\">Copy</button></div></div></div></div>")], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/ExploreCampain.vue?vue&type=template&id=391b202e&

// EXTERNAL MODULE: ./plugins/bus.js
var bus = __webpack_require__(33);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/ExploreCampain.vue?vue&type=script&lang=js&

/* harmony default export */ var ExploreCampainvue_type_script_lang_js_ = ({
  data() {
    return {
      category_id: '',
      loading: false,
      cart: [],
      prouducts: [],
      itemCount: 0,
      updatedQuantity: 0,
      imgloading: true,
      login: {
        email: '',
        password: ''
      },
      showPassword: false,
      invaliderror: '',
      notifmsg: '',
      errors: {}
    };
  },
  mounted() {
    setTimeout(() => {
      this.onlyloadingTicket();
      this.imgloading = false;
    }, 1000); //
  },

  computed: {
    loggedIn() {
      return this.$auth.loggedIn;
    }
  },
  methods: {
    showhidePassword() {
      this.showPassword = !this.showPassword;
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

    async onlyloadingTicket() {
      const response = await this.$axios.get('/unauthenticate/getTickets');
      this.prouducts = response.data.tickets;
      this.category_id = response.data.category_id;
      //console.log("tickets: " +  response.data);
    },

    addtoCart(product) {
      this.loading = true;
      // const cart = JSON.parse(localStorage.getItem('cart')) || [];
      const existingProduct = this.cart.find(item => item.id === product.id);
      if (existingProduct) {
        existingProduct.quantity += 1;
      } else {
        // this.cart.push({
        //     ...product,
        //     quantity: 1
        // });
        if (this.category_id === 27) {
          this.cart.push({
            ...product,
            category_id: this.category_id,
            ticketprice: product.price,
            thumnail_img: product.thumnail,
            addi_pname: '',
            addi_thumnail: '',
            ticket_qty: 1,
            quantity: 1
          });
        } else {
          this.cart.push({
            ...product,
            size: this.choose_size,
            category_id: this.category_id,
            quantity: 1
          });
        }
      }
      // Merge with existing data if any
      const existingData = JSON.parse(localStorage.getItem('cart')) || [];
      const newData = [...existingData, ...this.cart];
      localStorage.setItem('cart', JSON.stringify(newData));
      bus["a" /* default */].$emit("updateCart", newData);
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
    hideDetails() {
      $(".details_modal").fadeOut();
    },
    shareBtn() {
      $(".modal_share").fadeIn();
    },
    shareBtnCls() {
      $(".modal_share").fadeOut();
    },
    loginPopup() {
      $(".login_modal").fadeIn();
    },
    closePopup() {
      $(".login_modal").fadeOut();
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
installComponents(component, {Loader: __webpack_require__(42).default})


/***/ }),

/***/ 55:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/Banner.vue?vue&type=template&id=6bd37461&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<section class=\"banner\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-6\"><div class=\"banner_img\"><a href=\"#\"><img src=\"/images/desktop-small-banner-tesla-opti.png\" loading=\"lazy\" alt class=\"img-fulid\"></a></div></div> <div class=\"col-md-6\"><div class=\"bonus_section\"><div><h5>Get 10% Extra <br>on Binance top-up</h5> <a href=\"#\">Topup</a></div></div></div></div></div></section>")]);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/Banner.vue?vue&type=template&id=6bd37461&

// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/Banner.vue

var script = {}


/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  script,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "ff320e0c"
  
)

/* harmony default export */ var Banner = __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ 97:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./pages/index.vue?vue&type=template&id=1e274bd5&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_c('Navbar'), _vm._ssrNode(" "), _c('MainSlider'), _vm._ssrNode(" "), _c('SellingFastSlider'), _vm._ssrNode(" "), _c('Banner'), _vm._ssrNode(" "), _c('ExploreCampain'), _vm._ssrNode(" "), _c('Footer'), _vm._ssrNode(" "), _c('MobileMenu'), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<span>", "</span>", [_c('nuxt-link', {
    staticClass: "bell_message",
    attrs: {
      "to": "/user/message"
    }
  }, [_c('span', {
    staticClass: "position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle"
  }), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-bell"
  })])], 1) : _vm._e(), _vm._ssrNode(" <div class=\"modal_share\"><div class=\"popup\"><header><span>Share With </span> <div class=\"close\"><i class=\"fa-solid fa-x\"></i></div></header> <div class=\"content\"><p>Share this link via</p> <ul class=\"icons\"><a href=\"https://www.facebook.com/winup360\" target=\"_blank\"><i class=\"fab fa-facebook-f\"></i></a> <a href=\"#\"><i class=\"fab fa-twitter\"></i></a> <a href=\"#\"><i class=\"fab fa-whatsapp\"></i></a> <a href=\"#\"><i class=\"fab fa-telegram-plane\"></i></a></ul> <p>Or copy link</p> <div class=\"field\"><i class=\"url-icon uil uil-link\"></i> <input type=\"text\" readonly=\"readonly\" id=\"myInput\" value=\"https://winup360.com/\"> <button onclick=\"copy()\" id=\"change_txt\">Copy</button></div></div></div></div>")], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./pages/index.vue?vue&type=template&id=1e274bd5&

// EXTERNAL MODULE: ./plugins/bus.js
var bus = __webpack_require__(33);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./pages/index.vue?vue&type=script&lang=js&

/* harmony default export */ var lib_vue_loader_options_pagesvue_type_script_lang_js_ = ({
  data() {
    return {
      cart: [],
      _itemCount: 0,
      itemCounts: 0
    };
  },
  mounted() {
    this.loadCart();
    bus["a" /* default */].$on('updateCart', updatedCart => {
      this.loadCart();
    });
  },
  computed: {
    loggedIn() {
      return this.$auth.loggedIn;
    },
    itemCount: {
      get() {
        return this._itemCount;
      },
      set(value) {
        this._itemCount = value;
      }
    }
  },
  methods: {
    closepopup() {
      $(".modal_share").fadeOut();
    },
    loadCart() {
      const savedCart = localStorage.getItem('cart');
      if (savedCart) {
        this.cart = JSON.parse(savedCart);
      }
      let itemCount = 0;
      this.cart.forEach(item => {
        itemCount += parseInt(item.quantity);
      });
      //console.log("Finally get total Cart" + itemCount);
      this.itemCounts = itemCount;
    },
    cartLink() {
      $(".cart_link p").fadeIn();
    }
  }
});
// CONCATENATED MODULE: ./pages/index.vue?vue&type=script&lang=js&
 /* harmony default export */ var pagesvue_type_script_lang_js_ = (lib_vue_loader_options_pagesvue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./pages/index.vue





/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  pagesvue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "6b13d0e2"
  
)

/* harmony default export */ var pages = __webpack_exports__["default"] = (component.exports);

/* nuxt-component-imports */
installComponents(component, {Navbar: __webpack_require__(37).default,MainSlider: __webpack_require__(52).default,SellingFastSlider: __webpack_require__(53).default,Banner: __webpack_require__(55).default,ExploreCampain: __webpack_require__(54).default,Footer: __webpack_require__(32).default,MobileMenu: __webpack_require__(38).default})


/***/ })

};;
//# sourceMappingURL=index.js.map