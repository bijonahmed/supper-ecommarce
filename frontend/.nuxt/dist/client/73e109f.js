(window.webpackJsonp=window.webpackJsonp||[]).push([[40,0,6,8,10],{315:function(t,e,n){"use strict";n.r(e);var l=n(36),component=Object(l.a)({},(function(){var t=this,e=t._self._c;return e("div",[e("footer",[e("div",{staticClass:"container"},[e("div",{staticClass:"footer"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"footer_links"},[e("div",{staticClass:"d-flex justify-content-around"},[e("div",[e("h6",[t._v("Quick Links")]),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/about"}},[t._v("About")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[t._v("My Account")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/ticket"}},[t._v("Active Ticket")])],1)])]),t._v(" "),e("div",[e("h6",[t._v("Customer Service")]),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/contact"}},[t._v("Contact Us")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/faq"}},[t._v("FAQ")])],1),t._v(" "),t._m(0)])])])])]),t._v(" "),t._m(1)])]),t._v(" "),e("div",{staticClass:"copyright_section"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"copyright_text"},[t._m(2),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/agreement",href:"javascript:void();"}},[t._v("User Agreement")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/privacy-policy",href:"javascript:void();"}},[t._v("Privacy Policy")])],1)])])]),t._v(" "),t._m(3)])])])]),t._v(" "),e("MobileMenu")],1)}),[function(){var t=this._self._c;return t("li",[t("a",{attrs:{href:"#"}},[this._v("How it is work")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"social"},[e("a",{attrs:{href:"https://www.facebook.com/winup360",target:"_blank"}},[e("i",{staticClass:"fa-brands fa-facebook-f"})])]),t._v(" "),e("div",{staticClass:"app_link"},[e("p",[t._v("Download the LOTTERY app for the ultimate shopping experience!")]),t._v(" "),e("div",{staticClass:"d-flex justify-content-center"},[e("a",{attrs:{href:"https://paly.google.com"}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/Play.png",loading:"lazy",alt:""}})]),t._v(" "),e("a",{attrs:{href:"https://app.store.com"}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/Apple.png",loading:"lazy",alt:""}})])])])])},function(){var t=this,e=t._self._c;return e("p",[t._v("© Copyright 2024 "),e("strong",{staticStyle:{color:"#aded28"}},[t._v("winup360")]),t._v(". All Rights Reserved.")])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"we_accept"},[e("p",[t._v("We Accept: ")]),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Bkash.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Roket.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/nogot.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Upay.png",loading:"lazy",alt:""}})])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Footer:n(315).default,MobileMenu:n(321).default})},316:function(t,e,n){"use strict";var l=new(n(1).b);e.a=l},317:function(t,e,n){var content=n(319);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,n(122).default)("d51008f0",content,!0,{sourceMap:!1})},318:function(t,e,n){"use strict";n(317)},319:function(t,e,n){var l=n(121)((function(i){return i[1]}));l.push([t.i,".mobile_footer[data-v-531c47d5]{bottom:0;padding:10px 0;position:fixed;width:100%;z-index:1000}.active[data-v-531c47d5]{color:#007bff}",""]),l.locals={},t.exports=l},320:function(t,e,n){"use strict";n.r(e);var l=n(10),r=(n(71),n(37),n(14),n(29),n(316)),o={data:function(){return{cart:[],_itemCount:0,itemCounts:0}},mounted:function(){var t=this;this.loadCart(),r.a.$on("updateCart",(function(e){t.loadCart()}))},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},methods:{loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var e=0;this.cart.forEach((function(t){e+=parseInt(t.quantity)})),this.itemCounts=e},logout:function(){var t=this;return Object(l.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()}}},c=n(36),component=Object(c.a)(o,(function(){var t=this,e=t._self._c;return e("div",[e("section",{staticClass:"top_nav"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("nav",{staticClass:"navbar navbar-expand-lg"},[e("div",{staticClass:"container-fluid"},[e("nuxt-link",{staticClass:"navbar-brand",attrs:{to:"/"}},[e("div",{staticClass:"logo_"},[e("img",{staticClass:"img-fluid",attrs:{src:"/images/logo.png",loading:"lazy",alt:""}})])]),t._v(" "),t._m(0),t._v(" "),e("div",{staticClass:"collapse navbar-collapse",attrs:{id:"navbarSupportedContent"}},[e("ul",{staticClass:"navbar-nav ms-auto mb-2 mb-lg-0"},[t._m(1),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link active",attrs:{"aria-current":"page",to:"/products"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("PRODUCT")])])])],1),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link active",attrs:{to:"/winners","aria-current":"page"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("WINNERS")])])])],1),t._v(" "),t._m(2),t._v(" "),t._m(3),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link mobile_ position-relative",attrs:{to:"/cart"}},[t._v("\r\n                                            Cart\r\n                                            "),e("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                                "+t._s(t.itemCounts)+"\r\n                                            ")])])],1),t._v(" "),t.loggedIn?e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link",attrs:{to:"/user/profile"}},[t._v("My Dashboard")])],1):t._e(),t._v(" "),t.loggedIn?e("li",{staticClass:"nav-item"},[e("a",{staticClass:"nav-link",attrs:{href:"#"},on:{click:t.logout}},[t._v("Logout")])]):e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link",attrs:{to:"/login"}},[t._v("Register/Login")])],1)])])],1)])])])])]),t._v(" "),e("section",{staticClass:"mobile_header app_show"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"header_button"},[e("nuxt-link",{class:{active:"/"===t.$route.path},attrs:{to:"/"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("Lottery")])])]),t._v(" "),e("nuxt-link",{class:{active:"/products"===t.$route.path},attrs:{to:"/products"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("PRODUCT")])])]),t._v(" "),e("nuxt-link",{class:{active:"/winners"===t.$route.path},attrs:{to:"/winners"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Winner from last Draw")]),t._v(" "),e("h1",[t._v("WINNERS")])])])],1)])])])])])}),[function(){var t=this._self._c;return t("button",{staticClass:"navbar-toggler",attrs:{type:"button","data-bs-toggle":"collapse","data-bs-target":"#navbarSupportedContent","aria-controls":"navbarSupportedContent","aria-expanded":"false","aria-label":"Toggle navigation"}},[t("i",{staticClass:"fa-solid fa-bars"})])},function(){var t=this._self._c;return t("li",{staticClass:"nav-item"},[t("a",{staticClass:"nav-link active",attrs:{"aria-current":"page",href:"https://www.facebook.com/winup360",target:"_blank"}},[this._v("Need Help? Contact us\r\n                                        ")])])},function(){var t=this,e=t._self._c;return e("li",{staticClass:"nav-item d-none"},[e("select",{attrs:{name:"",id:""}},[e("option",{attrs:{value:""}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/flags/united-states-emoji-96.png",loading:"lazy",alt:""}}),t._v("USDT")]),t._v(" "),e("option",{attrs:{value:""}},[t._v("BDT")])])])},function(){var t=this,e=t._self._c;return e("li",{staticClass:"nav-item d-none"},[e("select",{attrs:{name:"",id:""}},[e("option",{attrs:{value:""}},[t._v("English")]),t._v(" "),e("option",{attrs:{value:""}},[t._v("Bengali")])])])}],!1,null,null,null);e.default=component.exports},321:function(t,e,n){"use strict";n.r(e);var l=n(10),r=(n(71),n(37),n(14),n(29),n(316)),o=(n(72),{data:function(){return{cart:[],_itemCount:0,itemCounts:0}},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},mounted:function(){var t=this;this.loadCart(),r.a.$on("updateCart",(function(e){t.loadCart()}))},methods:{loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var e=0;this.cart.forEach((function(t){e+=parseInt(t.quantity)})),console.log("Finally get total Cart"+e),this.itemCounts=e},logout:function(){var t=this;return Object(l.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()}}}),c=(n(318),n(36)),component=Object(c.a)(o,(function(){var t=this,e=t._self._c;return e("div",[e("footer",{staticClass:"mobile_footer app_show"},[e("div",{staticClass:"container-fluid"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"f_mnu"},[e("ul",[e("li",{class:{active:"/"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/"}},[e("i",{staticClass:"fa-solid fa-home"})]),t._v(" "),e("p",[t._v("Home")])],1),t._v(" "),e("li",{class:{active:"/ticket"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/ticket"}},[e("i",{staticClass:"fa-solid fa-ticket"})]),t._v(" "),e("p",[t._v("Ticket")])],1),t._v(" "),e("li",{class:{active:"/offer"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/offer"}},[e("i",{staticClass:"fa-solid fa-gift"})]),t._v(" "),e("p",[t._v("Offers")])],1),t._v(" "),e("li",{class:{active:"/cart"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/cart"}},[e("i",{staticClass:"fa-solid fa-cart-shopping"})]),t._v(" "),e("p",[t._v("Cart")]),t._v(" "),e("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                    "+t._s(t.itemCounts)+"\r\n                                ")])],1),t._v(" "),t._m(0)])])])])])]),t._v(" "),e("div",{staticClass:"offcanvas offcanvas-start app_show",attrs:{tabindex:"-1",id:"mobile_menu","aria-labelledby":"mobile_menuLabel"}},[t._m(1),t._v(" "),e("div",{staticClass:"offcanvas-body",staticStyle:{height:"90%",overflow:"auto"}},[e("div",{staticClass:"tab-content",attrs:{id:"pills-tabContent"}},[e("div",{staticClass:"profile_links"},[e("ul",[t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/wishlist"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/wallet"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/offer"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/ticket"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/payment"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/settings"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/notification"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("a",{attrs:{href:"#"},on:{ckick:t.logout}},[t._m(2)])]):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-right-from-bracket"}),t._v("Login")])])],1)])])])])])])}),[function(){var t=this,e=t._self._c;return e("li",[e("a",{attrs:{"data-bs-toggle":"offcanvas",href:"#mobile_menu",role:"button","aria-controls":"mobile_menu"}},[e("i",{staticClass:"fa-solid fa-bars"})]),t._v(" "),e("p",[t._v("Menu")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"offcanvas-header"},[e("h5",{staticClass:"offcanvas-title",attrs:{id:"offcanvasExampleLabel"}},[t._v("Lottery")]),t._v(" "),e("button",{staticClass:"btn_close bg-transparent text-white",attrs:{type:"button","data-bs-dismiss":"offcanvas","aria-label":"Close"}},[e("i",{staticClass:"fa-solid fa-x color-white",staticStyle:{color:"#fff"}})])])},function(){var t=this._self._c;return t("span",[t("strong",{staticClass:"fa-solid fa-right-from-bracket"}),this._v("Logout")])}],!1,null,"531c47d5",null);e.default=component.exports;installComponents(component,{Footer:n(315).default})},322:function(t,e,n){var content=n(325);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,n(122).default)("d39a30e0",content,!0,{sourceMap:!1})},323:function(t,e,n){"use strict";n.r(e);n(324);var l=n(36),component=Object(l.a)({},(function(){var t=this,e=t._self._c;return e("div",[e("div",{staticClass:"loading-indicator"},[e("div",{staticClass:"loader-container"},[e("center",{staticClass:"loader-text"},[t._v("Loading...")]),t._v(" "),e("img",{attrs:{src:"/loader/loader.gif",alt:"Loader"}})],1)])])}),[],!1,null,"7dbb8f16",null);e.default=component.exports},324:function(t,e,n){"use strict";n(322)},325:function(t,e,n){var l=n(121)((function(i){return i[1]}));l.push([t.i,".loading-indicator[data-v-7dbb8f16]{background-color:hsla(0,0%,100%,.8);height:100%;left:0;position:fixed;top:0;width:100%;z-index:9999}.loader-container[data-v-7dbb8f16],.loading-indicator[data-v-7dbb8f16]{align-items:center;display:flex;justify-content:center}.loader-container[data-v-7dbb8f16]{flex-direction:column;height:100vh;position:relative}.loader-text[data-v-7dbb8f16]{margin:0}.loader-top[data-v-7dbb8f16]{top:0}.loader-bottom[data-v-7dbb8f16]{bottom:0}",""]),l.locals={},t.exports=l},326:function(t,e,n){"use strict";n.r(e);n(45);var l=n(10),r=(n(71),{data:function(){return{insertdata:{name:"",email:"",phone_number:"",address:"",website:"",github:"",twitter:"",instagram:"",facebook:"",image:""}}},mounted:function(){this.defaultLoadingData()},methods:{logout:function(){var t=this;return Object(l.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()},defaultLoadingData:function(){var t=this;this.$axios.get("/auth/showProfileData").then((function(e){console.log(e.data.data.name),t.insertdata.name=e.data.data.name,t.insertdata.email=e.data.data.email}))}}}),o=n(36),component=Object(o.a)(r,(function(){var t=this,e=t._self._c;return e("div",[e("div",{staticClass:"profile_image"},[t._m(0),t._v(" "),e("h1",[t._v(t._s(t.insertdata.name))]),t._v(" "),e("p",[t._v(t._s(t.insertdata.email))])]),t._v(" "),e("div",{staticClass:"profile_links"},[e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                        Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/orderlist"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Order List")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/wishlist"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/wallet"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/offer"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/ticket"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",{staticClass:"d-none"},[e("nuxt-link",{attrs:{to:"/user/payment"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/settings"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",{staticClass:"d-none"},[e("nuxt-link",{attrs:{to:"/user/notification"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("a",{attrs:{href:"#"},on:{click:t.logout}},[t._m(1)])])])])])}),[function(){var t=this._self._c;return t("label",{attrs:{for:"profile_img"}},[t("img",{staticClass:"img-fulid profile_pic",attrs:{src:"/images/blank_profile.png",width:"100%",loading:"lazy",alt:""}})])},function(){var t=this._self._c;return t("span",[t("strong",{staticClass:"fa-solid fa-right-from-bracket"}),this._v("Logout")])}],!1,null,null,null);e.default=component.exports},333:function(t,e,n){var content=n(351);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,n(122).default)("85d7a2d4",content,!0,{sourceMap:!1})},350:function(t,e,n){"use strict";n(333)},351:function(t,e,n){var l=n(121)((function(i){return i[1]}));l.push([t.i,'.cart_title p[data-v-0747c3b9]{color:#acff00;font-family:"Rubik",sans-serif;font-size:19px;font-weight:500;letter-spacing:-.63px;line-height:10px;margin:10px 0 0}',""]),l.locals={},t.exports=l},379:function(t,e,n){"use strict";n.r(e);n(45);var l=n(10),r=(n(14),n(71),{head:{title:"Active Ticket"},data:function(){return{loading:!1,orders:[],order_status:[],notifmsg:"",errors:{}}},mounted:function(){var t=this;return Object(l.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:t.defaultLoading();case 1:case"end":return e.stop()}}),e)})))()},methods:{defaultLoading:function(){var t=this;return Object(l.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$axios.get("/order/activeTickets").then((function(e){return t.orders=e.data.orderdata,!1})).catch((function(t){})).finally((function(){t.loading=!1}));case 2:case"end":return e.stop()}}),e)})))()},addtoCart:function(){this.$router.push("/cart")}}}),o=(n(350),n(36)),component=Object(o.a)(r,(function(){var t=this,e=t._self._c;return e("div",[e("Navbar"),t._v(" "),e("div",{staticClass:"container"},[e("div",{staticClass:"row mobile_view"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"pay_m_title"},[e("nuxt-link",{staticClass:"btn_back",attrs:{to:"/user/profile",type:"button"}},[e("i",{staticClass:"fa-solid fa-arrow-left-long"})]),t._v(" "),e("h6",[t._v("Active Ticket ")])],1)])]),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-xl-3 desktop_view"},[e("LeftsidebarDesktop")],1),t._v(" "),e("div",{staticClass:"col-xl-9"},[e("div",{staticClass:"profile_right"},[e("h1",{staticClass:"desktop_view"},[t._v("Active Ticket")]),t._v(" "),t.loading?e("span",[e("Loader")],1):t._e(),t._v(" "),e("div",{staticClass:"cart_list"},[e("ul",t._l(t.orders,(function(n,l){return e("li",{key:l},[e("div",{staticClass:"cart_item"},[e("div",{staticClass:"t_list"},[e("a",{attrs:{href:"javascript:","data-bs-toggle":"collapse","data-bs-target":"#collapseExample_"+l,"aria-expanded":"false","aria-controls":"collapseExample"}},[t._v(t._s(n.ticketsSum))])]),t._v(" "),e("div",{staticClass:"row",staticStyle:{width:"100%"}},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"cart_left"},[e("div",{staticClass:"c_price",staticStyle:{position:"unset"}},[e("img",{staticClass:"img-fulid",staticStyle:{width:"100%"},attrs:{src:n.thumbnail_img,alt:""}})]),t._v(" "),e("div",{staticClass:"cart_title"},[e("h1",[t._v("Order ID: "+t._s(n.orderId))]),t._v(" "),e("h1",[t._v(t._s(n.name))]),t._v(" "),e("p",[t._v("BDT"+t._s(n.price))]),t._v(" "),e("span",[t._v("Issue On:"+t._s(n.placeOn))]),e("br"),t._v(" "),e("span",[t._v(t._s(n.total_selling)+" Out Of "+t._s(n.total_tickts)+"\r\n                                                        "),e("nuxt-link",{staticClass:"btn_submit",staticStyle:{padding:"2px 8px","font-size":"10px","text-decoration":"none"},attrs:{to:"/"}},[t._v("Buy more")])],1)])]),t._v(" "),e("div",{staticClass:"ticket_list_op"},[e("div",{staticClass:"collapse",attrs:{id:"collapseExample_"+l}},[e("div",{staticClass:"card card-body"},[e("span",[t._v(t._s(n.implodedtickets))])])])])])])])])})),0)])])])])]),t._v(" "),e("Footer")],1)}),[],!1,null,"0747c3b9",null);e.default=component.exports;installComponents(component,{Navbar:n(320).default,LeftsidebarDesktop:n(326).default,Loader:n(323).default,Footer:n(315).default})}}]);