exports.ids = [13,0,8];
exports.modules = {

/***/ 32:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/Footer.vue?vue&type=template&id=67f8ab68&
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
      "to": "/ticket"
    }
  }, [_vm._v("Active Ticket")])], 1)], 2)], 2), _vm._ssrNode(" "), _vm._ssrNode("<div>", "</div>", [_vm._ssrNode("<h6>Customer Service</h6> "), _vm._ssrNode("<ul>", "</ul>", [_vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/contact"
    }
  }, [_vm._v("Contact Us")])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/faq"
    }
  }, [_vm._v("FAQ")])], 1), _vm._ssrNode(" <li><a href=\"#\">How it is work</a></li>")], 2)], 2)], 2)])]), _vm._ssrNode(" <div class=\"col-md-6\"><div class=\"social\"><a href=\"https://www.facebook.com/winup360\" target=\"_blank\"><i class=\"fa-brands fa-facebook-f\"></i></a></div> <div class=\"app_link\"><p>Download the LOTTERY app for the ultimate shopping experience!</p> <div class=\"d-flex justify-content-center\"><a href=\"https://paly.google.com\"><img src=\"/images/Play.png\" loading=\"lazy\" alt class=\"img-fulid\"></a> <a href=\"https://app.store.com\"><img src=\"/images/Apple.png\" loading=\"lazy\" alt class=\"img-fulid\"></a></div></div></div>")], 2)]), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"copyright_section\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-6\">", "</div>", [_vm._ssrNode("<div class=\"copyright_text\">", "</div>", [_vm._ssrNode("<p>© Copyright 2024 <strong style=\"color: #aded28;\">winup360</strong>. All Rights Reserved.</p> "), _vm._ssrNode("<ul>", "</ul>", [_vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/agreement",
      "href": "javascript:void();"
    }
  }, [_vm._v("User Agreement")])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/privacy-policy",
      "href": "javascript:void();"
    }
  }, [_vm._v("Privacy Policy")])], 1)], 2)], 2)]), _vm._ssrNode(" <div class=\"col-md-6\"><div class=\"we_accept\"><p>We Accept: </p> <img src=\"/images/Bkash.png\" loading=\"lazy\" alt class=\"img-fulid\"> <img src=\"/images/Roket.png\" loading=\"lazy\" alt class=\"img-fulid\"> <img src=\"/images/nogot.png\" loading=\"lazy\" alt class=\"img-fulid\"> <img src=\"/images/Upay.png\" loading=\"lazy\" alt class=\"img-fulid\"></div></div>")], 2)])], 2)]), _vm._ssrNode(" "), _c('MobileMenu')], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/Footer.vue?vue&type=template&id=67f8ab68&

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
installComponents(component, {Footer: __webpack_require__(32).default,MobileMenu: __webpack_require__(37).default})


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
  add("d51008f0", content, true, context)
};

/***/ }),

/***/ 35:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_531c47d5_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(34);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_531c47d5_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_531c47d5_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_531c47d5_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_MobileMenu_vue_vue_type_style_index_0_id_531c47d5_prod_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));


/***/ }),

/***/ 36:
/***/ (function(module, exports, __webpack_require__) {

// Imports
var ___CSS_LOADER_API_IMPORT___ = __webpack_require__(8);
var ___CSS_LOADER_EXPORT___ = ___CSS_LOADER_API_IMPORT___(function(i){return i[1]});
// Module
___CSS_LOADER_EXPORT___.push([module.i, ".mobile_footer[data-v-531c47d5]{bottom:0;padding:10px 0;position:fixed;width:100%;z-index:1000}.active[data-v-531c47d5]{color:#007bff}", ""]);
// Exports
___CSS_LOADER_EXPORT___.locals = {};
module.exports = ___CSS_LOADER_EXPORT___;


/***/ }),

/***/ 37:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/MobileMenu.vue?vue&type=template&id=531c47d5&scoped=true&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<footer class=\"mobile_footer app_show\" data-v-531c47d5>", "</footer>", [_vm._ssrNode("<div class=\"container-fluid\" data-v-531c47d5>", "</div>", [_vm._ssrNode("<div class=\"row\" data-v-531c47d5>", "</div>", [_vm._ssrNode("<div class=\"col-md-12\" data-v-531c47d5>", "</div>", [_vm._ssrNode("<div class=\"f_mnu\" data-v-531c47d5>", "</div>", [_vm._ssrNode("<ul data-v-531c47d5>", "</ul>", [_vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/'
  }) + " data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-home"
  })]), _vm._ssrNode(" <p data-v-531c47d5>Home</p>")], 2), _vm._ssrNode(" "), _vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/ticket'
  }) + " data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/ticket"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-ticket"
  })]), _vm._ssrNode(" <p data-v-531c47d5>Ticket</p>")], 2), _vm._ssrNode(" "), _vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/offer'
  }) + " data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/offer"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-gift"
  })]), _vm._ssrNode(" <p data-v-531c47d5>Offers</p>")], 2), _vm._ssrNode(" "), _vm._ssrNode("<li" + _vm._ssrClass(null, {
    active: _vm.$route.path === '/cart'
  }) + " data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/cart"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-cart-shopping"
  })]), _vm._ssrNode(" <p data-v-531c47d5>Cart</p> <span class=\"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger\" data-v-531c47d5>" + _vm._ssrEscape("\r\n                                    " + _vm._s(_vm.itemCounts) + "\r\n                                ") + "</span>")], 2), _vm._ssrNode(" <li data-v-531c47d5><a data-bs-toggle=\"offcanvas\" href=\"#mobile_menu\" role=\"button\" aria-controls=\"mobile_menu\" data-v-531c47d5><i class=\"fa-solid fa-bars\" data-v-531c47d5></i></a> <p data-v-531c47d5>Menu</p></li>")], 2)])])])])]), _vm._ssrNode(" "), _vm._ssrNode("<div tabindex=\"-1\" id=\"mobile_menu\" aria-labelledby=\"mobile_menuLabel\" class=\"offcanvas offcanvas-start app_show\" data-v-531c47d5>", "</div>", [_vm._ssrNode("<div class=\"offcanvas-header\" data-v-531c47d5><h5 id=\"offcanvasExampleLabel\" class=\"offcanvas-title\" data-v-531c47d5>Lottery</h5> <button type=\"button\" data-bs-dismiss=\"offcanvas\" aria-label=\"Close\" class=\"btn_close bg-transparent text-white\" data-v-531c47d5><i class=\"fa-solid fa-x color-white\" style=\"color: #fff;\" data-v-531c47d5></i></button></div> "), _vm._ssrNode("<div class=\"offcanvas-body\" style=\"height: 90%;overflow: auto;\" data-v-531c47d5>", "</div>", [_vm._ssrNode("<div id=\"pills-tabContent\" class=\"tab-content\" data-v-531c47d5>", "</div>", [_vm._ssrNode("<div class=\"profile_links\" data-v-531c47d5>", "</div>", [_vm._ssrNode("<ul data-v-531c47d5>", "</ul>", [_vm.loggedIn ? _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/profile"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-user"
  }), _vm._v("Personal\r\n                                    Details")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-user"
  }), _vm._v("Personal\r\n                                    Details")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/wishlist"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-heart"
  }), _vm._v("Wishlist")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-heart"
  }), _vm._v("Wishlist")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/wallet"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-dollar-sign"
  }), _vm._v("Wallet")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-dollar-sign"
  }), _vm._v("Wallet")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/offer"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gift"
  }), _vm._v("Offer")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gift"
  }), _vm._v("Offer")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/ticket"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-ticket"
  }), _vm._v("Active Ticket")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-ticket"
  }), _vm._v("Active Ticket")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/payment"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-regular fa-credit-card"
  }), _vm._v("Payment Option ")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-regular fa-credit-card"
  }), _vm._v("Payment Option ")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/settings"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gear"
  }), _vm._v("Settings")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gear"
  }), _vm._v("Settings")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/notification"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-bell"
  }), _vm._v("Notifications")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1) : _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-bell"
  }), _vm._v("Notifications")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm.loggedIn ? _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_vm._ssrNode("<a href=\"#\" data-v-531c47d5><span data-v-531c47d5><strong class=\"fa-solid fa-right-from-bracket\" data-v-531c47d5></strong>Logout</span></a>")], 2) : _vm._ssrNode("<li data-v-531c47d5>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/login"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-right-from-bracket"
  }), _vm._v("Login")])])], 1)], 2)])])])], 2)], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/MobileMenu.vue?vue&type=template&id=531c47d5&scoped=true&

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
  "531c47d5",
  "395de56f"
  
)

