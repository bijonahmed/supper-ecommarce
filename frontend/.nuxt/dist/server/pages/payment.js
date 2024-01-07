exports.ids = [25,3,6,8,9];
exports.modules = {

/***/ 32:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/Footer.vue?vue&type=template&id=9ee376dc&
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
  }, [_vm._v("Contact Us")])], 1), _vm._ssrNode(" <li><a href=\"#\">How it is work</a></li>")], 2)], 2)], 2)])]), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"col-md-6\">", "</div>", [_vm._ssrNode("<div class=\"social\"><a href=\"https://www.facebook.com/winup360\" target=\"_blank\"><i class=\"fa-brands fa-facebook-f\"></i></a></div> "), _vm._ssrNode("<div class=\"app_link\">", "</div>", [_vm._ssrNode("<p>Download the WINUP360 app for the ultimate shopping experience!</p> "), _vm._ssrNode("<div class=\"d-flex justify-content-center\">", "</div>", [_c('nuxt-link', {
    attrs: {
      "to": "/download-app"
    }
  }, [_c('img', {
    staticClass: "img-fulid",
    attrs: {
      "src": "/images/Play.png",
      "loading": "lazy",
      "alt": ""
    }
  })]), _vm._ssrNode(" "), _c('nuxt-link', {
    attrs: {
      "to": "/download-app"
    }
  }, [_c('img', {
    staticClass: "img-fulid",
    attrs: {
      "src": "/images/Apple.png",
      "loading": "lazy",
      "alt": ""
    }
  })])], 2)], 2)], 2)], 2)]), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"copyright_section\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-6\">", "</div>", [_vm._ssrNode("<div class=\"copyright_text\">", "</div>", [_vm._ssrNode("<p>© Copyright 2024 <strong style=\"color: #aded28;\">winup360</strong>. All Rights Reserved.</p> "), _vm._ssrNode("<ul>", "</ul>", [_vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
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

// CONCATENATED MODULE: ./components/Footer.vue?vue&type=template&id=9ee376dc&

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
  add("2f65ed74", content, true, context)
};

/***/ }),

/***/ 35:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_4f061c40_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(34);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_4f061c40_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_4f061c40_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_4f061c40_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_4f061c40_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));


/***/ }),

/***/ 36:
/***/ (function(module, exports, __webpack_require__) {

// Imports
var ___CSS_LOADER_API_IMPORT___ = __webpack_require__(8);
var ___CSS_LOADER_EXPORT___ = ___CSS_LOADER_API_IMPORT___(function(i){return i[1]});
// Module
___CSS_LOADER_EXPORT___.push([module.i, ".mobile_footer[data-v-4f061c40]{bottom:0;padding:10px 0;position:fixed;width:100%;z-index:1000}.active[data-v-4f061c40]{color:#007bff}", ""]);
// Exports
___CSS_LOADER_EXPORT___.locals = {};
module.exports = ___CSS_LOADER_EXPORT___;


/***/ }),

