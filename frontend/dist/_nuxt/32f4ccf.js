(window.webpackJsonp=window.webpackJsonp||[]).push([[23,5,10,11],{315:function(t,n,l){"use strict";l.r(n);var o=l(36),component=Object(o.a)({},(function(){var t=this,n=t._self._c;return n("div",[n("footer",[n("div",{staticClass:"container"},[n("div",{staticClass:"footer"},[n("div",{staticClass:"row"},[n("div",{staticClass:"col-md-6"},[n("div",{staticClass:"footer_links"},[n("div",{staticClass:"d-flex justify-content-around"},[n("div",[n("h6",[t._v("Quick Links")]),t._v(" "),n("ul",[n("li",[n("nuxt-link",{attrs:{to:"/about"}},[t._v("About")])],1),t._v(" "),n("li",[n("nuxt-link",{attrs:{to:"/user/profile"}},[t._v("My Account")])],1),t._v(" "),n("li",[n("nuxt-link",{attrs:{to:"/user/ticket"}},[t._v("Active Ticket")])],1)])]),t._v(" "),n("div",[n("h6",[t._v("Customer Service")]),t._v(" "),n("ul",[n("li",[n("nuxt-link",{attrs:{to:"/contact"}},[t._v("Contact Us")])],1),t._v(" "),n("li",[n("nuxt-link",{attrs:{to:"/faq"}},[t._v("FAQ")])],1),t._v(" "),t._m(0)])])])])]),t._v(" "),t._m(1)])]),t._v(" "),n("div",{staticClass:"copyright_section"},[n("div",{staticClass:"row"},[n("div",{staticClass:"col-md-6"},[n("div",{staticClass:"copyright_text"},[t._m(2),t._v(" "),n("ul",[n("li",[n("nuxt-link",{attrs:{to:"/agreement",href:"javascript:void();"}},[t._v("User Agreement")])],1),t._v(" "),n("li",[n("nuxt-link",{attrs:{to:"/privacy-policy",href:"javascript:void();"}},[t._v("Privacy Policy")])],1)])])]),t._v(" "),t._m(3)])])])])])}),[function(){var t=this._self._c;return t("li",[t("a",{attrs:{href:"#"}},[this._v("How it is work")])])},function(){var t=this,n=t._self._c;return n("div",{staticClass:"col-md-6"},[n("div",{staticClass:"social"},[n("a",{attrs:{href:"https://www.facebook.com/winup360",target:"_blank"}},[n("i",{staticClass:"fa-brands fa-facebook-f"})])]),t._v(" "),n("div",{staticClass:"app_link"},[n("p",[t._v("Download the LOTTERY app for the ultimate shopping experience!")]),t._v(" "),n("div",{staticClass:"d-flex justify-content-center"},[n("a",{attrs:{href:"https://paly.google.com"}},[n("img",{staticClass:"img-fulid",attrs:{src:"/images/Play.png",loading:"lazy",alt:""}})]),t._v(" "),n("a",{attrs:{href:"https://app.store.com"}},[n("img",{staticClass:"img-fulid",attrs:{src:"/images/Apple.png",loading:"lazy",alt:""}})])])])])},function(){var t=this,n=t._self._c;return n("p",[t._v("© Copyright 2024 "),n("strong",{staticStyle:{color:"#aded28"}},[t._v("winup360")]),t._v(". All Rights Reserved.")])},function(){var t=this,n=t._self._c;return n("div",{staticClass:"col-md-6"},[n("div",{staticClass:"we_accept"},[n("p",[t._v("We Accept: ")]),t._v(" "),n("img",{staticClass:"img-fulid",attrs:{src:"/images/Bkash.png",loading:"lazy",alt:""}}),t._v(" "),n("img",{staticClass:"img-fulid",attrs:{src:"/images/Roket.png",loading:"lazy",alt:""}}),t._v(" "),n("img",{staticClass:"img-fulid",attrs:{src:"/images/nogot.png",loading:"lazy",alt:""}}),t._v(" "),n("img",{staticClass:"img-fulid",attrs:{src:"/images/Upay.png",loading:"lazy",alt:""}})])])}],!1,null,null,null);n.default=component.exports;installComponents(component,{Footer:l(315).default})},316:function(t,n,l){"use strict";var o=new(l(1).b);n.a=o},317:function(t,n,l){var content=l(320);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,l(122).default)("3c254914",content,!0,{sourceMap:!1})},318:function(t,n,l){"use strict";l.r(n);var o=l(10),e=(l(71),l(37),l(14),l(29),l(316)),r={data:function(){return{cart:[],_itemCount:0,itemCounts:0}},mounted:function(){var t=this;this.loadCart(),e.a.$on("updateCart",(function(n){t.loadCart()}))},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},methods:{redirectHomePages:function(){this.$router.push("/")},loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var n=0;this.cart.forEach((function(t){n+=parseInt(t.quantity)})),this.itemCounts=n},logout:function(){var t=this;return Object(o.a)(regeneratorRuntime.mark((function n(){return regeneratorRuntime.wrap((function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return n.stop()}}),n)})))()}}},c=l(36),component=Object(c.a)(r,(function(){var t=this,n=t._self._c;return n("div",[n("section",{staticClass:"top_nav app_hide"},[n("div",{staticClass:"container"},[n("div",{staticClass:"row"},[n("div",{staticClass:"col-md-12"},[n("nav",{staticClass:"navbar navbar-expand-lg"},[n("div",{staticClass:"container-fluid"},[n("nuxt-link",{staticClass:"navbar-brand",attrs:{to:"/"}},[n("div",{staticClass:"logo_"},[n("img",{staticClass:"img-fluid",attrs:{src:"/images/logo.png",loading:"lazy",alt:""}})])]),t._v(" "),t._m(0),t._v(" "),n("div",{staticClass:"collapse navbar-collapse",attrs:{id:"navbarSupportedContent"}},[n("ul",{staticClass:"navbar-nav ms-auto mb-2 mb-lg-0"},[t._m(1),t._v(" "),n("li",{staticClass:"nav-item"},[n("nuxt-link",{staticClass:"nav-link active",attrs:{"aria-current":"page",to:"/products"}},[n("div",{staticClass:"creadit_ticket"},[n("p",[t._v("Win Exclusive Price")]),t._v(" "),n("h1",[t._v("PRODUCT")])])])],1),t._v(" "),n("li",{staticClass:"nav-item"},[n("nuxt-link",{staticClass:"nav-link active",attrs:{to:"/winners","aria-current":"page"}},[n("div",{staticClass:"creadit_ticket"},[n("p",[t._v("Win Exclusive Price")]),t._v(" "),n("h1",[t._v("WINNERS")])])])],1),t._v(" "),t._m(2),t._v(" "),t._m(3),t._v(" "),n("li",{staticClass:"nav-item"},[n("nuxt-link",{staticClass:"nav-link mobile_ position-relative",attrs:{to:"/cart"}},[t._v("\r\n                                            Cart\r\n                                            "),n("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                                "+t._s(t.itemCounts)+"\r\n                                            ")])])],1),t._v(" "),t.loggedIn?n("li",{staticClass:"nav-item"},[n("nuxt-link",{staticClass:"nav-link",attrs:{to:"/user/profile"}},[t._v("My Dashboard")])],1):t._e(),t._v(" "),t.loggedIn?n("li",{staticClass:"nav-item"},[n("a",{staticClass:"nav-link",attrs:{href:"#"},on:{click:t.logout}},[t._v("Logout")])]):n("li",{staticClass:"nav-item"},[n("nuxt-link",{staticClass:"nav-link",attrs:{to:"/login"}},[t._v("Register/Login")])],1)])])],1)])])])])]),t._v(" "),n("section",{staticClass:"mobile_header app_show"},[n("div",{staticClass:"container"},[n("div",{staticClass:"row"},[n("div",{staticClass:"col-3 m-auto"},[n("div",{staticClass:"header_button my-1",staticStyle:{"border-radius":"5px"},on:{click:t.redirectHomePages}},[n("img",{staticStyle:{width:"100%"},attrs:{src:"/images/logo.png",alt:"",loading:"lazy"}})])])]),t._v(" "),n("div",{staticClass:"row"},[n("div",{staticClass:"col-md-12"},[n("div",{staticClass:"header_button"},[n("nuxt-link",{class:{active:"/"===t.$route.path},attrs:{to:"/"}},[n("div",{staticClass:"creadit_ticket"},[n("p",[t._v("Win Exclusive Price")]),t._v(" "),n("h1",[t._v("Lottery")])])]),t._v(" "),n("nuxt-link",{class:{active:"/products"===t.$route.path},attrs:{to:"/products"}},[n("div",{staticClass:"creadit_ticket"},[n("p",[t._v("Win Exclusive Price")]),t._v(" "),n("h1",[t._v("PRODUCT")])])]),t._v(" "),n("nuxt-link",{class:{active:"/winners"===t.$route.path},attrs:{to:"/winners"}},[n("div",{staticClass:"creadit_ticket"},[n("p",[t._v("Winner from last Draw")]),t._v(" "),n("h1",[t._v("WINNERS")])])])],1)])])])])])}),[function(){var t=this._self._c;return t("button",{staticClass:"navbar-toggler",attrs:{type:"button","data-bs-toggle":"collapse","data-bs-target":"#navbarSupportedContent","aria-controls":"navbarSupportedContent","aria-expanded":"false","aria-label":"Toggle navigation"}},[t("i",{staticClass:"fa-solid fa-bars"})])},function(){var t=this._self._c;return t("li",{staticClass:"nav-item"},[t("a",{staticClass:"nav-link active",attrs:{"aria-current":"page",href:"https://www.facebook.com/winup360",target:"_blank"}},[this._v("Need Help? Contact\r\n                                            us\r\n                                        ")])])},function(){var t=this,n=t._self._c;return n("li",{staticClass:"nav-item d-none"},[n("select",{attrs:{name:"",id:""}},[n("option",{attrs:{value:""}},[n("img",{staticClass:"img-fulid",attrs:{src:"/images/flags/united-states-emoji-96.png",loading:"lazy",alt:""}}),t._v("USDT")]),t._v(" "),n("option",{attrs:{value:""}},[t._v("BDT")])])])},function(){var t=this,n=t._self._c;return n("li",{staticClass:"nav-item d-none"},[n("select",{attrs:{name:"",id:""}},[n("option",{attrs:{value:""}},[t._v("English")]),t._v(" "),n("option",{attrs:{value:""}},[t._v("Bengali")])])])}],!1,null,null,null);n.default=component.exports},319:function(t,n,l){"use strict";l(317)},320:function(t,n,l){var o=l(121)((function(i){return i[1]}));o.push([t.i,".mobile_footer[data-v-5f787db9]{bottom:0;padding:10px 0;position:fixed;width:100%;z-index:1000}.active[data-v-5f787db9]{color:#007bff}",""]),o.locals={},t.exports=o},321:function(t,n,l){"use strict";l.r(n);var o=l(10),e=(l(71),l(37),l(14),l(29),l(316)),r=(l(72),{data:function(){return{cart:[],_itemCount:0,itemCounts:0}},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},mounted:function(){var t=this;this.loadCart(),e.a.$on("updateCart",(function(n){t.loadCart()}))},methods:{loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var n=0;this.cart.forEach((function(t){n+=parseInt(t.quantity)})),console.log("Finally get total Cart"+n),this.itemCounts=n},logout:function(){var t=this;return Object(o.a)(regeneratorRuntime.mark((function n(){return regeneratorRuntime.wrap((function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return n.stop()}}),n)})))()}}}),c=(l(319),l(36)),component=Object(c.a)(r,(function(){var t=this,n=t._self._c;return n("div",{staticStyle:{position:"sticky",bottom:"0",width:"100%","z-index":"5"}},[n("footer",{staticClass:"mobile_footer app_show",staticStyle:{position:"unset"}},[n("div",{staticClass:"container-fluid"},[n("div",{staticClass:"row"},[n("div",{staticClass:"col-md-12"},[n("div",{staticClass:"f_mnu"},[n("ul",[n("li",{class:{active:"/"===t.$route.path}},[n("nuxt-link",{attrs:{to:"/"}},[n("i",{staticClass:"fa-solid fa-home"})]),t._v(" "),n("p",[t._v("Home")])],1),t._v(" "),n("li",{class:{active:"/user/ticket"===t.$route.path}},[n("nuxt-link",{attrs:{to:"/user/ticket"}},[n("i",{staticClass:"fa-solid fa-ticket"})]),t._v(" "),n("p",[t._v("Ticket")])],1),t._v(" "),n("li",{class:{active:"/offer"===t.$route.path}},[n("nuxt-link",{attrs:{to:"/offer"}},[n("i",{staticClass:"fa-solid fa-gift"})]),t._v(" "),n("p",[t._v("Offers")])],1),t._v(" "),n("li",{class:{active:"/cart"===t.$route.path}},[n("nuxt-link",{attrs:{to:"/cart"}},[n("i",{staticClass:"fa-solid fa-cart-shopping"})]),t._v(" "),n("p",[t._v("Cart")]),t._v(" "),n("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                    "+t._s(t.itemCounts)+"\r\n                                ")])],1),t._v(" "),t._m(0)])])])])])]),t._v(" "),n("div",{staticClass:"offcanvas offcanvas-start app_show",attrs:{tabindex:"-1",id:"mobile_menu","aria-labelledby":"mobile_menuLabel"}},[t._m(1),t._v(" "),n("div",{staticClass:"offcanvas-body",staticStyle:{height:"90%",overflow:"auto"}},[n("div",{staticClass:"tab-content",attrs:{id:"pills-tabContent"}},[n("div",{staticClass:"profile_links"},[n("ul",[t.loggedIn?n("li",[n("nuxt-link",{attrs:{to:"/user/profile"}},[n("span",[n("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1):n("li",[n("nuxt-link",{attrs:{to:"/login"}},[n("span",[n("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?n("li",[n("nuxt-link",{attrs:{to:"/user/wishlist"}},[n("span",[n("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1):n("li",[n("nuxt-link",{attrs:{to:"/login"}},[n("span",[n("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?n("li",[n("nuxt-link",{attrs:{to:"/user/wallet"}},[n("span",[n("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1):n("li",[n("nuxt-link",{attrs:{to:"/login"}},[n("span",[n("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?n("li",[n("nuxt-link",{attrs:{to:"/user/offer"}},[n("span",[n("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1):n("li",[n("nuxt-link",{attrs:{to:"/login"}},[n("span",[n("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?n("li",[n("nuxt-link",{attrs:{to:"/user/ticket"}},[n("span",[n("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1):n("li",[n("nuxt-link",{attrs:{to:"/login"}},[n("span",[n("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?n("li",[n("nuxt-link",{attrs:{to:"/user/payment"}},[n("span",[n("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1):n("li",[n("nuxt-link",{attrs:{to:"/login"}},[n("span",[n("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?n("li",[n("nuxt-link",{attrs:{to:"/user/settings"}},[n("span",[n("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1):n("li",[n("nuxt-link",{attrs:{to:"/login"}},[n("span",[n("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?n("li",[n("nuxt-link",{attrs:{to:"/user/notification"}},[n("span",[n("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1):n("li",[n("nuxt-link",{attrs:{to:"/login"}},[n("span",[n("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),n("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?n("li",[n("a",{attrs:{href:"#"},on:{ckick:t.logout}},[t._m(2)])]):n("li",[n("nuxt-link",{attrs:{to:"/login"}},[n("span",[n("strong",{staticClass:"fa-solid fa-right-from-bracket"}),t._v("Login")])])],1)])])])])])])}),[function(){var t=this,n=t._self._c;return n("li",[n("a",{attrs:{"data-bs-toggle":"offcanvas",href:"#mobile_menu",role:"button","aria-controls":"mobile_menu"}},[n("i",{staticClass:"fa-solid fa-bars"})]),t._v(" "),n("p",[t._v("Menu")])])},function(){var t=this,n=t._self._c;return n("div",{staticClass:"offcanvas-header"},[n("h5",{staticClass:"offcanvas-title",attrs:{id:"offcanvasExampleLabel"}},[t._v("Lottery")]),t._v(" "),n("button",{staticClass:"btn_close bg-transparent text-white",attrs:{type:"button","data-bs-dismiss":"offcanvas","aria-label":"Close"}},[n("i",{staticClass:"fa-solid fa-x color-white",staticStyle:{color:"#fff"}})])])},function(){var t=this._self._c;return t("span",[t("strong",{staticClass:"fa-solid fa-right-from-bracket"}),this._v("Logout")])}],!1,null,"5f787db9",null);n.default=component.exports;installComponents(component,{Footer:l(315).default})},362:function(t,n,l){"use strict";l.r(n);var o={head:{title:"Offer"},data:function(){return{}},mounted:function(){},methods:{addtoCart:function(){this.$router.push("/cart")}}},e=l(36),component=Object(e.a)(o,(function(){var t=this,n=t._self._c;return n("div",[n("Navbar"),t._v(" "),t._m(0),t._v(" "),n("Footer"),t._v(" "),n("MobileMenu")],1)}),[function(){var t=this,n=t._self._c;return n("div",{staticClass:"container"},[n("div",{staticClass:"row"},[n("div",{staticClass:"col-xl-12"},[n("div",{staticClass:"profile_right"},[n("h1",{staticClass:"desktop_view"},[t._v("Offers")]),t._v(" "),n("div",{staticClass:"row"},[n("div",{staticClass:"col-md-4"},[n("div",{staticClass:"bonus_section"},[n("div",{},[n("h5",[t._v("Get 10% Extra "),n("br"),t._v("on Binance top-up")]),t._v(" "),n("a",{attrs:{href:"#"}},[t._v("Topup")])])])]),t._v(" "),n("div",{staticClass:"col-md-4"},[n("div",{staticClass:"bonus_section"},[n("div",{},[n("h5",[t._v("Get 10% Extra "),n("br"),t._v("on Binance top-up")]),t._v(" "),n("a",{attrs:{href:"#"}},[t._v("Topup")])])])])])])])])])}],!1,null,null,null);n.default=component.exports;installComponents(component,{Navbar:l(318).default,Footer:l(315).default,MobileMenu:l(321).default})}}]);