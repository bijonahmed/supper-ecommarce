exports.ids = [10];
exports.modules = {

/***/ 46:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/vue-loader/lib/loaders/templateLoader.js??ref--6!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/SoldOut.vue?vue&type=template&id=e2199532&
var render = function render() {
  var _vm = this,
    _c = _vm._self._c;
  return _c('div', [_vm._ssrNode("<section class=\"sold_out\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-12\"><div class=\"sold_out_slider\"><h1>Sold Out</h1> <p>All our sold out campaigns along with their corresponding draw dates are listed here.</p> <div class=\"sl_nav\"><div class=\"swiper-button-next\"></div> <div class=\"swiper-button-prev\"></div></div> <div class=\"swiper sold_out_s\"><div class=\"swiper-wrapper\"><div class=\"swiper-slide\"><div class=\"sell_fast sold_product_box\"><img src=\"/images/iphone15.png\" loading=\"lazy\" alt class=\"img-fulid mb-3\"> <img src=\"/images/soldoutLabel.png\" loading=\"lazy\" alt class=\"img-fulid sold_label\"> <h2>iPhone 15 Pro Max</h2> <h2>IP-2932 </h2> <h3><span>Will be announced</span></h3></div></div> <div class=\"swiper-slide\"><div class=\"sell_fast sold_product_box\"><img src=\"/images/iphone15.png\" loading=\"lazy\" alt class=\"img-fulid mb-3\"> <img src=\"/images/soldoutLabel.png\" loading=\"lazy\" alt class=\"img-fulid sold_label\"> <h2>iPhone 15 Pro Max</h2> <h2>IP-2932 </h2> <h3>Draw Date:<span> 25 Dec 2023</span></h3></div></div> <div class=\"swiper-slide\"><div class=\"sell_fast sold_product_box\"><img src=\"/images/iphone15.png\" loading=\"lazy\" alt class=\"img-fulid mb-3\"> <img src=\"/images/soldoutLabel.png\" loading=\"lazy\" alt class=\"img-fulid sold_label\"> <h2>iPhone 15 Pro Max</h2> <h2>IP-2932 </h2> <h3><span>Will be announced</span></h3></div></div> <div class=\"swiper-slide\"><div class=\"sell_fast sold_product_box\"><img src=\"/images/iphone15.png\" loading=\"lazy\" alt class=\"img-fulid mb-3\"> <img src=\"/images/soldoutLabel.png\" loading=\"lazy\" alt class=\"img-fulid sold_label\"> <h2>iPhone 15 Pro Max</h2> <h2>IP-2932 </h2> <h3>Draw Date:<span> 25 Dec 2023</span></h3></div></div> <div class=\"swiper-slide\"><div class=\"sell_fast sold_product_box\"><img src=\"/images/iphone15.png\" loading=\"lazy\" alt class=\"img-fulid mb-3\"> <img src=\"/images/soldoutLabel.png\" loading=\"lazy\" alt class=\"img-fulid sold_label\"> <h2>iPhone 15 Pro Max</h2> <h2>IP-2932 </h2> <h3><span>Will be announced</span></h3></div></div> <div class=\"swiper-slide\"><div class=\"sell_fast sold_product_box\"><img src=\"/images/iphone15.png\" loading=\"lazy\" alt class=\"img-fulid mb-3\"> <img src=\"/images/soldoutLabel.png\" loading=\"lazy\" alt class=\"img-fulid sold_label\"> <h2>iPhone 15 Pro Max</h2> <h2>IP-2932 </h2> <h3>Draw Date:<span> 25 Dec 2023</span></h3></div></div></div></div></div></div></div></div></section>")]);
};
var staticRenderFns = [];

// CONCATENATED MODULE: ./components/SoldOut.vue?vue&type=template&id=e2199532&

// CONCATENATED MODULE: ./node_modules/babel-loader/lib??ref--2-0!./node_modules/@nuxt/components/dist/loader.js??ref--0-0!./node_modules/vue-loader/lib??vue-loader-options!./components/SoldOut.vue?vue&type=script&lang=js&
/* harmony default export */ var SoldOutvue_type_script_lang_js_ = ({
  data() {
    return {};
  },
  mounted() {
    this.$nextTick(() => {
      this.initCarousel();
    });
  },
  methods: {
    initCarousel() {
      // Sold Out
      new Swiper(".sold_out_s", {
        slidesPerView: 4,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev"
        },
        spaceBetween: 30,
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
            slidesPerView: 3
          },
          1200: {
            slidesPerView: 4
          }
        }
      });
    }
  }
});
// CONCATENATED MODULE: ./components/SoldOut.vue?vue&type=script&lang=js&
 /* harmony default export */ var components_SoldOutvue_type_script_lang_js_ = (SoldOutvue_type_script_lang_js_); 
// EXTERNAL MODULE: ./node_modules/vue-loader/lib/runtime/componentNormalizer.js
var componentNormalizer = __webpack_require__(2);

// CONCATENATED MODULE: ./components/SoldOut.vue





/* normalize component */

var component = Object(componentNormalizer["a" /* default */])(
  components_SoldOutvue_type_script_lang_js_,
  render,
  staticRenderFns,
  false,
  null,
  null,
  "1166c0fc"
  
)

/* harmony default export */ var SoldOut = __webpack_exports__["default"] = (component.exports);

/***/ })

};;
//# sourceMappingURL=sold-out.js.map