/***/ 37:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/Navbar.vue?vue&type=template&id=84658666&
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
  }, [_c('img', {
    staticClass: "img-fluid",
    staticStyle: {
      "padding": "2px"
    },
    attrs: {
      "src": "/images/logoudpate.png",
      "loading": "lazy",
      "alt": ""
    }
  })]), _vm._ssrNode(" "), _c('nuxt-link', {
    class: {
      'active': _vm.$route.path === '/products'
    },
    attrs: {
      "to": "/products"
    }
  }, [_c('img', {
    staticClass: "img-fluid",
    attrs: {
      "src": "/images/product_icon.png",
      "loading": "lazy",
      "alt": ""
    }
  })]), _vm._ssrNode(" "), _c('nuxt-link', {
    class: {
      'active': _vm.$route.path === '/winners'
    },
    attrs: {
      "to": "/winners"
    }
  }, [_c('img', {
    staticClass: "img-fluid",
    attrs: {
      "src": "/images/winners_icon.png",
      "loading": "lazy",
      "alt": ""
    }
  })])], 2)])])])])], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/Navbar.vue?vue&type=template&id=84658666&

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

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/MobileMenu.vue?vue&type=template&id=4f061c40&scoped=true&
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
  }, [_vm._ssrNode("<footer class=\"mobile_footer app_show\" style=\"position: unset;\" data-v-4f061c40>", "</footer>", [_vm._ssrNode("<div class=\"container-fluid\" data-v-4f061c40>", "</div>", [_vm._ssrNode("<div class=\"row\" data-v-4f061c40>", "</div>", [_vm._ssrNode("<div class=\"col-md-12\" data-v-4f061c40>", "</div>", [_vm._ssrNode("<div class=\"f_mnu\" data-v-4f061c40>", "</div>", [_vm._ssrNode("<ul data-v-4f061c40>", "</ul>", [_vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/'
  }) + " data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-home"
  })]), _vm._ssrNode(" <p data-v-4f061c40>Home</p>")], 2), _vm._ssrNode(" "), _vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/user/ticket'
  }) + " data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/ticket"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-ticket"
  })]), _vm._ssrNode(" <p data-v-4f061c40>Ticket</p>")], 2), _vm._ssrNode(" "), _vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/offer'
  }) + " data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/offer"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-gift"
  })]), _vm._ssrNode(" <p data-v-4f061c40>Offers</p>")], 2), _vm._ssrNode(" "), _vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/cart'
  }) + " data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/cart"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-cart-shopping"
  })]), _vm._ssrNode(" <p data-v-4f061c40>Cart</p> <span class=\"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger\" data-v-4f061c40>" + _vm._ssrEscape("\r\n                                    " + _vm._s(_vm.itemCounts) + "\r\n                                ") + "</span>")], 2), _vm._ssrNode(" <li data-v-4f061c40><a data-bs-toggle=\"offcanvas\" href=\"#mobile_menu\" role=\"button\" aria-controls=\"mobile_menu\" data-v-4f061c40><i class=\"fa-solid fa-bars\" data-v-4f061c40></i></a> <p data-v-4f061c40>Menu</p></li>")], 2)])])])])]), _vm._ssrNode(" "), _vm._ssrNode("<div tabindex=\"-1\" id=\"mobile_menu\" aria-labelledby=\"mobile_menuLabel\" class=\"offcanvas offcanvas-start app_show\" data-v-4f061c40>", "</div>", [_vm._ssrNode("<div class=\"offcanvas-header\" data-v-4f061c40><h5 id=\"offcanvasExampleLabel\" class=\"offcanvas-title\" data-v-4f061c40>WINUP360</h5> <button type=\"button\" data-bs-dismiss=\"offcanvas\" aria-label=\"Close\" class=\"btn_close bg-transparent text-white\" data-v-4f061c40><i class=\"fa-solid fa-x color-white\" style=\"color: #fff;\" data-v-4f061c40></i></button></div> "), _vm._ssrNode("<div class=\"offcanvas-body\" style=\"height: 90%;overflow: auto;\" data-v-4f061c40>", "</div>", [_vm._ssrNode("<div id=\"pills-tabContent\" class=\"tab-content\" data-v-4f061c40>", "</div>", [_vm._ssrNode("<div class=\"profile_links\" data-v-4f061c40>", "</div>", [_vm._ssrNode("<ul data-v-4f061c40>", "</ul>", [_vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/profile"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-user"
  }), _vm._v("Personal\r\n                                    Details")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-user"
  }), _vm._v("Personal\r\n                                    Details")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/orderlist"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-brands fa-product-hunt"
  }), _vm._v("Order")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-brands fa-product-hunt"
  }), _vm._v("Order")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/wishlist"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-heart"
  }), _vm._v("Wishlist")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-heart"
  }), _vm._v("Wishlist")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/wallet"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-dollar-sign"
  }), _vm._v("Wallet")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-dollar-sign"
  }), _vm._v("Wallet")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/offer"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gift"
  }), _vm._v("Offer")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gift"
  }), _vm._v("Offer")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/ticket"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-ticket"
  }), _vm._v("Active Ticket")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-ticket"
  }), _vm._v("Active Ticket")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/payment"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-regular fa-credit-card"
  }), _vm._v("Payment Option ")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-regular fa-credit-card"
  }), _vm._v("Payment Option ")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/settings"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gear"
  }), _vm._v("Settings")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gear"
  }), _vm._v("Settings")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/notification"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-bell"
  }), _vm._v("Notifications")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-bell"
  }), _vm._v("Notifications")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_vm._ssrNode("<a href=\"#\" data-v-4f061c40><span data-v-4f061c40><strong class=\"fa-solid fa-right-from-bracket\" data-v-4f061c40></strong>Logout</span></a>")], 2) : _vm._ssrNode("<li data-v-4f061c40>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-right-from-bracket"
  }), _vm._v("Login/Register")])])], 1)], 2)])])])], 2)], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/MobileMenu.vue?vue&type=template&id=4f061c40&scoped=true&

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
  "4f061c40",
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