/* harmony default export */ var MobileMenu = __webpack_exports__["default"] = (component.exports);

/* nuxt-component-imports */
installComponents(component, {Footer: __webpack_require__(32).default})


/***/ }),

/***/ 38:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/Navbar.vue?vue&type=template&id=0ef49cb3&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<section class=\"top_nav\">", "</section>", [_vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<nav class=\"navbar navbar-expand-lg\">", "</nav>", [_vm._ssrNode("<div class=\"container-fluid\">", "</div>", [_c('nuxt-link', {
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
  })])]), _vm._ssrNode(" <button type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\" class=\"navbar-toggler\"><i class=\"fa-solid fa-bars\"></i></button> "), _vm._ssrNode("<div id=\"navbarSupportedContent\" class=\"collapse navbar-collapse\">", "</div>", [_vm._ssrNode("<ul class=\"navbar-nav ms-auto mb-2 mb-lg-0\">", "</ul>", [_vm._ssrNode("<li class=\"nav-item\"><a aria-current=\"page\" href=\"https://www.facebook.com/winup360\" target=\"_blank\" class=\"nav-link active\">Need Help? Contact us\r\n                                        </a></li> "), _vm._ssrNode("<li class=\"nav-item\">", "</li>", [_c('nuxt-link', {
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

// CONCATENATED MODULE: ./components/Navbar.vue?vue&type=template&id=0ef49cb3&

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

/***/ 44:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(57);
if(content.__esModule) content = content.default;
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add CSS to SSR context
var add = __webpack_require__(9).default
module.exports.__inject__ = function (context) {
  add("04a871c2", content, true, context)
};

/***/ }),

/***/ 56:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_agreement_vue_vue_type_style_index_0_id_6fe3d8b9_prod_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(44);
/* harmony import */ var _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_agreement_vue_vue_type_style_index_0_id_6fe3d8b9_prod_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_agreement_vue_vue_type_style_index_0_id_6fe3d8b9_prod_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_agreement_vue_vue_type_style_index_0_id_6fe3d8b9_prod_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_vue_style_loader_index_js_ref_3_oneOf_1_0_node_modules_css_loader_dist_cjs_js_ref_3_oneOf_1_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_dist_cjs_js_ref_3_oneOf_1_2_node_modules_nuxt_components_dist_loader_js_ref_0_0_node_modules_vue_loader_lib_index_js_vue_loader_options_agreement_vue_vue_type_style_index_0_id_6fe3d8b9_prod_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));


/***/ }),

/***/ 57:
/***/ (function(module, exports, __webpack_require__) {

// Imports
var ___CSS_LOADER_API_IMPORT___ = __webpack_require__(8);
var ___CSS_LOADER_EXPORT___ = ___CSS_LOADER_API_IMPORT___(function(i){return i[1]});
// Module
___CSS_LOADER_EXPORT___.push([module.i, ".about_ h1,.about_ li,.about_ p,.about_ p b{color:#f2eded;margin-bottom:10px;text-align:justify}.about_ ul{list-style:none;margin-bottom:10px;padding-left:15px;text-align:justify}", ""]);
// Exports
___CSS_LOADER_EXPORT___.locals = {};
module.exports = ___CSS_LOADER_EXPORT___;


/***/ }),

/***/ 71:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./pages/agreement.vue?vue&type=template&id=6fe3d8b9&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_c('Navbar'), _vm._ssrNode(" <section class=\"about_\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-12\"><div class=\"user-agreement\" style=\"padding: 20px;\"><h1>User Agreement</h1> <p>Last updated: 1 January 2024</p> <h4>Apple is not a sponsor nor is it involved in the activities of Winup360 campaign draws in any manner.\r\n                        </h4> <p>\r\n                            This User Agreement for our Services (as defined below) is divided into multiple sections. Please read\r\n                            this Agreement carefully before accepting.</p> <p>The 'Winup360’ application and website www.Winup360.com is operated by Futuregenit, an entity set up for\r\n                            Festivals and Retail Establishment for the purpose of operating and managing Winup360 (together referred\r\n                            to as &quot;Winup360&quot;, &quot;we&quot;, &quot;us&quot;, &quot;our&quot;).</p> <p>You, the user (&quot;user&quot;, &quot;you&quot;, &quot;your&quot;) agree and understand that by clicking and accepting this User\r\n                            Agreement, you confirm to have read, understood, and acknowledged to be bound by our terms to access and\r\n                            use our Winup360 websites, and Winup360 App (together the &quot;Platform&quot;).</p> <p>This User Agreement and Privacy Policy (together the &quot;Terms&quot;) set out the basis upon which you can access\r\n                            and use the Platform. The Terms apply regardless of how you access the Platform and regardless of the\r\n                            technologies or devices by which the Platform is made available to you. Other terms and conditions may be\r\n                            applicable to certain specific products, services, offers or contest draws (&quot;Services&quot;) made available on\r\n                            our Platform, either directly or through third-party sites.</p> <p>Nothing in these Terms affects your statutory rights as a consumer under applicable laws.\r\n                        </p> <ul><li>\r\n                                1. Winup360 APP\r\n                                <ul><li><strong>1.1</strong>   The following provisions apply with respect to your use of any version\r\n                                        of the Winup360 App.\r\n                                    </li> <li>\r\n                                        1.1.1   By creating an account on the Platform, you have access to the Winup360 App where you\r\n                                        may\r\n                                        purchase goods\r\n                                        and Services.\r\n                                    </li> <li>\r\n                                        1.1.2   In order to enter a Draw on the Platform, you will need to purchase shopping cards\r\n                                        available\r\n                                        on the\r\n                                        Platform. Once you have purchased a shopping card, you will receive a Ticket to enter a Draw.\r\n                                        Depending on\r\n                                        the outcome of the Draw, you may win Prizes. Please refer to the Draw Terms in this User Agreement\r\n                                        for\r\n                                        further details of how our Draws work\r\n                                    </li></ul></li> <li>\r\n                                2. PRIVACY POLICY\r\n                                <ul><li>\r\n                                        2.1  The personal information you provide in the course of using the Platform will be used in\r\n                                        accordance with\r\n                                        our Privacy Policy, the terms of which are hereby incorporated into and form part of the Terms.\r\n                                    </li></ul></li> <li>\r\n                                3. ELIGIBILITY FOR MEMBERSHIP\r\n                                <ul><li>\r\n                                        3.1   It is imperative for Winup360 to ensure that users of the Platform are able to enter into\r\n                                        legally binding\r\n                                        contracts and that minors do not purchase, use, or have access to unsuitable content. Membership\r\n                                        and/or use\r\n                                        of the Platform is not available to persons under the age of 18 years old or the legal age\r\n                                        applicable in\r\n                                        your jurisdiction to enter into a contract, if different. By using the Platform, you represent and\r\n                                        warrant\r\n                                        that you are of the correct legal age to enter into this User Agreement in the jurisdiction you are\r\n                                        in, and\r\n                                        that all information you submit is accurate and truthful when registering any information with the\r\n                                        Platform\r\n                                        or providing any information to us.\r\n\r\n                                    </li> <li>\r\n                                        3.2  The Platform is not available to users whose membership has been refused, limited,\r\n                                        suspended or\r\n                                        withdrawn\r\n                                        by Winup360.\r\n\r\n                                    </li> <li>\r\n                                        3.3   No user may register on the Platform as a member more than once.\r\n                                    </li></ul></li> <li>\r\n                                4. REGISTRATION AND MEMBERSHIP OBLIGATIONS\r\n                                <ul><li>\r\n                                        4.1  In order to access the Services and utilize the Platform, you will be required to create\r\n                                        an\r\n                                        account and\r\n                                        register information with us in order to create a membership (&quot;Membership&quot;). You agree that any\r\n                                        information\r\n                                        provided to us will be complete and accurate, that you will not register under the name of, nor\r\n                                        attempt to\r\n                                        enter the Membership under the name of, another person, and that you will not adopt a username that\r\n                                        we in\r\n                                        our sole discretion, deem offensive. We reserve the right to refuse a Membership, or limit, suspend\r\n                                        or\r\n                                        withdraw access to the Platform to any person at any time and for any reason.\r\n\r\n                                    </li> <li>\r\n                                        4.2   You are responsible for promptly updating details of your Membership such that the\r\n                                        details are\r\n                                        at all\r\n                                        times considered true, accurate, current, and complete. If you provide any information that is\r\n                                        untrue,\r\n                                        inaccurate, not current or incomplete or if Winup360 suspects in our sole discretion that such\r\n                                        information\r\n                                        is untrue, inaccurate, not current or incomplete, or not in accordance with this User Agreement, we\r\n                                        have the\r\n                                        right to suspend indefinitely, limit or withdraw your Membership and/or your access to the Platform.\r\n\r\n                                    </li> <li>\r\n                                        4.3   When registering your account on the Platform in order to create your Membership, you\r\n                                        will be\r\n                                        required to\r\n                                        provide certain information and register a username and password for use of the Platform. To keep\r\n                                        your\r\n                                        Platform account secure you have to protect your account through reasonable means, and you are\r\n                                        responsible\r\n                                        at all times for maintaining the confidentiality of, and restricting access to and use of, your\r\n                                        Platform\r\n                                        account and password.\r\n\r\n                                    </li> <li>\r\n                                        4.4   You agree to accept responsibility for all activities that occur under your Platform\r\n                                        account. If\r\n                                        someone\r\n                                        other than you uses the Platform with your login information you will be held accountable for all\r\n                                        actions\r\n                                        taken in your name.\r\n\r\n                                    </li> <li>\r\n                                        4.5  You may not, at any point in time, use any other person's Membership. You agree to\r\n                                        reimburse\r\n                                        Winup360 in\r\n                                        full for any costs, expenses and damages caused by improper, unauthorized or illegal use of your\r\n                                        Membership\r\n                                        and password by you or any person obtaining access to the Platform.\r\n\r\n                                    </li> <li>\r\n                                        4.6   You may not transfer or sell your Membership or account details to another party and you\r\n                                        undertake that\r\n                                        you are solely responsible for all activity conducted on the Platform through the use of your\r\n                                        Membership.\r\n                                    </li></ul></li> <li>\r\n                                5. ELECTRONIC COMMUNICATION\r\n                                <ul><li>\r\n                                        5.1   To fulfill our obligations to you under these Terms, we may wish to communicate with you\r\n                                        by\r\n                                        email, by\r\n                                        other forms of electronic messaging and/or by posting notices on the Platform. You agree to receive\r\n                                        communications from us electronically and these electronic communications will satisfy any legal\r\n                                        requirement\r\n                                        for communications which need to be in writing.\r\n                                    </li></ul></li> <li>\r\n                                6. YOUR USE OF THE PLATFORM\r\n                                <ul><li>\r\n                                        6.1  You may not access or use the Platform or the Services for any purpose other than the\r\n                                        purpose\r\n                                        for which\r\n                                        we make the Platform or the Services, as applicable, available to you and you may not use either the\r\n                                        Platform or the Services in a way that infringes the rights of anyone else or that restricts or\r\n                                        inhibits\r\n                                        anyone else's enjoyment of the Platform.\r\n\r\n                                    </li> <li>\r\n                                        6.2  Without limiting the generality of clause 6.1, when accessing the Platform, or using our\r\n                                        Services, you\r\n                                        should not:\r\n                                        <ul><li>\r\n                                                6.2.1   post or transmit false, inaccurate, misleading, defamatory, or libelous content\r\n                                                (including\r\n                                                but not\r\n                                                limited to during the registration process);\r\n                                            </li> <li>\r\n                                                6.2.2   violate any third-party rights, including intellectual property rights;\r\n                                            </li> <li>\r\n                                                6.2.3  advertise to, or solicit, any user to buy or sell any Services, except with the\r\n                                                express\r\n                                                written approval\r\n                                                of us;\r\n                                            </li> <li>\r\n                                                6.2.4  transmit chain letters or junk email to other users;\r\n                                            </li> <li>\r\n                                                6.2.5   use any information obtained from the Services in order to contact, advertise to,\r\n                                                solicit\r\n                                                or sell any\r\n                                                products or services to any user without their prior explicit consent;\r\n                                            </li> <li>\r\n                                                6.2.6  attempt to impersonate another user or person;\r\n                                            </li> <li>\r\n                                                6.2.7  use the username or account of another user;\r\n                                            </li> <li>\r\n                                                6.2.8  use any information obtained from the Services and Platform in order to harass,\r\n                                                abuse or\r\n                                                harm another\r\n                                                user or person;\r\n\r\n                                            </li> <li>\r\n                                                6.2.9  accepting payment of anything of value from a third person in exchange for your\r\n                                                performance of any\r\n                                                commercial activity on or through the Services on behalf of that person;\r\n                                            </li> <li>\r\n                                                6.2.10   use the Platform in a manner inconsistent with any and all applicable laws and\r\n                                                regulations; and\r\n                                            </li> <li>\r\n                                                6.2.11   otherwise, incur any liability to the Platform or us.\r\n                                            </li></ul></li> <li>\r\n                                        6.3   You may not copy, modify, distribute, sell, or lease any part of the Platform. Unless law\r\n                                        prohibits such\r\n                                        restriction or you have our written permission, you may not reverse engineer or attempt to extract\r\n                                        the\r\n                                        source code of the Platform. You may only access the Platform through the interfaces that we provide\r\n                                        for\r\n                                        that purpose (for example, you may not &quot;scrape&quot; the Platform through automated means or &quot;frame&quot; any\r\n                                        part of\r\n                                        the Platform), and you may not interfere or attempt to disrupt the Platform.\r\n\r\n                                    </li> <li>\r\n                                        6.4   You may not attempt to gain unauthorized access to any portion or feature of the\r\n                                        Platform, or any\r\n                                        other\r\n                                        systems or networks connected to the Platform, or to any of the Services offered on or through the\r\n                                        Platform,\r\n                                        by hacking, password &quot;mining&quot; or any other illegitimate means.\r\n\r\n                                    </li> <li>\r\n                                        6.5   You agree that you will not take any action that imposes an unreasonable or\r\n                                        disproportionately\r\n                                        large load\r\n                                        on the infrastructure of the Platform or our systems or networks, or any systems or networks\r\n                                        connected to\r\n                                        the Platform or to us.\r\n\r\n                                    </li> <li>\r\n                                        6.6   You agree not to use any device or software to interfere or attempt to interfere with the\r\n                                        proper\r\n                                        working\r\n                                        of the Platform or any transaction being conducted on the Platform or with any other person's use of\r\n                                        the\r\n                                        Platform\r\n                                    </li></ul></li> <li>\r\n                                7. PAYMENT AND REFUND\r\n                                <ul><li>\r\n                                        7.1   If you make a payment for one of our Services available on our Platform, the details you\r\n                                        are\r\n                                        asked to\r\n                                        submit will be provided directly to our payment provider via a secure connection. Please ensure you\r\n                                        have\r\n                                        read the applicable terms and conditions provided by your bank prior to the transaction.\r\n\r\n                                    </li> <li>\r\n                                        7.2   Multiple transactions by you on our Platform may result in multiple postings to your\r\n                                        monthly\r\n                                        credit or\r\n                                        debit card statement.\r\n\r\n                                    </li> <li>\r\n                                        7.3   The product prices displayed on our Platform are inclusive of VAT. You may be charged in\r\n                                        BDT\r\n                                        (Bangladeshi\r\n                                        Taka) depending on where you are using the Platform from and what type of payment method you are\r\n                                        using. In\r\n                                        such cases, there may be slight discrepancies in values due to changes in foreign exchange rates. We\r\n                                        are not\r\n                                        responsible and shall not compensate you for any loss that occurs due to these rate fluctuations.\r\n                                        Winup360\r\n                                        gives no warranties or representations whatsoever in relation to the exchange rates it provides for\r\n                                        any\r\n                                        transaction and is under no obligation to provide the best or most competitive exchange rates\r\n                                        available.\r\n\r\n                                    </li> <li>\r\n                                        7.4   For any defective products sold by Winup360, we will offer you a remedy in compliance\r\n                                        with\r\n                                        applicable\r\n                                        laws. You acknowledge and agree that any refunds requested by you may affect your participation in\r\n                                        Draws and\r\n                                        chance to win Prizes (as set out in more detail in the Draw Terms). This is because your entry into\r\n                                        the\r\n                                        Draws are directly correlated to your purchase of the products and Services available on the\r\n                                        Platform.\r\n                                    </li></ul></li> <li>\r\n                                8. INTELLECTUAL PROPERTY RIGHTS\r\n                                <ul><li>\r\n                                        8.1   The Platform and the materials on the Platform, including without limitation, the text,\r\n                                        software,\r\n                                        scripts, graphics, photos, sounds, music, videos, interactive features and the like (&quot;Materials&quot;)\r\n                                        and the\r\n                                        trademarks, service marks and logos contained therein (&quot;Marks&quot;), are owned by or licensed to\r\n                                        Winup360, and\r\n                                        are subject to copyright and other intellectual property rights under Bangladesh and foreign laws\r\n                                        and\r\n                                        international conventions.\r\n\r\n                                    </li> <li>\r\n                                        8.2   In connection with the Services, the Platform may display certain content belonging to\r\n                                        third\r\n                                        parties. Use\r\n                                        of this content may be subject to a license granted by third parties to Winup360. You shall, in no\r\n                                        event,\r\n                                        reverse engineer, decompile, or disassemble such content and nothing herein shall be construed to\r\n                                        grant you\r\n                                        any right in relation to such content. Materials on the Platform are provided to you &quot;as is&quot; for\r\n                                        your\r\n                                        information and personal use only and may not be used, copied, reproduced, distributed, transmitted,\r\n                                        broadcasted, displayed, sold, licensed, or otherwise exploited for any other purposes whatsoever\r\n                                        without the\r\n                                        prior written consent of the respective owners.\r\n\r\n                                    </li> <li>\r\n                                        8.3   Winup360 reserves all rights not expressly granted herein to the Platform and the\r\n                                        Materials. You\r\n                                        agree to\r\n                                        not engage in the use, copying, or distribution of any of the Materials other than as expressly\r\n                                        permitted\r\n                                        herein, including any use, copying, or distribution of Materials of third parties obtained through\r\n                                        the\r\n                                        Platform for any commercial purposes. You agree not to circumvent, disable or otherwise interfere\r\n                                        with\r\n                                        security-related features of the Platform or features that prevent or restrict use or copying of any\r\n                                        Materials or enforce limitations on the use of the Platform or the Materials therein.\r\n\r\n                                    </li> <li>\r\n                                        8.4   Content displayed on or through the provision of the Services are protected by copyright\r\n                                        as a\r\n                                        collective\r\n                                        work and/or compilation, pursuant to copyrights laws, other laws, and international conventions. Any\r\n                                        reproduction, modification, creation of derivative works from or redistribution of the Platform, the\r\n                                        Materials, or the collective work or compilation is expressly prohibited. Copying or reproducing the\r\n                                        Platform, the Materials, or any portion thereof for further reproduction or redistribution is\r\n                                        expressly\r\n                                        prohibited.\r\n\r\n                                    </li> <li>\r\n                                        8.5   You will be exposed to Materials from a variety of sources, and, as far as the applicable\r\n                                        law\r\n                                        allows,\r\n                                        Winup360 is not responsible for the accuracy, usefulness, safety, or intellectual property rights of\r\n                                        or\r\n                                        relating to such Materials, and you agree and assume all liability for your use of any such\r\n                                        Materials\r\n                                    </li></ul></li> <li>\r\n                                9. DISCLAIMER FOR THIRD-PARTY APPLICATIONS\r\n                                <ul><li>\r\n                                        9.1   The use of any third-party application is subject to any terms and conditions provided\r\n                                        with such\r\n                                        third-party application and is not governed by us. Winup360 is not responsible for any third-party\r\n                                        applications, and you acknowledge that such applications may be modified or removed by their\r\n                                        original\r\n                                        publisher and/or respective rights owner at any time. You assume all responsibility and risk of use\r\n                                        of any\r\n                                        third-party applications (including any content therein) and Winup360 hereby disclaims any and all\r\n                                        liability\r\n                                        to you or any third-party related thereto.\r\n\r\n                                    </li> <li>\r\n                                        9.2   Winup360 does not have any obligation to examine or scan third-party applications, for\r\n                                        any\r\n                                        purpose, and\r\n                                        is not responsible for the accuracy, completeness, appropriateness or legality of any third-party\r\n                                        applications. The fact that a third-party application is available via any online platform or\r\n                                        otherwise is\r\n                                        not an endorsement, authorization or representation of Winup360's affiliation with any third-party,\r\n                                        nor is\r\n                                        it an endorsement of such third-party application and you hereby waive any legal or equitable rights\r\n                                        or\r\n                                        remedies you have or may have against Winup360 with respect thereto. Winup360 exercises no control\r\n                                        over\r\n                                        third-party applications, products, services, software or any online platform and we are not\r\n                                        responsible for\r\n                                        their performance, do not endorse them, and are not responsible or liable for any content,\r\n                                        advertising, or\r\n                                        other materials available through any third-party applications, products, services, software and any\r\n                                        online\r\n                                        platform. We are not responsible or liable, directly or indirectly, for any damage or loss caused to\r\n                                        you by\r\n                                        your use of or reliance on any goods or services available through the third-party applications,\r\n                                        products,\r\n                                        services, software and any online platform.\r\n                                    </li></ul></li> <li>\r\n                                10. DISCLAIMER OF WARRANTY\r\n                                <ul><li>\r\n                                        10.1   To offer a reliable and enjoyable service we need to fix bugs, install updates and\r\n                                        perform\r\n                                        general\r\n                                        diagnosis and maintenance. We cannot warrant that the Platform and Services will always be\r\n                                        uninterrupted,\r\n                                        problem-free, free of omission, or error-free. To the extent allowed by law, the Materials and\r\n                                        function of\r\n                                        the Platform, and Services, are provided on an &quot;as is&quot; basis without warranties of any kind, whether\r\n                                        expressed or implied.\r\n\r\n                                    </li> <li>\r\n                                        10.2   Information obtained on the Platform may not always be accurate. We use other providers\r\n                                        to\r\n                                        provide data\r\n                                        on which we base the information detailed on the Platform. We try to make sure that the data is\r\n                                        correct and\r\n                                        up-to-date together with our partners, but we cannot guarantee that it will always be.\r\n                                    </li></ul></li> <li>\r\n                                11. LIMITATIONS OF LIABILITY\r\n                                <ul><li>11.1   To the maximum extent permissible by applicable law, we, our group entities,\r\n                                        subsidiaries\r\n                                        and affiliates\r\n                                        (&quot;Companies&quot;), and their respective suppliers, and any of their owners, officers, directors,\r\n                                        managers,\r\n                                        members, agents, and employees:\r\n                                        <ul><li>\r\n                                                11.1.1   shall not be responsible for any infringement or transaction dispute, including,\r\n                                                but not\r\n                                                limited to,\r\n                                                transaction disputes about quality, safety, breach of warranty, and the payment by you;\r\n\r\n                                            </li> <li>\r\n                                                11.1.2   are not liable for any direct, indirect, punitive, incidental, special, or\r\n                                                consequential\r\n                                                damages or loss\r\n                                                (including, without limitation, incidental and consequential damages, loss of revenue or\r\n                                                anticipated\r\n                                                profits, loss of goodwill, loss of business or damages resulting from lost data or business\r\n                                                interruption)\r\n                                                arising out of, or in a way connected with the use or inability to use the Platform and the\r\n                                                Services,\r\n                                                whether based on warranty, contract, tort (including negligence), or any other legal theory, and\r\n                                                whether or\r\n                                                not we advised of the possibility of such damages;\r\n\r\n                                            </li> <li>\r\n                                                11.1.3   exclude any and all liability for damages caused by any problems or technical\r\n                                                malfunction\r\n                                                of any\r\n                                                telephone network or lines, computer online systems, servers or providers, computer equipment,\r\n                                                software,\r\n                                                failure of any communications due to technical problems or traffic congestion on the internet or\r\n                                                on the\r\n                                                Platform or combination thereof, including any injury or damage to any users or to any person's\r\n                                                computer\r\n                                                related to or resulting from use of the Platform; and\r\n\r\n                                            </li> <li>\r\n                                                11.1.4   expressly disclaim all warranties and conditions of any kind, whether express or\r\n                                                implied,\r\n                                                including, but\r\n                                                not limited to the implied warranties and conditions of merchantability, fitness for a\r\n                                                particular purpose\r\n                                                and non-infringement.\r\n\r\n                                            </li></ul></li> <li>\r\n                                        11.2   In conjunction with the limitation of warranties as explained herein, you expressly\r\n                                        understand\r\n                                        and agree\r\n                                        that our maximum liability for any claim against us shall be limited to an amount of AED 100, for\r\n                                        use of our\r\n                                        Platform and/or Services.\r\n                                    </li></ul></li> <li>\r\n                                12. INDEMNITY\r\n                                <ul><li>\r\n                                        12.1   You agree to defend, indemnify and hold harmless Winup360 and its Companies, and its and\r\n                                        their\r\n                                        officers,\r\n                                        directors, shareholders, successors, assigns, agents, service providers, suppliers and employees,\r\n                                        from and\r\n                                        against any and all claims, damages, obligations, losses (whether direct, indirect or\r\n                                        consequential),\r\n                                        liabilities, costs or debt, and expenses (including but not limited to legal fees) arising from: (i)\r\n                                        your\r\n                                        breach of any provision of this User Agreement; (ii) your breach of any third-party right, including\r\n                                        without\r\n                                        limitation any copyright, trademark, trade secret or other intellectual property, or privacy right;\r\n                                        (iii)\r\n                                        your use of the Platform or the Services, or (iv) any claim that the Platform, Services or any\r\n                                        Materials\r\n                                        caused damage to you or a third-party. This defense and indemnification obligation will survive\r\n                                        termination,\r\n                                        modification or expiration of this User Agreement and your use of the Services and the Platform.\r\n                                    </li></ul></li> <li>\r\n                                13. LIMITATION AND TERMINATION OF SERVICES\r\n                                <ul><li>\r\n                                        13.1   Winup360 may establish limits from time to time concerning use of the Services,\r\n                                        including among\r\n                                        others,\r\n                                        the maximum number of days that content will be maintained or retained by the Service, the maximum\r\n                                        number\r\n                                        and size of postings, e-mail messages, or other content that may be transmitted or stored by the\r\n                                        Services,\r\n                                        and the frequency with which you may access the Services or the Platform.\r\n\r\n                                    </li> <li>\r\n                                        13.2   Winup360 reserves the right at any time to modify or discontinue the Service on the\r\n                                        Platform\r\n                                        (or any part\r\n                                        thereof) with or without notice (without the need for a court order), and that Winup360 shall not be\r\n                                        liable\r\n                                        to you or to any third-party for any such modification, suspension or discontinuance of the Service\r\n\r\n                                    </li> <li>\r\n                                        13.3   In the event of termination, you will no longer be authorized to access the Platform or\r\n                                        your\r\n                                        Membership,\r\n                                        and we reserve the right to use any means possible to enforce this termination. You undertake to\r\n                                        immediately\r\n                                        notify Winup360 of any unauthorized use of your Membership or any other security breach.\r\n\r\n                                    </li> <li>\r\n                                        13.4   Termination or limitation of your access or use will not waive or affect any other right\r\n                                        or\r\n                                        relief to\r\n                                        which we may be entitled at law.\r\n                                    </li></ul></li> <li>\r\n                                14. FORCE MAJEURE\r\n                                <ul><li>\r\n                                        14.1   Under no circumstances will we be held liable for any delay or failure or disruption of\r\n                                        the\r\n                                        Services\r\n                                        delivered through the Platform or any disruption to the Platform itself resulting directly or\r\n                                        indirectly\r\n                                        from acts of nature, forces or causes beyond our reasonable control, including, without limitation,\r\n                                        Internet\r\n                                        failures, computer, telecommunications or any other equipment failures, electrical power failures,\r\n                                        strikes,\r\n                                        labour disputes, riots, insurrections, civil disturbances, shortages of labour or materials,\r\n                                        epidemics,\r\n                                        pandemics, fires, floods, storms, explosions, acts of God, war, governmental actions, orders of\r\n                                        domestic or\r\n                                        foreign courts or tribunals or non-performance by third parties.\r\n                                    </li></ul></li> <li>\r\n                                15. GENERAL INFORMATION\r\n                                <ul><li>\r\n                                        15.1   Severability: If any provision of these Terms is held by a court of competent\r\n                                        jurisdiction to\r\n                                        be invalid,\r\n                                        illegal or unenforceable and can be deleted without altering the essence of these Terms, the\r\n                                        invalid,\r\n                                        illegal or unenforceable provision will be severed and the remaining provisions will remain in full\r\n                                        force or\r\n                                        effect.\r\n                                    </li> <li>\r\n                                        15.2   No Waiver: Any failure by us to enforce any terms set out in these Terms or other\r\n                                        policies with\r\n                                        you is\r\n                                        not a waiver of our rights to enforce those terms.\r\n\r\n                                    </li> <li>\r\n                                        15.3   Assignment and third-party rights: You may not assign or sub-contract any of your rights\r\n                                        or\r\n                                        obligations\r\n                                        under these Terms to any third-party unless we agree in writing. We may assign, transfer or\r\n                                        sub-contract any\r\n                                        of our rights or obligations under these Terms to any third-party at our discretion and without the\r\n                                        need for\r\n                                        your consent or the requirement to provide you with notice.\r\n                                    </li></ul></li> <li>\r\n                                16. GOVERNING LAW AND DISPUTE RESOLUTION\r\n                                <ul><li>16.1   The Terms shall be governed by and construed under the laws of the International\r\n                                        Financial\r\n                                        Corporation\r\n                                        (&quot;IFC&quot;), Dhaka, Bangladesh.\r\n                                    </li> <li>\r\n                                        16.2   These Terms may be published in English and Bengali. If there is any inconsistency\r\n                                        between the\r\n                                        English\r\n                                        text and the Bengali text, the English text will prevail apply.\r\n                                    </li></ul></li> <li>\r\n                                17. CONTACT\r\n                                <ul><li>17.1   You can contact us at: <span style=\"color: rgb(156, 238, 5); text-decoration: underline;\">support@winup360.com</span></li></ul></li> <li>\r\n                                18. Winup360 DRAW TERMS (&quot;DRAW TERMS&quot;)\r\n                                \r\n                                    </li><li>\r\n                                        18.1   In addition to your agreement with the Terms, the following provisions apply with\r\n                                        respect to\r\n                                        you\r\n                                        participating in our contest draws (&quot;Draw(s)&quot;) and winning the prizes (&quot;Prize(s)&quot;).\r\n\r\n                                    </li> <li>\r\n                                        18.2   We may amend these Draw Terms at any point in time without notice and the amendments\r\n                                        will take\r\n                                        effect\r\n                                        once they have been displayed on the Platform. You acknowledge and agree that it is your\r\n                                        responsibility to\r\n                                        review these Draw Terms periodically to familiarize yourself with any modifications. Your continued\r\n                                        use of\r\n                                        the Platform and/or entry into Draws following any amendments shall be construed as acceptance of\r\n                                        those\r\n                                        amendments.\r\n\r\n                                    </li> <li>\r\n                                        18.3   Draws will be approved by Futuregenit Limited are in accordance with the guidelines (as\r\n                                        such they\r\n                                        may be\r\n                                        amended from time to time). A valid permit number will be issued for each respective Draw.\r\n                                    </li> <li>\r\n                                        18.4   Only users with a valid Membership to the Platform that satisfies all the Terms are\r\n                                        eligible to\r\n                                        enter\r\n                                        into our Draws.\r\n                                    </li> <li>\r\n                                        18.5. The types of Draws vary on the Platform. Each shopping card purchased on the Winup360 App in\r\n                                        accordance\r\n                                        with these Terms is associated with a specific type of Draw whereby a user is awarded at least a\r\n                                        single\r\n                                        complimentary ticket (&quot;Ticket&quot;) to that specified Draw after purchasing the shopping card.\r\n                                    </li> <li>\r\n                                        18.6   If you purchase a shopping card on the Winup360 App, you are entitled to redeem the\r\n                                        shopping card\r\n                                        in part\r\n                                        or in full at our online or physical WinUp World stores that stock a host of WinUp branded\r\n                                        merchandise. Your\r\n                                        shopping card(s) do not have an expiry date and can be redeemed at any time of your choice.\r\n                                    </li> <li>\r\n                                        18.7   To collect your product(s), you must visit our premises within fifteen (15) calendar\r\n                                        days from\r\n                                        purchasing\r\n                                        the product(s) and present your valid identification (such as your national identification card,\r\n                                        passport,\r\n                                        driver's license, etc.) as may be required in our sole discretion. Winup360 may, at its sole\r\n                                        discretion,\r\n                                        allow an individual who has been given a written, valid and effective Power of Attorney (POA) by you\r\n                                        to\r\n                                        collect the product, subject to them presenting the necessary identification. Winup360 will evaluate\r\n                                        any\r\n                                        such reliance on a POA on a case-by-case basis and cannot guarantee that an individual with a POA\r\n                                        from you\r\n                                        will be allowed to collect the product on your behalf. Failure to collect the purchased product\r\n                                        within this\r\n                                        time frame will result in such product purchase being canceled.\r\n                                    </li> <li>\r\n                                        18.8   Winup360 reserves the right, without prior notice, to consider any unutilized shopping\r\n                                        card\r\n                                        credits in\r\n                                        your Wallet waived by you after a reasonable amount of time.\r\n                                    </li> <li>\r\n                                        18.9   Ticket numbers are computer generated and may not be sequential to the order in which\r\n                                        the\r\n                                        shopping cards\r\n                                        they are associated with are purchased. You cannot choose Ticket numbers as they are generated only\r\n                                        upon\r\n                                        checkout and completion of purchase of the shopping cards.\r\n                                    </li> <li>\r\n                                        18.10   Tickets awarded to you through your use of our Platform are neither refundable nor\r\n                                        transferable\r\n                                        and are\r\n                                        owned solely and exclusively by you.\r\n                                    </li> <li>\r\n                                        18.11   The length of each Draw varies and the date when the Prizes are awarded can occur on\r\n                                        any day of\r\n                                        the week\r\n                                        for the Draws that have 'sold out' a minimum of 24 hours prior to the day of the Draw. The Draw\r\n                                        shall occur\r\n                                        in the presence of a government representative, unless the government authority approves otherwise,\r\n                                        and as\r\n                                        such the results of any Draw are not subject to negotiation, interference, challenge, or argument by\r\n                                        a user.\r\n                                        The Draw date will be subject to the government representative's availability.\r\n                                    </li> <li>\r\n                                        18.12   The deadline to enter any Draw is prior to the sell-out of all shopping cards specified\r\n                                        within\r\n                                        the Draw,\r\n                                        or prior to the closure of the Draw (which happens before the Draw date); or, in the case of a timed\r\n                                        Draw,\r\n                                        prior to the end of the timer displayed on the campaign box of the specific Draw. The period of the\r\n                                        Draws\r\n                                        can be extended at Winup360's sole discretion, and we will notify you of any such extension.\r\n                                    </li> <li>\r\n                                        18.13   Winners of the Draws are selected by the government representative and will be notified\r\n                                        on the\r\n                                        day the\r\n                                        Draw occurs. The names of winners may also be announced in the local and regional press as well as\r\n                                        on the\r\n                                        Platform and our associated social (online) media profiles, unless you specifically advise us\r\n                                        otherwise in\r\n                                        writing prior to the Draw. Unless otherwise specified, the number of winners per Draw will always be\r\n                                        one\r\n                                        (1).\r\n                                    </li> <li>\r\n                                        18.14   On the Draw day, an email will be sent to the registered email on the Platform\r\n                                        detailing the\r\n                                        next steps\r\n                                        and how you can claim the Prize, which may include the following:\r\n                                        <ul><li>\r\n                                                18.14.1   In the event the winner is based in the Bangladesh, then he/she needs to collect\r\n                                                the Prize\r\n                                                from our\r\n                                                premises within sixty (60) calendar days and present valid identification as may be required, in\r\n                                                our sole\r\n                                                discretion, in order to collect the Prize. Failure to collect the Prize within this time period\r\n                                                WILL result\r\n                                                in us transferring the Prize to the government authority after which Winup360 will have no\r\n                                                further\r\n                                                responsibility with respect to the Prize. Post transfer, the winner must liaise with the\r\n                                                government\r\n                                                authority whereupon he/she will be subject to their terms and conditions.\r\n\r\n                                            </li> <li>\r\n                                                18.14.2  In the event a winner does not reside in the Bangladesh, we will either courier\r\n                                                the Prize\r\n                                                to the winner\r\n                                                by air or land (as we may determine in our sole discretion), or ship the Prize to the winner's\r\n                                                country of\r\n                                                residence (nearest seaport as selected by us in our sole discretion) free of charge, and we will\r\n                                                insure\r\n                                                shipment of the Prize until delivery thereof at the port. Collection from the port and clearance\r\n                                                through the\r\n                                                port and customs shall be the responsibility, and at the cost, of the winner. Accordingly, all\r\n                                                local taxes,\r\n                                                custom duties, and any other form of expense beyond shipping and delivery at the port will be\r\n                                                paid by the\r\n                                                winner.\r\n                                            </li></ul></li>\r\n                                    18.15   Once a Prize is handed to/collected by the courier/handler for delivery, risk and\r\n                                    responsibility\r\n                                    will\r\n                                    transfer to the winner and we no longer hold claim nor responsibility for any damage/injury incurred\r\n                                    in\r\n                                    transit, or upon delivery.\r\n                             <li>\r\n                                18.16   By entering the Draw, all winners consent to the use of any and all content made by or\r\n                                provided to\r\n                                us.\r\n                                This includes but is not limited to the use of their name, photographs, videos, call recordings and\r\n                                other\r\n                                material created during the Draw, in the local and regional press, on the Platform and on any social\r\n                                (online) media profile associated with us. You may choose to withdraw your consent at any time, but this\r\n                                may\r\n                                affect your entrance into a Draw.\r\n                            </li> <li>\r\n                                18.17   All Prizes displayed on our Platform will be awarded, as displayed, with only minor (if\r\n                                any)\r\n                                physical\r\n                                changes.\r\n                            </li> <li>\r\n                                18.18   Where the registration or transfer of ownership of a Prize is necessary, such registration\r\n                                or\r\n                                transfer\r\n                                of ownership will be made against the name of the winner only, as it appears on the winning ticket. By\r\n                                entering the Draw of a Prize where registration or transfer of ownership is necessary, you agree that\r\n                                you\r\n                                meet the required government and regulatory criteria to receive such registration or transfer of\r\n                                ownership.\r\n                            </li> <li>\r\n                                18.19   If any winner is subsequently found ineligible to participate in the Draw, we may at our\r\n                                sole\r\n                                discretion\r\n                                reclaim the Prize or dispose of the same in such a manner and to such person as we deem fit. All such\r\n                                decisions will be in line with applicable laws.\r\n                            </li> <li>\r\n                                18.20   We will not be responsible for arranging any insurance, including travel insurance, medical\r\n                                insurance, transport, meals, or any other expenses of a personal nature incurred by the winner in the\r\n                                collection of\r\n                                the\r\n                                Prize, unless otherwise agreed by us in writing.\r\n                            </li> <li>\r\n                                18.21   We will not be responsible for claims, damages, or expenses of any nature whatsoever for\r\n                                any loss,\r\n                                illness, bodily injury, including death, of or to any winner and/or any third-party during and/or in\r\n                                course\r\n                                of usage of any Prize or due to any defects in any Prizes.\r\n                            </li> <li>\r\n                                18.22   Winners are responsible for any and all tax liability where applicable.\r\n                            </li></ul></div></div></div></div></section> "), _c('Footer')], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./pages/agreement.vue?vue&type=template&id=6fe3d8b9&

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./pages/agreement.vue?vue&type=script&lang=js&
/* harmony default export */ var agreementvue_type_script_lang_js_ = ({
  head: {
    title: 'Agreement'
  },
  data() {
    return {};
  },
  mounted() {},
  methods: {}
});
// CONCATENATED MODULE: ./pages/agreement.vue?vue&type=script&lang=js&
 /* harmony default export */ var pages_agreementvue_type_script_lang_js_ = (agreementvue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./pages/agreement.vue



function injectStyles (context) {
  
  var style0 = __webpack_require__(56)
if (style0.__inject__) style0.__inject__(context)

}

/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  pages_agreementvue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  injectStyles,
  null,
  "b6a2bbcc"
  
)

/* harmony default export */ var agreement = __webpack_exports__["default"] = (component.exports);

/* nuxt-component-imports */
installComponents(component, {Navbar: __webpack_require__(38).default,Footer: __webpack_require__(32).default})


/***/ })

};;
//# sourceMappingURL=agreement.js.map