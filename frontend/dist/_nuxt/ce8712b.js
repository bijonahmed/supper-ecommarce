(window.webpackJsonp=window.webpackJsonp||[]).push([[4,7],{317:function(t,e,n){var content=n(320);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,n(121).default)("d39a30e0",content,!0,{sourceMap:!1})},319:function(t,e,n){"use strict";n(317)},320:function(t,e,n){var r=n(120)((function(i){return i[1]}));r.push([t.i,".loading-indicator[data-v-7dbb8f16]{background-color:hsla(0,0%,100%,.8);height:100%;left:0;position:fixed;top:0;width:100%;z-index:9999}.loader-container[data-v-7dbb8f16],.loading-indicator[data-v-7dbb8f16]{align-items:center;display:flex;justify-content:center}.loader-container[data-v-7dbb8f16]{flex-direction:column;height:100vh;position:relative}.loader-text[data-v-7dbb8f16]{margin:0}.loader-top[data-v-7dbb8f16]{top:0}.loader-bottom[data-v-7dbb8f16]{bottom:0}",""]),r.locals={},t.exports=r},321:function(t,e,n){"use strict";n.r(e);n(319);var r=n(34),component=Object(r.a)({},(function(){var t=this,e=t._self._c;return e("div",[e("div",{staticClass:"loading-indicator"},[e("div",{staticClass:"loader-container"},[e("center",{staticClass:"loader-text"},[t._v("Loading...")]),t._v(" "),e("img",{attrs:{src:"/loader/loader.gif",alt:"Loader"}})],1)])])}),[],!1,null,"7dbb8f16",null);e.default=component.exports},322:function(t,e,n){"use strict";var r=n(2),c=n(92).find,l=n(146),o="find",d=!0;o in[]&&Array(1)[o]((function(){d=!1})),r({target:"Array",proto:!0,forced:d},{find:function(t){return c(this,t,arguments.length>1?arguments[1]:void 0)}}),l(o)},327:function(t,e,n){"use strict";n.r(e);n(44),n(36),n(45),n(72),n(37),n(73);var r=n(122),c=n(28),l=n(10);n(322),n(14),n(35),n(71),n(91),n(69);function o(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(t);e&&(r=r.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,r)}return n}function d(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?o(Object(n),!0).forEach((function(e){Object(c.a)(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}var v={data:function(){return{loading:!1,cart:[],prouducts:[],itemCount:0,updatedQuantity:0}},mounted:function(){this.sellingFast()},methods:{sellingFast:function(){var t=this;return Object(l.a)(regeneratorRuntime.mark((function e(){var n;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$axios.get("/unauthenticate/sellingFast");case 2:n=e.sent,t.prouducts=n.data;case 4:case"end":return e.stop()}}),e)})))()},addtoCart:function(t){var e=this;this.loading=!0;var n=this.cart.find((function(e){return e.id===t.id}));n?n.quantity+=1:this.cart.push(d(d({},t),{},{quantity:1}));var c=JSON.parse(localStorage.getItem("cart"))||[],l=[].concat(Object(r.a)(c),Object(r.a)(this.cart));localStorage.setItem("cart",JSON.stringify(l)),setTimeout((function(){e.loading=!1}),1e3)},saveCart:function(){localStorage.setItem("cart",JSON.stringify(this.cart))},viewDetails:function(t){var e=this;return Object(l.a)(regeneratorRuntime.mark((function n(){var r,c;return regeneratorRuntime.wrap((function(n){for(;;)switch(n.prev=n.next){case 0:return r=t,n.next=3,e.$axios.get("/unauthenticate/productSlug/".concat(r));case 3:c=n.sent,$("#description").html(c.data.product_descr),$(".details_modal").fadeIn();case 6:case"end":return n.stop()}}),n)})))()},hideDetails:function(){$(".details_modal").fadeOut()},shareBtn:function(){$(".modal_share").fadeIn()},shareBtnCls:function(){$(".modal_share").fadeOut()}}},f=n(34),component=Object(f.a)(v,(function(){var t=this,e=t._self._c;return e("div",[e("section",{staticClass:"campain_sec"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"campain_list"},[e("h4",[t._v("Explore campaigns")]),t._v(" "),e("ul",[t.loading?e("span",[e("Loader")],1):t._e(),t._v(" "),t._l(t.prouducts,(function(n,r){return e("li",{key:r},[e("div",{staticClass:"campain_box"},[t._m(0,!0),t._v(" "),e("div",{staticClass:"row"},[t._m(1,!0),t._v(" "),e("div",{staticClass:"col-md-7"},[e("div",{staticClass:"c_content_right"},[e("div",{staticClass:"c_content_box"},[e("h1",[t._v("Win")]),t._v(" "),e("h2",[t._v(t._s(n.name))]),t._v(" "),e("h6",[t._v("Buy a lottery credit and make it yours!")]),t._v(" "),e("span",[t._v("$"+t._s(n.price))]),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"d-flex"},[e("a",{staticClass:"btn_details show_details",attrs:{href:"javascript:"},on:{click:function(e){return t.viewDetails(n.slug)}}},[t._v("View Details")]),t._v(" "),e("button",{attrs:{type:"button"},on:{click:function(e){return t.addtoCart(n)}}},[t._v("add to cart")])])]),t._v(" "),t._m(2,!0)])]),t._v(" "),e("div",{staticClass:"button_"},[t._m(3,!0),t._v(" "),e("button",{staticClass:"btn_share share_btn",attrs:{type:"button"},on:{click:t.shareBtn}},[e("i",{staticClass:"fa-solid fa-share"})])])])])])])])}))],2)])])])])]),t._v(" "),e("div",{staticClass:"details_modal"},[e("div",{staticClass:"m_content_"},[e("div",{staticClass:"d-flex justify-content-between"},[t._m(4),t._v(" "),e("button",{staticClass:"btn_mclose",attrs:{type:"button"},on:{click:t.hideDetails}},[e("i",{staticClass:"fa-solid fa-x"})])]),t._v(" "),t._m(5)])]),t._v(" "),e("div",{staticClass:"modal_share"},[e("div",{staticClass:"popup"},[e("header",[e("span",[t._v("Share With ")]),t._v(" "),e("div",{staticClass:"close",on:{click:t.shareBtnCls}},[e("i",{staticClass:"fa-solid fa-x"})])]),t._v(" "),t._m(6)])])])}),[function(){var t=this,e=t._self._c;return e("div",{staticClass:"total_ticket"},[e("div",{staticClass:"t_count"},[e("div",[e("h6",[t._v("25")]),t._v(" "),e("p",[t._v("Total")])])]),t._v(" "),e("h5",[t._v("Tickets")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"col-md-5"},[e("div",{staticClass:"c_campain_left"},[e("div",{staticClass:"camp_count"},[e("div",{staticClass:"c_timer",attrs:{id:"timer","data-endtime":"25 october 2024 10:00:00 GMT+01:00"}})]),t._v(" "),e("div",{staticClass:"campain_image"},[e("div",{staticClass:"swiper campain_s"},[e("div",{staticClass:"swiper-wrapper"},[e("div",{staticClass:"swiper-slide"},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/cash.png",loading:"lazy",alt:""}})]),t._v(" "),e("div",{staticClass:"swiper-slide"},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/cash1.png",loading:"lazy",alt:""}})]),t._v(" "),e("div",{staticClass:"swiper-slide"},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/cash2.png",loading:"lazy",alt:""}})])])])]),t._v(" "),e("div",{staticClass:"c_price"},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Lottery Creadit")]),t._v(" "),e("h1",[t._v("BDT125")])])])])])},function(){var t=this._self._c;return t("div",{staticClass:"col-md-12"},[t("p",[this._v(" Draw Date: 21 November, 2023 or earlier based on the time passed. ")])])},function(){var t=this._self._c;return t("button",{staticClass:"btn_share active",attrs:{type:"button"}},[t("i",{staticClass:"fa-solid fa-heart"})])},function(){var t=this._self._c;return t("ul",{staticClass:"nav nav-pills tb_btns tb_btns mb-3",attrs:{id:"pills-tab",role:"tablist"}},[t("li",{staticClass:"nav-item tb_btns_left",attrs:{role:"presentation"}},[t("button",{staticClass:"nav-link active",attrs:{id:"pills-home-tab","data-bs-toggle":"pill","data-bs-target":"#pills-prize",type:"button",role:"tab","aria-controls":"pills-home","aria-selected":"true"}},[this._v("Product Details ")])])])},function(){var t=this._self._c;return t("div",{staticClass:"tab-content",attrs:{id:"pills-tabContent"}},[t("div",{staticClass:"tab-pane p_details fade show active",attrs:{id:"pills-prize",role:"tabpanel","aria-labelledby":"pills-home-tab",tabindex:"0"}},[t("p",{attrs:{id:"description"}})])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"content"},[e("p",[t._v("Share this link via")]),t._v(" "),e("ul",{staticClass:"icons"},[e("a",{attrs:{href:"#"}},[e("i",{staticClass:"fab fa-facebook-f"})]),t._v(" "),e("a",{attrs:{href:"#"}},[e("i",{staticClass:"fab fa-twitter"})]),t._v(" "),e("a",{attrs:{href:"#"}},[e("i",{staticClass:"fab fa-whatsapp"})]),t._v(" "),e("a",{attrs:{href:"#"}},[e("i",{staticClass:"fab fa-telegram-plane"})])]),t._v(" "),e("p",[t._v("Or copy link")]),t._v(" "),e("div",{staticClass:"field"},[e("i",{staticClass:"url-icon uil uil-link"}),t._v(" "),e("input",{attrs:{type:"text",readonly:"",id:"myInput",value:"https://futuregenit.com"}}),t._v(" "),e("button",{attrs:{onclick:"copy()",id:"change_txt"}},[t._v("Copy")])])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Loader:n(321).default})}}]);