/***/ 78:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./pages/payment.vue?vue&type=template&id=253f3c8b&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_c('Navbar'), _vm._ssrNode(" "), _vm._ssrNode("<section class=\"about_\">", "</section>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<section class=\"payment_opsection\">", "</section>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<div class=\"pay_options\">", "</div>", [_vm.loading ? _vm._ssrNode("<span>", "</span>", [_c('Loader')], 1) : _vm._e(), _vm._ssrNode(" <div class=\"pay_option\"><a href=\"javascript:\"><h6>Credit/Debit Cards</h6> <img src=\"/images/cards.png\" loading=\"lazy\" alt class=\"cards_pic img-fulid\"></a></div> <div class=\"pay_method_img\"><a href=\"javascript:\" class=\"bkash_op\"><img src=\"/images/Bkash.png\" loading=\"lazy\" alt class=\"cards_pic img-fulid\"></a></div> <div class=\"pay_method_img\"><a href=\"javascript:\" class=\"nogot_pop\"><img src=\"/images/nogot.png\" loading=\"lazy\" alt class=\"cards_pic img-fulid\"></a></div> <div class=\"pay_method_img\"><a href=\"javascript:\" class=\"roket_pop\"><img src=\"/images/Roket.png\" loading=\"lazy\" alt class=\"cards_pic img-fulid\"></a></div> <div class=\"pay_method_img\"><a href=\"javascript:\" class=\"upay_pop\"><img src=\"/images/Upay.png\" loading=\"lazy\" alt class=\"cards_pic img-fulid\"></a></div>")], 2)])])])])])]), _vm._ssrNode(" <div class=\"pop_cards pay_pop\"><div class=\"content_section\"><div class=\"pop_head\"><button class=\"btn-close px-3 ms-auto\"></button></div> <div><h1 class=\"text-center\" style=\"color:black\">Upcoming.....</h1></div> <div class=\"pop_footer\"><img src=\"images/logo.png\" loading=\"lazy\" alt class=\"img-fluid\"></div></div></div> <div class=\"pop_bkash pay_pop\"><div class=\"content_section\"><div class=\"text-end\" style=\"background-color: #ecf9ff;\"></div> <div class=\"pop_head\"><img src=\"images/Bkash.png\" loading=\"lazy\" alt class=\"img-fluid logo_img\"> <button class=\"btn-close px-3 ms-auto\"></button></div> <div class=\"a_details\"><form id=\"userSubmitFrm\" enctype=\"multipart/form-data\" class=\"forms-sample\"><ul><li><h6>Account Number:</h6> <div class=\"ac_n\"><div class=\"position-relative\"><p id=\"copyText1\">" + _vm._ssrEscape(_vm._s(_vm.bkash_number)) + "</p> <p class=\"c_txt position-absolute\">Copy</p></div> <button type=\"button\" class=\"btn_copy\"><i class=\"fa-regular fa-copy\"></i></button></div></li> <li><h6>Total Payable Amount: </h6> <h1><strong style=\"color: #aded28;\">" + _vm._ssrEscape(_vm._s(_vm.payableamount)) + "</strong>TK </h1></li> <div class=\"trx_img\"><p>How to get Trx Id?</p> <img src=\"/images/transection_image.png\" loading=\"lazy\" alt class=\"img-fluid\"></div> <li><h6>Trx ID: </h6> <div><p style=\"color: #aded28; font-size: 12px;\">Trx Id Is Required</p> <div class=\"d-flex align-items-center\"><input type=\"text\" id=\"txtid\" placeholder=\"Enter Transection Id\"" + _vm._ssrAttr("value", _vm.orderData.txtid) + "></div> " + (_vm.errors.txtid ? "<span class=\"text-black\">" + _vm._ssrEscape(_vm._s(_vm.errors.txtid[0])) + "</span>" : "<!---->") + "</div></li> <div class=\"text-center\"><button type=\"submit\" class=\"btn_submit\">Confirm Order</button></div></ul></form></div> <div class=\"pop_footer\"><img src=\"images/logo.png\" loading=\"lazy\" alt class=\"img-fluid\"></div></div></div> <div class=\"pop_nogot pay_pop\"><div class=\"content_section\"><div class=\"text-end\" style=\"background-color: #ecf9ff;\"></div> <div class=\"pop_head\"><img src=\"images/nogot.png\" loading=\"lazy\" alt class=\"img-fluid logo_img\"> <button class=\"btn-close px-3 ms-auto\"></button></div> <div class=\"a_details\"><form id=\"userSubmitFrm\" enctype=\"multipart/form-data\" class=\"forms-sample\"><ul><li><h6>Account Number:</h6> <div class=\"ac_n\"><div class=\"position-relative\"><p id=\"copyText2\">" + _vm._ssrEscape(_vm._s(_vm.nagad_number)) + "</p> <p class=\"c_txt position-absolute\">Copy</p></div> <button type=\"button\" class=\"btn_copy\"><i class=\"fa-regular fa-copy\"></i></button></div></li> <li><h6>Total Payable Ammount: </h6> <h1><strong style=\"color: #aded28;\">" + _vm._ssrEscape(_vm._s(_vm.payableamount)) + "</strong>TK </h1></li> <div class=\"trx_img\">\r\n                                How to get Trx Id?\r\n                                <img src=\"images/transection_image.png\" loading=\"lazy\" alt class=\"img-fluid\"></div> <li><h6>Trx ID: </h6> <div><p style=\"color: #aded28; font-size: 12px;\">Trx Id Is Required</p> <div class=\"d-flex align-items-center\"><input type=\"text\" id=\"txtid\" placeholder=\"Enter Transection Id\"" + _vm._ssrAttr("value", _vm.orderData.txtid) + "></div> " + (_vm.errors.txtid ? "<span class=\"text-black\">" + _vm._ssrEscape(_vm._s(_vm.errors.txtid[0])) + "</span>" : "<!---->") + "</div></li> <div class=\"text-center\"><button type=\"submit\" class=\"btn_submit\">Confirm Order</button></div></ul></form></div> <div class=\"pop_footer\"><img src=\"images/logo.png\" loading=\"lazy\" alt class=\"img-fluid\"></div></div></div> <div class=\"pop_roket pay_pop\"><div class=\"content_section\"><div class=\"text-end\" style=\"background-color: #ecf9ff;\"></div> <div class=\"pop_head\"><img src=\"images/Roket.png\" loading=\"lazy\" alt class=\"img-fluid logo_img\"> <button class=\"btn-close px-3 ms-auto\"></button></div> <div class=\"a_details\"><form id=\"userSubmitFrm\" enctype=\"multipart/form-data\" class=\"forms-sample\"><ul><li><h6>Account Number:</h6> <div class=\"ac_n\"><div class=\"position-relative\"><p id=\"copyText3\">" + _vm._ssrEscape(_vm._s(_vm.rocket_number)) + "</p> <p class=\"c_txt position-absolute\">Copy</p></div> <button type=\"button\" class=\"btn_copy\"><i class=\"fa-regular fa-copy\"></i></button></div></li> <li><h6>Total Payable Ammount: </h6> <h1><strong style=\"color: #aded28;\">" + _vm._ssrEscape(_vm._s(_vm.payableamount)) + "</strong>TK </h1></li> <div class=\"trx_img\"><img src=\"images/transection_image.png\" loading=\"lazy\" alt class=\"img-fluid\"></div> <li><h6>Trx ID: </h6> <div><p style=\"color: #aded28; font-size: 12px;\">Trx Id Is Required</p> <div class=\"d-flex align-items-center\"><input type=\"text\" id=\"txtid\" placeholder=\"Enter Transection Id\"" + _vm._ssrAttr("value", _vm.orderData.txtid) + "></div> " + (_vm.errors.txtid ? "<span class=\"text-black\">" + _vm._ssrEscape(_vm._s(_vm.errors.txtid[0])) + "</span>" : "<!---->") + "</div></li> <div class=\"text-center\"><button type=\"submit\" class=\"btn_submit\">Confirm Order</button></div></ul></form></div> <div class=\"pop_footer\"><img src=\"images/logo.png\" loading=\"lazy\" alt class=\"img-fluid\"></div></div></div> <div class=\"pop_upay pay_pop\"><div class=\"content_section\"><div class=\"text-end\" style=\"background-color: #ecf9ff;\"></div> <div class=\"pop_head\"><img src=\"images/Upay.png\" loading=\"lazy\" alt class=\"img-fluid logo_img\"> <button class=\"btn-close px-3 ms-auto\"></button></div> <div class=\"a_details\"><form id=\"userSubmitFrm\" enctype=\"multipart/form-data\" class=\"forms-sample\"><ul><li><h6>Account Number:</h6> <div class=\"ac_n\"><div class=\"position-relative\"><p id=\"copyText4\">" + _vm._ssrEscape(_vm._s(_vm.upay_number)) + "</p> <p class=\"c_txt position-absolute\">Copy</p></div> <button type=\"button\" class=\"btn_copy\"><i class=\"fa-regular fa-copy\"></i></button></div></li> <li><h6>Total Payable Ammount: </h6> <h1><strong style=\"color: #aded28;\">" + _vm._ssrEscape(_vm._s(_vm.payableamount)) + "</strong>TK </h1></li> <div class=\"trx_img\"><a data-bs-toggle=\"collapse\" href=\"#collapseExample\" role=\"button\" aria-expanded=\"false\" aria-controls=\"collapseExample\">How to get Trx Id?</a> <img src=\"/images/transection_image.png\" loading=\"lazy\" alt class=\"img-fluid\"></div> <li><h6>Trx ID: </h6> <div><p style=\"color: #aded28; font-size: 12px;\">Trx Id Is Required</p> <div class=\"d-flex align-items-center\"><input type=\"text\" id=\"txtid\" placeholder=\"Enter Transection Id\"" + _vm._ssrAttr("value", _vm.orderData.txtid) + "></div> " + (_vm.errors.txtid ? "<span class=\"text-black\">" + _vm._ssrEscape(_vm._s(_vm.errors.txtid[0])) + "</span>" : "<!---->") + "</div></li> <div class=\"text-center\"><button type=\"submit\" class=\"btn_submit\">Confirm Order</button></div></ul></form></div> <div class=\"pop_footer\"><img src=\"images/logo.png\" loading=\"lazy\" alt class=\"img-fluid\"></div></div></div>")], 2), _vm._ssrNode(" "), _c('Footer'), _vm._ssrNode(" "), _c('MobileMenu')], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./pages/payment.vue?vue&type=template&id=253f3c8b&

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./pages/payment.vue?vue&type=script&lang=js&
/* harmony default export */ var paymentvue_type_script_lang_js_ = ({
  middleware: "auth",
  head: {
    title: 'Payment'
  },
  data() {
    return {
      orderData: {
        txtid: ''
      },
      cart: [],
      payableamount: 0,
      subtotal: 0,
      nagad_number: '',
      nagad_fee: 0,
      bkash_number: '',
      bkas_fee: 0,
      rocket_number: '',
      rocket_fee: 0,
      upay_number: '',
      upay_fee: 0,
      select_pay_type: '',
      loading: true,
      errors: {}
    };
  },
  mounted() {
    this.getCartTotal();
    this.setting();
    // Use setTimeout to delay hiding the loader after 5 seconds
    setTimeout(() => {
      this.loading = false;
    }, 1000); // 5000 milliseconds = 5 seconds
  },

  methods: {
    async submitOrder() {
      const payment_getway = this.select_pay_type;
      //console.log("submit order : " + this.orderData.txtid);
      this.loading = true;
      const headers = {
        'Content-Type': 'application/json'
      };
      const savedCart = localStorage.getItem('cart');
      const osummary = localStorage.getItem('orderSummary');
      const summarydata = JSON.parse(osummary);
      // console.log("subtotal: " + summarydata.subtotal);
      let cartData = JSON.parse(savedCart);
      const requestData = {
        cart: cartData,
        payment_getway: payment_getway,
        itemsubtotal: summarydata.itemsubtotal,
        totalShippingFees: summarydata.totalShippingFees,
        subtotal_amt: summarydata.subtotal,
        percentageAmount: summarydata.percentageAmount,
        walletBalance: summarydata.walletBalance,
        copon_amount: summarydata.copon_amount,
        txtid: this.orderData.txtid
      };
      console.log(requestData);
      //return false; 
      await this.$axios.post('/order/submitOrder', requestData, {
        headers
      }).then(res => {
        this.clearCart();
        const OrderID = res.data.orderid;
        this.$router.push(`/order/${OrderID}`);
      }).catch(error => {
        if (error.response.status === 422) {
          this.errors = error.response.data.errors;
        }
      }).finally(() => {
        this.loading = false; // Hide loader after response
      });
    },

    errorHandler(error) {
      // Check for specific error messages
      if (error.response && error.response.data.errors && error.response.data.errors.account) {
        // Display the specific error message to the user
        console.log("error : " + error.response.data.errors.account[0]);
        this.invaliderror = error.response.data.errors.account[0];
        //this.$toast.error(error.response.data.errors.account[0]);
      } else {
        console.log("An error occurred. Please try again later.");
        // Display a generic error message for other types of errors
        //  this.$toast.error('An error occurred. Please try again later.');
      }
    },

    clearCart() {
      this.loading = true;
      localStorage.removeItem('cart');
      localStorage.removeItem('subtotal');
      this.cart = [];
      this.subtotal = 0;
      setTimeout(() => {
        this.loading = false;
      }, 2000);
    },
    getCartTotal() {
      const savedCart = localStorage.getItem('cart');
      if (savedCart) {
        const cartData = JSON.parse(savedCart);
        const uniqueCart = cartData.filter((item, index, self) => index === self.findIndex(t => t.id === item.id));
        const osummary = localStorage.getItem('orderSummary');
        if (osummary !== null) {
          const summarydata = JSON.parse(osummary);
          console.log("subtotal: " + summarydata.subtotal);
          //console.log("percentageAmount: " + summarydata.percentageAmount);
          //console.log("walletBalance: " + summarydata.walletBalance);
          //console.log("copon_amount: " + summarydata.copon_amount);
          let subtotal_amt = summarydata.subtotal;
          this.subtotal = subtotal_amt; //totalPrice;
          console.log('Total Price for Unique Items:', subtotal_amt);
        } else {
          console.log("No order summary found in localStorage");
        }
        //return false;
      } else {
        console.error('No cart data found in local storage.');
      }
    },
    copyNumber(number) {
      const el = document.createElement('textarea');
      let msg = "";
      if (number === 1) {
        el.value = this.bkash_number;
        msg = "Bkash";
      } else if (number === 2) {
        el.value = this.nagad_number;
        msg = "Nagad";
      } else if (number === 3) {
        el.value = this.rocket_number;
        msg = "Rocket";
      } else if (number === 4) {
        el.value = this.upay_number;
        msg = "Upay";
      }
      this.commonCopy(el);
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
        title: `${msg} number copied!`
      });
    },
    commonCopy(el) {
      document.body.appendChild(el);
      el.select();
      document.execCommand('copy');
      document.body.removeChild(el);
    },
    async setting() {
      const response = await this.$axios.get('/unauthenticate/setting');
      this.nagad_number = response.data.nagad_number;
      this.bkash_number = response.data.bkash_number;
      this.rocket_number = response.data.rocket_number;
      this.upay_number = response.data.upay_number;
      //fee
      this.nagad_fee = response.data.nagad_fee;
      this.bkas_fee = response.data.bkash_fee;
      this.rocket_fee = response.data.rocket_fee;
      this.upay_fee = response.data.upay_fee;
      console.log("setting: bkash fee" + response.data.bkash_fee);
    },
    loadingPopup(number) {
      if (number === 1) {
        $(".pop_cards").fadeIn();
      } else if (number === 2) {
        console.log("bkash fee: :" + this.bkas_fee);
        const totalamount = parseFloat(this.subtotal);
        const fee = parseFloat(this.bkas_fee);
        const result = totalamount * fee / 100;
        const subtotal = (totalamount + result).toFixed(2);
        this.payableamount = subtotal;
        console.log("total payable amount: " + subtotal);
        $(".pop_bkash").fadeIn();
      } else if (number === 3) {
        console.log("nagod fee: :" + this.nagad_fee);
        const totalamount = parseFloat(this.subtotal);
        const fee = parseFloat(this.nagad_fee);
        const result = totalamount * fee / 100;
        const subtotal = (totalamount + result).toFixed(2);
        this.payableamount = subtotal;
        console.log("total payable amount: " + subtotal);
        $(".pop_nogot").fadeIn();
      } else if (number === 4) {
        console.log("roket fee: :" + this.rocket_fee);
        const totalamount = parseFloat(this.subtotal);
        const fee = parseFloat(this.rocket_fee);
        const result = totalamount * fee / 100;
        const subtotal = (totalamount + result).toFixed(2);
        this.payableamount = subtotal;
        console.log("total payable amount: " + subtotal);
        $(".pop_roket").fadeIn();
      } else if (number === 5) {
        console.log("upay fee: :" + this.upay_fee);
        const totalamount = parseFloat(this.subtotal);
        const fee = parseFloat(this.upay_fee);
        const result = totalamount * fee / 100;
        const subtotal = (totalamount + result).toFixed(2);
        this.payableamount = subtotal;
        console.log("total payable amount: " + subtotal);
        $(".pop_upay").fadeIn();
      }
      this.select_pay_type = number;
    },
    loadingclosePopup(number) {
      if (number === 1) {
        $(".pop_cards").fadeOut();
      } else if (number === 2) {
        $(".pop_bkash").fadeOut();
      } else if (number === 3) {
        $(".pop_nogot").fadeOut();
      } else if (number === 4) {
        $(".pop_roket").fadeOut();
      } else if (number === 5) {
        $(".pop_upay").fadeOut();
      }
    },
    ordersummary() {
      this.$router.push('/ordersummary');
    }
  }
});
// CONCATENATED MODULE: ./pages/payment.vue?vue&type=script&lang=js&
 /* harmony default export */ var pages_paymentvue_type_script_lang_js_ = (paymentvue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./pages/payment.vue





/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  pages_paymentvue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "ef193bd4"
  
)

/* harmony default export */ var payment = __webpack_exports__["default"] = (component.exports);

/* nuxt-component-imports */
installComponents(component, {Navbar: __webpack_require__(37).default,Loader: __webpack_require__(42).default,Footer: __webpack_require__(32).default,MobileMenu: __webpack_require__(38).default})


/***/ })

};;
//# sourceMappingURL=payment.js.map