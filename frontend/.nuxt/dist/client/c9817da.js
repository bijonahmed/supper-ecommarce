(window.webpackJsonp=window.webpackJsonp||[]).push([[26,0,8,10],{315:function(t,e,o){"use strict";o.r(e);var n=o(36),component=Object(n.a)({},(function(){var t=this,e=t._self._c;return e("div",[e("footer",[e("div",{staticClass:"container"},[e("div",{staticClass:"footer"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"footer_links"},[e("div",{staticClass:"d-flex justify-content-around"},[e("div",[e("h6",[t._v("Quick Links")]),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/about"}},[t._v("About")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[t._v("My Account")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/ticket"}},[t._v("Active Ticket")])],1)])]),t._v(" "),e("div",[e("h6",[t._v("Customer Service")]),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/contact"}},[t._v("Contact Us")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/faq"}},[t._v("FAQ")])],1),t._v(" "),t._m(0)])])])])]),t._v(" "),t._m(1)])]),t._v(" "),e("div",{staticClass:"copyright_section"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"copyright_text"},[t._m(2),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/agreement",href:"javascript:void();"}},[t._v("User Agreement")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/privacy-policy",href:"javascript:void();"}},[t._v("Privacy Policy")])],1)])])]),t._v(" "),t._m(3)])])])]),t._v(" "),e("MobileMenu")],1)}),[function(){var t=this._self._c;return t("li",[t("a",{attrs:{href:"#"}},[this._v("How it is work")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"social"},[e("a",{attrs:{href:"https://www.facebook.com/winup360",target:"_blank"}},[e("i",{staticClass:"fa-brands fa-facebook-f"})])]),t._v(" "),e("div",{staticClass:"app_link"},[e("p",[t._v("Download the LOTTERY app for the ultimate shopping experience!")]),t._v(" "),e("div",{staticClass:"d-flex justify-content-center"},[e("a",{attrs:{href:"https://paly.google.com"}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/Play.png",loading:"lazy",alt:""}})]),t._v(" "),e("a",{attrs:{href:"https://app.store.com"}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/Apple.png",loading:"lazy",alt:""}})])])])])},function(){var t=this,e=t._self._c;return e("p",[t._v("© Copyright 2024 "),e("strong",{staticStyle:{color:"#aded28"}},[t._v("winup360")]),t._v(". All Rights Reserved.")])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"we_accept"},[e("p",[t._v("We Accept: ")]),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Bkash.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Roket.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/nogot.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Upay.png",loading:"lazy",alt:""}})])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Footer:o(315).default,MobileMenu:o(321).default})},316:function(t,e,o){"use strict";var n=new(o(1).b);e.a=n},317:function(t,e,o){var content=o(319);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,o(122).default)("d51008f0",content,!0,{sourceMap:!1})},318:function(t,e,o){"use strict";o(317)},319:function(t,e,o){var n=o(121)((function(i){return i[1]}));n.push([t.i,".mobile_footer[data-v-531c47d5]{bottom:0;padding:10px 0;position:fixed;width:100%;z-index:1000}.active[data-v-531c47d5]{color:#007bff}",""]),n.locals={},t.exports=n},320:function(t,e,o){"use strict";o.r(e);var n=o(10),r=(o(71),o(37),o(14),o(29),o(316)),l={data:function(){return{cart:[],_itemCount:0,itemCounts:0}},mounted:function(){var t=this;this.loadCart(),r.a.$on("updateCart",(function(e){t.loadCart()}))},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},methods:{loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var e=0;this.cart.forEach((function(t){e+=parseInt(t.quantity)})),this.itemCounts=e},logout:function(){var t=this;return Object(n.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()}}},c=o(36),component=Object(c.a)(l,(function(){var t=this,e=t._self._c;return e("div",[e("section",{staticClass:"top_nav"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("nav",{staticClass:"navbar navbar-expand-lg"},[e("div",{staticClass:"container-fluid"},[e("nuxt-link",{staticClass:"navbar-brand",attrs:{to:"/"}},[e("div",{staticClass:"logo_"},[e("img",{staticClass:"img-fluid",attrs:{src:"/images/logo.png",loading:"lazy",alt:""}})])]),t._v(" "),t._m(0),t._v(" "),e("div",{staticClass:"collapse navbar-collapse",attrs:{id:"navbarSupportedContent"}},[e("ul",{staticClass:"navbar-nav ms-auto mb-2 mb-lg-0"},[t._m(1),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link active",attrs:{"aria-current":"page",to:"/products"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("PRODUCT")])])])],1),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link active",attrs:{to:"/winners","aria-current":"page"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("WINNERS")])])])],1),t._v(" "),t._m(2),t._v(" "),t._m(3),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link mobile_ position-relative",attrs:{to:"/cart"}},[t._v("\r\n                                            Cart\r\n                                            "),e("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                                "+t._s(t.itemCounts)+"\r\n                                            ")])])],1),t._v(" "),t.loggedIn?e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link",attrs:{to:"/user/profile"}},[t._v("My Dashboard")])],1):t._e(),t._v(" "),t.loggedIn?e("li",{staticClass:"nav-item"},[e("a",{staticClass:"nav-link",attrs:{href:"#"},on:{click:t.logout}},[t._v("Logout")])]):e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link",attrs:{to:"/login"}},[t._v("Register/Login")])],1)])])],1)])])])])]),t._v(" "),e("section",{staticClass:"mobile_header app_show"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"header_button"},[e("nuxt-link",{class:{active:"/"===t.$route.path},attrs:{to:"/"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("Lottery")])])]),t._v(" "),e("nuxt-link",{class:{active:"/products"===t.$route.path},attrs:{to:"/products"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("PRODUCT")])])]),t._v(" "),e("nuxt-link",{class:{active:"/winners"===t.$route.path},attrs:{to:"/winners"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Winner from last Draw")]),t._v(" "),e("h1",[t._v("WINNERS")])])])],1)])])])])])}),[function(){var t=this._self._c;return t("button",{staticClass:"navbar-toggler",attrs:{type:"button","data-bs-toggle":"collapse","data-bs-target":"#navbarSupportedContent","aria-controls":"navbarSupportedContent","aria-expanded":"false","aria-label":"Toggle navigation"}},[t("i",{staticClass:"fa-solid fa-bars"})])},function(){var t=this._self._c;return t("li",{staticClass:"nav-item"},[t("a",{staticClass:"nav-link active",attrs:{"aria-current":"page",href:"https://www.facebook.com/winup360",target:"_blank"}},[this._v("Need Help? Contact us\r\n                                        ")])])},function(){var t=this,e=t._self._c;return e("li",{staticClass:"nav-item d-none"},[e("select",{attrs:{name:"",id:""}},[e("option",{attrs:{value:""}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/flags/united-states-emoji-96.png",loading:"lazy",alt:""}}),t._v("USDT")]),t._v(" "),e("option",{attrs:{value:""}},[t._v("BDT")])])])},function(){var t=this,e=t._self._c;return e("li",{staticClass:"nav-item d-none"},[e("select",{attrs:{name:"",id:""}},[e("option",{attrs:{value:""}},[t._v("English")]),t._v(" "),e("option",{attrs:{value:""}},[t._v("Bengali")])])])}],!1,null,null,null);e.default=component.exports},321:function(t,e,o){"use strict";o.r(e);var n=o(10),r=(o(71),o(37),o(14),o(29),o(316)),l=(o(72),{data:function(){return{cart:[],_itemCount:0,itemCounts:0}},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},mounted:function(){var t=this;this.loadCart(),r.a.$on("updateCart",(function(e){t.loadCart()}))},methods:{loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var e=0;this.cart.forEach((function(t){e+=parseInt(t.quantity)})),console.log("Finally get total Cart"+e),this.itemCounts=e},logout:function(){var t=this;return Object(n.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()}}}),c=(o(318),o(36)),component=Object(c.a)(l,(function(){var t=this,e=t._self._c;return e("div",[e("footer",{staticClass:"mobile_footer app_show"},[e("div",{staticClass:"container-fluid"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"f_mnu"},[e("ul",[e("li",{class:{active:"/"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/"}},[e("i",{staticClass:"fa-solid fa-home"})]),t._v(" "),e("p",[t._v("Home")])],1),t._v(" "),e("li",{class:{active:"/ticket"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/ticket"}},[e("i",{staticClass:"fa-solid fa-ticket"})]),t._v(" "),e("p",[t._v("Ticket")])],1),t._v(" "),e("li",{class:{active:"/offer"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/offer"}},[e("i",{staticClass:"fa-solid fa-gift"})]),t._v(" "),e("p",[t._v("Offers")])],1),t._v(" "),e("li",{class:{active:"/cart"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/cart"}},[e("i",{staticClass:"fa-solid fa-cart-shopping"})]),t._v(" "),e("p",[t._v("Cart")]),t._v(" "),e("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                    "+t._s(t.itemCounts)+"\r\n                                ")])],1),t._v(" "),t._m(0)])])])])])]),t._v(" "),e("div",{staticClass:"offcanvas offcanvas-start app_show",attrs:{tabindex:"-1",id:"mobile_menu","aria-labelledby":"mobile_menuLabel"}},[t._m(1),t._v(" "),e("div",{staticClass:"offcanvas-body",staticStyle:{height:"90%",overflow:"auto"}},[e("div",{staticClass:"tab-content",attrs:{id:"pills-tabContent"}},[e("div",{staticClass:"profile_links"},[e("ul",[t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/wishlist"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/wallet"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/offer"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/ticket"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/payment"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/settings"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/notification"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("a",{attrs:{href:"#"},on:{ckick:t.logout}},[t._m(2)])]):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-right-from-bracket"}),t._v("Login")])])],1)])])])])])])}),[function(){var t=this,e=t._self._c;return e("li",[e("a",{attrs:{"data-bs-toggle":"offcanvas",href:"#mobile_menu",role:"button","aria-controls":"mobile_menu"}},[e("i",{staticClass:"fa-solid fa-bars"})]),t._v(" "),e("p",[t._v("Menu")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"offcanvas-header"},[e("h5",{staticClass:"offcanvas-title",attrs:{id:"offcanvasExampleLabel"}},[t._v("Lottery")]),t._v(" "),e("button",{staticClass:"btn_close bg-transparent text-white",attrs:{type:"button","data-bs-dismiss":"offcanvas","aria-label":"Close"}},[e("i",{staticClass:"fa-solid fa-x color-white",staticStyle:{color:"#fff"}})])])},function(){var t=this._self._c;return t("span",[t("strong",{staticClass:"fa-solid fa-right-from-bracket"}),this._v("Logout")])}],!1,null,"531c47d5",null);e.default=component.exports;installComponents(component,{Footer:o(315).default})},322:function(t,e,o){var content=o(325);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,o(122).default)("d39a30e0",content,!0,{sourceMap:!1})},323:function(t,e,o){"use strict";o.r(e);o(324);var n=o(36),component=Object(n.a)({},(function(){var t=this,e=t._self._c;return e("div",[e("div",{staticClass:"loading-indicator"},[e("div",{staticClass:"loader-container"},[e("center",{staticClass:"loader-text"},[t._v("Loading...")]),t._v(" "),e("img",{attrs:{src:"/loader/loader.gif",alt:"Loader"}})],1)])])}),[],!1,null,"7dbb8f16",null);e.default=component.exports},324:function(t,e,o){"use strict";o(322)},325:function(t,e,o){var n=o(121)((function(i){return i[1]}));n.push([t.i,".loading-indicator[data-v-7dbb8f16]{background-color:hsla(0,0%,100%,.8);height:100%;left:0;position:fixed;top:0;width:100%;z-index:9999}.loader-container[data-v-7dbb8f16],.loading-indicator[data-v-7dbb8f16]{align-items:center;display:flex;justify-content:center}.loader-container[data-v-7dbb8f16]{flex-direction:column;height:100vh;position:relative}.loader-text[data-v-7dbb8f16]{margin:0}.loader-top[data-v-7dbb8f16]{top:0}.loader-bottom[data-v-7dbb8f16]{bottom:0}",""]),n.locals={},t.exports=n},335:function(t,e,o){var content=o(355);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,o(122).default)("5945c066",content,!0,{sourceMap:!1})},354:function(t,e,o){"use strict";o(335)},355:function(t,e,o){var n=o(121)((function(i){return i[1]}));n.push([t.i,".txtformat{text-align:center;-webkit-text-decoration:none;text-decoration:none;width:100%}",""]),n.locals={},t.exports=n},385:function(t,e,o){"use strict";o.r(e);o(45),o(51),o(38),o(14),o(49),o(29),o(50);var n=o(10),r=o(74),l=o(22),c=(o(71),o(221),o(37),o(73),o(93),o(30),o(55),o(316));function d(t,e){var o=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),o.push.apply(o,n)}return o}function v(t){for(var e=1;e<arguments.length;e++){var o=null!=arguments[e]?arguments[e]:{};e%2?d(Object(o),!0).forEach((function(e){Object(l.a)(t,e,o[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(o)):d(Object(o)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(o,e))}))}return t}var _={head:{title:"Product Details"},data:function(){var t;return t={cart:[],slider_img:[],choose_size:"",subtotal:0,category_id:"",itemCount:0,pro_row:[],prodAttr:[],ticket_qty:"",stock_qty:""},Object(l.a)(t,"pro_row",{price:0}),Object(l.a)(t,"ticketprice",""),Object(l.a)(t,"loading",!1),Object(l.a)(t,"description",""),Object(l.a)(t,"addi_pname",""),Object(l.a)(t,"addi_thumnail",""),Object(l.a)(t,"addi_product_price",""),Object(l.a)(t,"addi_pname",""),Object(l.a)(t,"add_product_qty",""),Object(l.a)(t,"addi_description",""),t},mounted:function(){this.fetchData()},computed:{},methods:{getPlainText:function(t){return(new DOMParser).parseFromString(t,"text/html").body.textContent||""},updatePrice:function(){console.log("Ticket Quantity:",this.ticket_qty),console.log("Product Row Price Before:",this.pro_row.price);var t=this.ticket_qty*this.pro_row.price;this.ticketprice=t,console.log("Result:",t),console.log("Product Row Price After:",this.pro_row.price)},addtoCart:function(t){var e=this;if(this.loading=!0,27===this.category_id){if(""===this.ticket_qty)return this.loading=!1,Swal.fire({position:"top-end",icon:"warning",title:"Please select your ticket quantity!",showConfirmButton:!1,timer:1500}),!1}else if(""===this.choose_size)return this.loading=!1,Swal.fire({position:"top-end",icon:"warning",title:"Please select your size!",showConfirmButton:!1,timer:1500}),!1;var o=this.cart.find((function(o){return o.id===t.id&&o.size===e.choose_size}));o?o.quantity+=1:27===this.category_id?this.cart.push(v(v({},t),{},{size:this.choose_size,category_id:this.category_id,ticketprice:this.ticketprice,ticket_qty:this.ticket_qty,quantity:this.ticket_qty,price:this.ticketprice})):this.cart.push(v(v({},t),{},{size:this.choose_size,category_id:this.category_id,ticketprice:this.ticketprice,ticket_qty:this.ticket_qty,quantity:1}));var n=JSON.parse(localStorage.getItem("cart"))||[],l=[].concat(Object(r.a)(n),Object(r.a)(this.cart));localStorage.setItem("cart",JSON.stringify(l)),c.a.$emit("updateCart",l),setTimeout((function(){e.loading=!1}),1e3)},saveCart:function(){localStorage.setItem("cart",JSON.stringify(this.cart))},btnSize:function(){$(".size_chart_modal").fadeIn()},btnSizeClose:function(){$(".size_chart_modal").fadeOut()},fetchData:function(){var t=this;return Object(n.a)(regeneratorRuntime.mark((function e(){var o,n;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return o=t.$route.params.slug,e.next=3,t.$axios.get("/unauthenticate/productSlug/".concat(o));case 3:n=e.sent,console.log("----"+n.data.pro_row.stock_qty),t.slider_img=n.data.slider_img,t.prodAttr=n.data.prodAttr,t.pro_row=n.data.pro_row,t.category_id=n.data.category_id,t.stock_qty=n.data.pro_row.stock_qty,t.addi_pname=n.data.additional.addi_pname,t.addi_thumnail=n.data.additional.addi_thumnail,t.addi_product_price=n.data.additional.addi_product_price,t.add_product_qty=n.data.additional.add_product_qty,t.addi_description=n.data.additional.addi_description,t.description=n.data.pro_row.description,$(".productdetails").html(n.data.pro_row.description);case 17:case"end":return e.stop()}}),e)})))()}}},f=(o(354),o(36)),component=Object(f.a)(_,(function(){var t=this,e=t._self._c;return e("div",[e("Navbar"),t._v(" "),e("section",{staticClass:"product_details"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[t.loading?e("span",[e("Loader")],1):t._e(),t._v(" "),e("div",{staticClass:"col-md-5"},[e("div",{staticClass:"pd_slider"},[e("swiper-container",{staticClass:"mySwiper",attrs:{pagination:"true"}},t._l(t.slider_img,(function(img,t){return e("swiper-slide",{key:t},[e("img",{staticClass:"img-fluid",attrs:{src:img.thumnail,loading:"lazy",alt:""}})])})),1)],1)]),t._v(" "),e("div",{staticClass:"col-md-7"},[e("div",{staticClass:"detail_part"},[e("h1",[t._v(t._s(t.pro_row.name))]),t._v(" "),e("div",{staticClass:"clr_size"},[e("h2",{staticClass:"mb-0"},[t._v("Price: BDT"+t._s(t.pro_row.price))]),t._v(" "),27!==t.category_id?e("h2",{staticClass:"mb-2"},[t._v("You will get a Lottery Ticket for free ")]):t._e(),t._v(" "),27!==t.category_id?e("div",{staticClass:"d-flex justify-content-between align-items-center"},[e("div",{staticClass:"custom-select"},[e("select",{directives:[{name:"model",rawName:"v-model",value:t.choose_size,expression:"choose_size"}],attrs:{name:"choose_size"},on:{change:function(e){var o=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.choose_size=e.target.multiple?o:o[0]}}},[e("option",{attrs:{value:""}},[t._v("Size")]),t._v(" "),t._l(t.prodAttr,(function(o){return e("option",{key:o.id},[t._v(t._s(o.name))])}))],2),t._v(" "),e("span",{staticClass:"custom-arrow"})]),t._v(" "),e("div",{staticClass:"d-flex align-items-center"},[e("button",{staticClass:"btn_size",on:{click:t.btnSize}},[e("i",{staticClass:"fa-solid fa-question-circle"}),t._v("Size Guide")])])]):e("div",{staticClass:"d-flex justify-content-between align-items-center"},[e("div",{staticClass:"custom-select"},[e("select",{directives:[{name:"model",rawName:"v-model",value:t.ticket_qty,expression:"ticket_qty"}],on:{change:[function(e){var o=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.ticket_qty=e.target.multiple?o:o[0]},t.updatePrice]}},[e("option",{attrs:{value:""}},[t._v("Select")]),t._v(" "),t._l(t.pro_row.stock_qty,(function(o,n){return e("option",{key:n},[t._v(t._s(o))])}))],2),t._v(" "),e("span",{staticClass:"custom-arrow"})])])]),t._v(" "),e("div",{staticClass:"price_cart_box"},[e("div",[e("p",[t._v("Price")]),t._v(" "),e("h3",[t._v("BDT "+t._s(t.ticketprice||t.pro_row.price))])]),t._v(" "),1==t.pro_row.stock_status?e("button",{staticClass:"btn_submit",on:{click:function(e){return t.addtoCart(t.pro_row)}}},[t._v("Add to cart")]):e("button",{staticClass:"btn_submit"},[t._v("Stock Out")])]),t._v(" "),t._m(0),t._v(" "),""!==t.addi_pname&&""!==t.addi_thumnail?e("div",{staticClass:"ticket_details"},[e("h2",[t._v("Free Ticket Description")]),t._v(" "),e("hr"),t._v(" "),e("h1",[t._v(t._s(t.addi_pname))]),t._v(" "),e("div",{staticClass:"des_img_t"},[e("p",{staticClass:"addi_description",staticStyle:{color:"white","text-align":"justify"}},[t._v(t._s(t.getPlainText(t.addi_description)))]),t._v(" "),e("div",[e("img",{staticClass:"img-fluid",attrs:{src:t.addi_thumnail,loading:"lazy",alt:""}})])])]):t._e()])])])])]),t._v(" "),e("div",{staticClass:"size_chart_modal"},[e("div",{staticClass:"chart_img"},[e("div",{staticClass:"d-flex justify-content-end"},[e("button",{staticClass:"btn_mclose",on:{click:t.btnSizeClose}},[e("i",{staticClass:"fa-solid fa-x"})])]),t._v(" "),e("img",{staticClass:"img-fluid",attrs:{src:"/images/size_chart.webp",loading:"lazy",alt:""}})])]),t._v(" "),e("Footer")],1)}),[function(){var t=this,e=t._self._c;return e("div",{staticClass:"accordion accordion-flush",attrs:{id:"accordionFlushExample"}},[e("div",{staticClass:"accordion-item"},[e("h2",{staticClass:"accordion-header"},[e("button",{staticClass:"accordion-button collapsed",attrs:{type:"button","data-bs-toggle":"collapse","data-bs-target":"#flush-collapseOne","aria-expanded":"false","aria-controls":"flush-collapseOne"}},[t._v("\r\n                                        Description\r\n                                    ")])]),t._v(" "),e("div",{staticClass:"accordion-collapse collapse show",attrs:{id:"flush-collapseOne","data-bs-parent":"#accordionFlushExample"}},[e("div",{staticClass:"accordion-body"},[e("p",{staticClass:"productdetails",staticStyle:{color:"white","text-align":"justify"}})])])])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Navbar:o(320).default,Loader:o(323).default,Footer:o(315).default})}}]);