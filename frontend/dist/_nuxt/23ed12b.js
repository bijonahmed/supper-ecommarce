(window.webpackJsonp=window.webpackJsonp||[]).push([[12,8],{322:function(t,e,r){var content=r(325);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,r(122).default)("d39a30e0",content,!0,{sourceMap:!1})},323:function(t,e,r){"use strict";r.r(e);r(324);var n=r(36),component=Object(n.a)({},(function(){var t=this,e=t._self._c;return e("div",[e("div",{staticClass:"loading-indicator"},[e("div",{staticClass:"loader-container"},[e("center",{staticClass:"loader-text"},[t._v("Loading...")]),t._v(" "),e("img",{attrs:{src:"/loader/loader.gif",alt:"Loader"}})],1)])])}),[],!1,null,"7dbb8f16",null);e.default=component.exports},324:function(t,e,r){"use strict";r(322)},325:function(t,e,r){var n=r(121)((function(i){return i[1]}));n.push([t.i,".loading-indicator[data-v-7dbb8f16]{background-color:hsla(0,0%,100%,.8);height:100%;left:0;position:fixed;top:0;width:100%;z-index:9999}.loader-container[data-v-7dbb8f16],.loading-indicator[data-v-7dbb8f16]{align-items:center;display:flex;justify-content:center}.loader-container[data-v-7dbb8f16]{flex-direction:column;height:100vh;position:relative}.loader-text[data-v-7dbb8f16]{margin:0}.loader-top[data-v-7dbb8f16]{top:0}.loader-bottom[data-v-7dbb8f16]{bottom:0}",""]),n.locals={},t.exports=n},338:function(t,e,r){"use strict";r.r(e);r(45),r(30),r(38),r(49),r(29),r(50);var n=r(74),o=r(22),c=r(10);r(221),r(14),r(37),r(73),r(93),r(71);function l(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function d(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?l(Object(r),!0).forEach((function(e){Object(o.a)(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):l(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}var v={data:function(){return{loading:!1,cart:[],products:[],rproducts:[],itemCount:0,updatedQuantity:0}},mounted:function(){var t=this;this.sellingFast(),this.randomProducts(),this.$nextTick((function(){t.initCarousel()}))},methods:{sellingFast:function(){var t=this;return Object(c.a)(regeneratorRuntime.mark((function e(){var r;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,t.loading=!0,e.next=4,t.$axios.get("/unauthenticate/sellingFast");case 4:r=e.sent,t.products=r.data,e.next=11;break;case 8:e.prev=8,e.t0=e.catch(0),console.error("Error fetching sellingFast:",e.t0);case 11:return e.prev=11,t.loading=!1,e.finish(11);case 14:case"end":return e.stop()}}),e,null,[[0,8,11,14]])})))()},randomProducts:function(){var t=this;return Object(c.a)(regeneratorRuntime.mark((function e(){var r;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,t.loading=!0,e.next=4,t.$axios.get("/unauthenticate/randomProducts");case 4:r=e.sent,t.rproducts=r.data,e.next=11;break;case 8:e.prev=8,e.t0=e.catch(0),console.error("Error fetching sellingFast:",e.t0);case 11:return e.prev=11,t.loading=!1,e.finish(11);case 14:case"end":return e.stop()}}),e,null,[[0,8,11,14]])})))()},addtoCart:function(t){var e=this;this.loading=!0,this.cart.find((function(e){return e.id===t.id}))||this.cart.push(d(d({},t),{},{quantity:1}));var r=JSON.parse(localStorage.getItem("cart"))||[],o=[].concat(Object(n.a)(r),Object(n.a)(this.cart));localStorage.setItem("cart",JSON.stringify(o)),setTimeout((function(){e.loading=!1}),1e3)},initCarousel:function(){new Swiper(".pro_slider",{slidesPerView:1,spaceBetween:20,breakpoints:{320:{slidesPerView:1,spaceBetween:20},377:{slidesPerView:2,spaceBetween:20},480:{slidesPerView:2,spaceBetween:20},576:{slidesPerView:2,spaceBetween:20},768:{slidesPerView:3,spaceBetween:20},992:{slidesPerView:4},1200:{slidesPerView:6}}})}}},f=r(36),component=Object(f.a)(v,(function(){var t=this,e=t._self._c;return e("div",[e("section",{staticClass:"selling_fast"},[e("div",{staticClass:"container app_hide"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("h1",[t._v("Selling Fast")]),t._v(" "),t.loading?e("span",[e("Loader")],1):t._e(),t._v(" "),e("div",{staticClass:"swiper pro_slider"},[e("div",{staticClass:"swiper-wrapper"},t._l(t.products,(function(r,n){return e("div",{key:n,staticClass:"swiper-slide"},[e("nuxt-link",{attrs:{to:"/product-details/".concat(r.slug)}},[e("div",{staticClass:"sell_fast"},[e("div",{staticClass:"product_image"},[e("img",{staticClass:"img-fluid",attrs:{src:r.thumnail,loading:"lazy",alt:""}}),t._v(" "),""!==r.addi_pname&&""!==r.addi_thumnail?e("div",{staticClass:"p_tag"},[e("img",{staticClass:"img-fluid",attrs:{src:r.addi_thumnail,loading:"lazy",alt:""}}),t._v(" "),e("h6",[t._v(t._s(r.addi_pname))])]):t._e()]),t._v(" "),e("h3",[t._v("Get a chance to "),e("span",[t._v("WIN")])]),t._v(" "),e("h2",[t._v(t._s(r.name))])])])],1)})),0)])])])])]),t._v(" "),e("section",{staticClass:"product my-3"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"product_grid"},t._l(t.rproducts,(function(r,n){return e("div",{key:n,staticClass:"product_gview"},[t._m(0,!0),t._v(" "),e("nuxt-link",{attrs:{to:"/product-details/".concat(r.slug)}},[e("div",{staticClass:"product_image"},[e("img",{staticClass:"img-fluid",attrs:{src:r.thumnail,loading:"lazy",alt:""}}),t._v(" "),""!==r.addi_pname&&""!==r.addi_thumnail?e("div",{staticClass:"p_tag"},[e("img",{staticClass:"img-fluid",attrs:{src:r.addi_thumnail,loading:"lazy",alt:""}}),t._v(" "),e("h6",[t._v(t._s(r.addi_pname))])]):t._e()]),t._v(" "),e("h5",[t._v(t._s(r.name))]),t._v(" "),e("p",[t._v("TK."+t._s(r.price))])])],1)})),0)])]),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-4 col-12 m-auto"},[e("nuxt-link",{staticClass:"btn_submit text-center m-0 mb-2 w-100 fw-600",staticStyle:{display:"block","text-decoration":"none"},attrs:{to:"/products"}},[t._v("Explore More")])],1)])])])])}),[function(){var t=this._self._c;return t("button",{staticClass:"active",attrs:{type:"button"}},[t("i",{staticClass:"fa-solid fa-heart"})])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Loader:r(323).default})}}]);