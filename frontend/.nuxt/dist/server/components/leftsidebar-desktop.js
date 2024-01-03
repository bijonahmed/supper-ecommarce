exports.ids = [4];
exports.modules = {

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

/***/ })

};;
//# sourceMappingURL=leftsidebar-desktop.js.map