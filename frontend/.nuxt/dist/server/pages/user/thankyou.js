exports.ids = [37,0,4,6,8];
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

/***/ 43:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/LeftsidebarDesktop.vue?vue&type=template&id=068d1abe&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<div class=\"profile_image\"><label for=\"profile_img\"><img src=\"/images/blank_profile.png\" width=\"100%\" loading=\"lazy\" alt class=\"img-fulid profile_pic\"></label> <h1>" + _vm._ssrEscape(_vm._s(_vm.insertdata.name)) + "</h1> <p>" + _vm._ssrEscape(_vm._s(_vm.insertdata.email)) + "</p></div> "), _vm._ssrNode("<div class=\"profile_links\">", "</div>", [_vm._ssrNode("<ul>", "</ul>", [_vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/profile"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-user"
  }), _vm._v("Personal\r\n                        Details")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/orderlist"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-heart"
  }), _vm._v("Order List")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/wishlist"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-heart"
  }), _vm._v("Wishlist")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/wallet"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-dollar-sign"
  }), _vm._v("Wallet")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/offer"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gift"
  }), _vm._v("Offer")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/ticket"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-ticket"
  }), _vm._v("Active Ticket")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li class=\"d-none\">", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/payment"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-regular fa-credit-card"
  }), _vm._v("Payment Option ")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li>", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/settings"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-gear"
  }), _vm._v("Settings")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" "), _vm._ssrNode("<li class=\"d-none\">", "</li>", [_c('nuxt-link', {
    attrs: {
      "to": "/user/notification"
    }
  }, [_c('span', [_c('strong', {
    staticClass: "fa-solid fa-bell"
  }), _vm._v("Notifications")]), _vm._v(" "), _c('i', {
    staticClass: "fa-solid fa-chevron-right"
  })])], 1), _vm._ssrNode(" <li><a href=\"#\"><span><strong class=\"fa-solid fa-right-from-bracket\"></strong>Logout</span></a></li>")], 2)])], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/LeftsidebarDesktop.vue?vue&type=template&id=068d1abe&

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/LeftsidebarDesktop.vue?vue&type=script&lang=js&
/* harmony default export */ var LeftsidebarDesktopvue_type_script_lang_js_ = ({
  data() {
    return {
      insertdata: {
        name: '',
        email: '',
        phone_number: '',
        address: '',
        website: '',
        github: '',
        twitter: '',
        instagram: '',
        facebook: '',
        image: ''
      }
    };
  },
  mounted() {
    this.defaultLoadingData();
  },
  methods: {
    async logout() {
      await this.$auth.logout();
      localStorage.removeItem('jwtToken');
      this.$router.push('/');
    },
    defaultLoadingData() {
      this.$axios.get('/auth/showProfileData').then(response => {
        console.log(response.data.data.name);
        this.insertdata.name = response.data.data.name;
        this.insertdata.email = response.data.data.email;
      });
    }
  }
});
// CONCATENATED MODULE: ./components/LeftsidebarDesktop.vue?vue&type=script&lang=js&
 /* harmony default export */ var components_LeftsidebarDesktopvue_type_script_lang_js_ = (LeftsidebarDesktopvue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/LeftsidebarDesktop.vue





/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  components_LeftsidebarDesktopvue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "20946835"
  
)

/* harmony default export */ var LeftsidebarDesktop = __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ 92:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./pages/user/thankyou.vue?vue&type=template&id=2f906758&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_c('Navbar'), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"container\">", "</div>", [_vm._ssrNode("<div class=\"row mobile_view\">", "</div>", [_vm._ssrNode("<div class=\"col-md-12\">", "</div>", [_vm._ssrNode("<div class=\"pay_m_title\">", "</div>", [_c('nuxt-link', {
    staticClass: "btn_back",
    attrs: {
      "to": "/user/profile",
      "type": "button"
    }
  }, [_c('i', {
    staticClass: "fa-solid fa-arrow-left-long"
  })]), _vm._ssrNode(" <h6>Your password successfully update.  </h6>")], 2)])]), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"row\">", "</div>", [_vm._ssrNode("<div class=\"col-xl-3 desktop_view\">", "</div>", [_c('LeftsidebarDesktop')], 1), _vm._ssrNode(" "), _vm._ssrNode("<div class=\"col-xl-9\">", "</div>", [_vm._ssrNode("<div class=\"profile_right\">", "</div>", [_vm.loading ? _vm._ssrNode("<span>", "</span>", [_c('Loader')], 1) : _vm._e(), _vm._ssrNode(" <h1 class=\"desktop_view\">Your password successfully update. </h1>")], 2)])], 2)], 2), _vm._ssrNode(" "), _c('Footer')], 2);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./pages/user/thankyou.vue?vue&type=template&id=2f906758&

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./pages/user/thankyou.vue?vue&type=script&lang=js&
/* harmony default export */ var thankyouvue_type_script_lang_js_ = ({
  middleware: "auth",
  head: {
    title: 'Thankyou'
  },
  data() {
    return {
      loading: false
    };
  },
  mounted() {},
  methods: {}
});
// CONCATENATED MODULE: ./pages/user/thankyou.vue?vue&type=script&lang=js&
 /* harmony default export */ var user_thankyouvue_type_script_lang_js_ = (thankyouvue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./pages/user/thankyou.vue





/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  user_thankyouvue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "58e51ff6"
  
)

/* harmony default export */ var thankyou = __webpack_exports__["default"] = (component.exports);

/* nuxt-component-imports */
installComponents(component, {Navbar: __webpack_require__(38).default,LeftsidebarDesktop: __webpack_require__(43).default,Loader: __webpack_require__(42).default,Footer: __webpack_require__(32).default})


/***/ })

};;
//# sourceMappingURL=thankyou.js.map