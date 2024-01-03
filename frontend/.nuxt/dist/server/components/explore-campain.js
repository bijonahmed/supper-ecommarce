exports.ids = [2,6];
exports.modules = {

/***/ 33:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(0);
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(vue__WEBPACK_IMPORTED_MODULE_0__);
// plugins/bus.js

const bus = new vue__WEBPACK_IMPORTED_MODULE_0___default.a();
/* harmony default export */ __webpack_exports__["a"] = (bus);

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


/***/ })

};;
//# sourceMappingURL=explore-campain.js.map