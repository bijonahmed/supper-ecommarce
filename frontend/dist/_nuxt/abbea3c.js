(window.webpackJsonp=window.webpackJsonp||[]).push([[18,0,10],{315:function(t,l,n){"use strict";n.r(l);var e=n(36),component=Object(e.a)({},(function(){var t=this,l=t._self._c;return l("div",[l("footer",[l("div",{staticClass:"container"},[l("div",{staticClass:"footer"},[l("div",{staticClass:"row"},[l("div",{staticClass:"col-md-6"},[l("div",{staticClass:"footer_links"},[l("div",{staticClass:"d-flex justify-content-around"},[l("div",[l("h6",[t._v("Quick Links")]),t._v(" "),l("ul",[l("li",[l("nuxt-link",{attrs:{to:"/about"}},[t._v("About")])],1),t._v(" "),l("li",[l("nuxt-link",{attrs:{to:"/user/profile"}},[t._v("My Account")])],1),t._v(" "),l("li",[l("nuxt-link",{attrs:{to:"/ticket"}},[t._v("Active Ticket")])],1)])]),t._v(" "),l("div",[l("h6",[t._v("Customer Service")]),t._v(" "),l("ul",[l("li",[l("nuxt-link",{attrs:{to:"/contact"}},[t._v("Contact Us")])],1),t._v(" "),l("li",[l("nuxt-link",{attrs:{to:"/faq"}},[t._v("FAQ")])],1),t._v(" "),t._m(0)])])])])]),t._v(" "),t._m(1)])]),t._v(" "),l("div",{staticClass:"copyright_section"},[l("div",{staticClass:"row"},[l("div",{staticClass:"col-md-6"},[l("div",{staticClass:"copyright_text"},[t._m(2),t._v(" "),l("ul",[l("li",[l("nuxt-link",{attrs:{to:"/agreement",href:"javascript:void();"}},[t._v("User Agreement")])],1),t._v(" "),l("li",[l("nuxt-link",{attrs:{to:"/privacy-policy",href:"javascript:void();"}},[t._v("Privacy Policy")])],1)])])]),t._v(" "),t._m(3)])])])]),t._v(" "),l("MobileMenu")],1)}),[function(){var t=this._self._c;return t("li",[t("a",{attrs:{href:"#"}},[this._v("How it is work")])])},function(){var t=this,l=t._self._c;return l("div",{staticClass:"col-md-6"},[l("div",{staticClass:"social"},[l("a",{attrs:{href:"https://www.facebook.com/winup360",target:"_blank"}},[l("i",{staticClass:"fa-brands fa-facebook-f"})])]),t._v(" "),l("div",{staticClass:"app_link"},[l("p",[t._v("Download the LOTTERY app for the ultimate shopping experience!")]),t._v(" "),l("div",{staticClass:"d-flex justify-content-center"},[l("a",{attrs:{href:"https://paly.google.com"}},[l("img",{staticClass:"img-fulid",attrs:{src:"/images/Play.png",loading:"lazy",alt:""}})]),t._v(" "),l("a",{attrs:{href:"https://app.store.com"}},[l("img",{staticClass:"img-fulid",attrs:{src:"/images/Apple.png",loading:"lazy",alt:""}})])])])])},function(){var t=this,l=t._self._c;return l("p",[t._v("© Copyright 2024 "),l("strong",{staticStyle:{color:"#aded28"}},[t._v("winup360")]),t._v(". All Rights Reserved.")])},function(){var t=this,l=t._self._c;return l("div",{staticClass:"col-md-6"},[l("div",{staticClass:"we_accept"},[l("p",[t._v("We Accept: ")]),t._v(" "),l("img",{staticClass:"img-fulid",attrs:{src:"/images/Bkash.png",loading:"lazy",alt:""}}),t._v(" "),l("img",{staticClass:"img-fulid",attrs:{src:"/images/Roket.png",loading:"lazy",alt:""}}),t._v(" "),l("img",{staticClass:"img-fulid",attrs:{src:"/images/nogot.png",loading:"lazy",alt:""}}),t._v(" "),l("img",{staticClass:"img-fulid",attrs:{src:"/images/Upay.png",loading:"lazy",alt:""}})])])}],!1,null,null,null);l.default=component.exports;installComponents(component,{Footer:n(315).default,MobileMenu:n(321).default})},316:function(t,l,n){"use strict";var e=new(n(1).b);l.a=e},317:function(t,l,n){var content=n(319);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,n(122).default)("d51008f0",content,!0,{sourceMap:!1})},318:function(t,l,n){"use strict";n(317)},319:function(t,l,n){var e=n(121)((function(i){return i[1]}));e.push([t.i,".mobile_footer[data-v-531c47d5]{bottom:0;padding:10px 0;position:fixed;width:100%;z-index:1000}.active[data-v-531c47d5]{color:#007bff}",""]),e.locals={},t.exports=e},320:function(t,l,n){"use strict";n.r(l);var e=n(10),o=(n(71),n(37),n(14),n(29),n(316)),r={data:function(){return{cart:[],_itemCount:0,itemCounts:0}},mounted:function(){var t=this;this.loadCart(),o.a.$on("updateCart",(function(l){t.loadCart()}))},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},methods:{loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var l=0;this.cart.forEach((function(t){l+=parseInt(t.quantity)})),this.itemCounts=l},logout:function(){var t=this;return Object(e.a)(regeneratorRuntime.mark((function l(){return regeneratorRuntime.wrap((function(l){for(;;)switch(l.prev=l.next){case 0:return l.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return l.stop()}}),l)})))()}}},c=n(36),component=Object(c.a)(r,(function(){var t=this,l=t._self._c;return l("div",[l("section",{staticClass:"top_nav"},[l("div",{staticClass:"container"},[l("div",{staticClass:"row"},[l("div",{staticClass:"col-md-12"},[l("nav",{staticClass:"navbar navbar-expand-lg"},[l("div",{staticClass:"container-fluid"},[l("nuxt-link",{staticClass:"navbar-brand",attrs:{to:"/"}},[l("div",{staticClass:"logo_"},[l("img",{staticClass:"img-fluid",attrs:{src:"/images/logo.png",loading:"lazy",alt:""}})])]),t._v(" "),t._m(0),t._v(" "),l("div",{staticClass:"collapse navbar-collapse",attrs:{id:"navbarSupportedContent"}},[l("ul",{staticClass:"navbar-nav ms-auto mb-2 mb-lg-0"},[t._m(1),t._v(" "),l("li",{staticClass:"nav-item"},[l("nuxt-link",{staticClass:"nav-link active",attrs:{"aria-current":"page",to:"/products"}},[l("div",{staticClass:"creadit_ticket"},[l("p",[t._v("Win Exclusive Price")]),t._v(" "),l("h1",[t._v("PRODUCT")])])])],1),t._v(" "),l("li",{staticClass:"nav-item"},[l("nuxt-link",{staticClass:"nav-link active",attrs:{to:"/winners","aria-current":"page"}},[l("div",{staticClass:"creadit_ticket"},[l("p",[t._v("Win Exclusive Price")]),t._v(" "),l("h1",[t._v("WINNERS")])])])],1),t._v(" "),t._m(2),t._v(" "),t._m(3),t._v(" "),l("li",{staticClass:"nav-item"},[l("nuxt-link",{staticClass:"nav-link mobile_ position-relative",attrs:{to:"/cart"}},[t._v("\r\n                                            Cart\r\n                                            "),l("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                                "+t._s(t.itemCounts)+"\r\n                                            ")])])],1),t._v(" "),t.loggedIn?l("li",{staticClass:"nav-item"},[l("nuxt-link",{staticClass:"nav-link",attrs:{to:"/user/profile"}},[t._v("My Dashboard")])],1):t._e(),t._v(" "),t.loggedIn?l("li",{staticClass:"nav-item"},[l("a",{staticClass:"nav-link",attrs:{href:"#"},on:{click:t.logout}},[t._v("Logout")])]):l("li",{staticClass:"nav-item"},[l("nuxt-link",{staticClass:"nav-link",attrs:{to:"/login"}},[t._v("Register/Login")])],1)])])],1)])])])])]),t._v(" "),l("section",{staticClass:"mobile_header app_show"},[l("div",{staticClass:"container"},[l("div",{staticClass:"row"},[l("div",{staticClass:"col-md-12"},[l("div",{staticClass:"header_button"},[l("nuxt-link",{class:{active:"/"===t.$route.path},attrs:{to:"/"}},[l("div",{staticClass:"creadit_ticket"},[l("p",[t._v("Win Exclusive Price")]),t._v(" "),l("h1",[t._v("Lottery")])])]),t._v(" "),l("nuxt-link",{class:{active:"/products"===t.$route.path},attrs:{to:"/products"}},[l("div",{staticClass:"creadit_ticket"},[l("p",[t._v("Win Exclusive Price")]),t._v(" "),l("h1",[t._v("PRODUCT")])])]),t._v(" "),l("nuxt-link",{class:{active:"/winners"===t.$route.path},attrs:{to:"/winners"}},[l("div",{staticClass:"creadit_ticket"},[l("p",[t._v("Winner from last Draw")]),t._v(" "),l("h1",[t._v("WINNERS")])])])],1)])])])])])}),[function(){var t=this._self._c;return t("button",{staticClass:"navbar-toggler",attrs:{type:"button","data-bs-toggle":"collapse","data-bs-target":"#navbarSupportedContent","aria-controls":"navbarSupportedContent","aria-expanded":"false","aria-label":"Toggle navigation"}},[t("i",{staticClass:"fa-solid fa-bars"})])},function(){var t=this._self._c;return t("li",{staticClass:"nav-item"},[t("a",{staticClass:"nav-link active",attrs:{"aria-current":"page",href:"https://www.facebook.com/winup360",target:"_blank"}},[this._v("Need Help? Contact us\r\n                                        ")])])},function(){var t=this,l=t._self._c;return l("li",{staticClass:"nav-item d-none"},[l("select",{attrs:{name:"",id:""}},[l("option",{attrs:{value:""}},[l("img",{staticClass:"img-fulid",attrs:{src:"/images/flags/united-states-emoji-96.png",loading:"lazy",alt:""}}),t._v("USDT")]),t._v(" "),l("option",{attrs:{value:""}},[t._v("BDT")])])])},function(){var t=this,l=t._self._c;return l("li",{staticClass:"nav-item d-none"},[l("select",{attrs:{name:"",id:""}},[l("option",{attrs:{value:""}},[t._v("English")]),t._v(" "),l("option",{attrs:{value:""}},[t._v("Bengali")])])])}],!1,null,null,null);l.default=component.exports},321:function(t,l,n){"use strict";n.r(l);var e=n(10),o=(n(71),n(37),n(14),n(29),n(316)),r=(n(72),{data:function(){return{cart:[],_itemCount:0,itemCounts:0}},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},mounted:function(){var t=this;this.loadCart(),o.a.$on("updateCart",(function(l){t.loadCart()}))},methods:{loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var l=0;this.cart.forEach((function(t){l+=parseInt(t.quantity)})),console.log("Finally get total Cart"+l),this.itemCounts=l},logout:function(){var t=this;return Object(e.a)(regeneratorRuntime.mark((function l(){return regeneratorRuntime.wrap((function(l){for(;;)switch(l.prev=l.next){case 0:return l.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return l.stop()}}),l)})))()}}}),c=(n(318),n(36)),component=Object(c.a)(r,(function(){var t=this,l=t._self._c;return l("div",[l("footer",{staticClass:"mobile_footer app_show"},[l("div",{staticClass:"container-fluid"},[l("div",{staticClass:"row"},[l("div",{staticClass:"col-md-12"},[l("div",{staticClass:"f_mnu"},[l("ul",[l("li",{class:{active:"/"===t.$route.path}},[l("nuxt-link",{attrs:{to:"/"}},[l("i",{staticClass:"fa-solid fa-home"})]),t._v(" "),l("p",[t._v("Home")])],1),t._v(" "),l("li",{class:{active:"/ticket"===t.$route.path}},[l("nuxt-link",{attrs:{to:"/ticket"}},[l("i",{staticClass:"fa-solid fa-ticket"})]),t._v(" "),l("p",[t._v("Ticket")])],1),t._v(" "),l("li",{class:{active:"/offer"===t.$route.path}},[l("nuxt-link",{attrs:{to:"/offer"}},[l("i",{staticClass:"fa-solid fa-gift"})]),t._v(" "),l("p",[t._v("Offers")])],1),t._v(" "),l("li",{class:{active:"/cart"===t.$route.path}},[l("nuxt-link",{attrs:{to:"/cart"}},[l("i",{staticClass:"fa-solid fa-cart-shopping"})]),t._v(" "),l("p",[t._v("Cart")]),t._v(" "),l("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                    "+t._s(t.itemCounts)+"\r\n                                ")])],1),t._v(" "),t._m(0)])])])])])]),t._v(" "),l("div",{staticClass:"offcanvas offcanvas-start app_show",attrs:{tabindex:"-1",id:"mobile_menu","aria-labelledby":"mobile_menuLabel"}},[t._m(1),t._v(" "),l("div",{staticClass:"offcanvas-body",staticStyle:{height:"90%",overflow:"auto"}},[l("div",{staticClass:"tab-content",attrs:{id:"pills-tabContent"}},[l("div",{staticClass:"profile_links"},[l("ul",[t.loggedIn?l("li",[l("nuxt-link",{attrs:{to:"/user/profile"}},[l("span",[l("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1):l("li",[l("nuxt-link",{attrs:{to:"/login"}},[l("span",[l("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?l("li",[l("nuxt-link",{attrs:{to:"/user/wishlist"}},[l("span",[l("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1):l("li",[l("nuxt-link",{attrs:{to:"/login"}},[l("span",[l("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?l("li",[l("nuxt-link",{attrs:{to:"/user/wallet"}},[l("span",[l("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1):l("li",[l("nuxt-link",{attrs:{to:"/login"}},[l("span",[l("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?l("li",[l("nuxt-link",{attrs:{to:"/user/offer"}},[l("span",[l("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1):l("li",[l("nuxt-link",{attrs:{to:"/login"}},[l("span",[l("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?l("li",[l("nuxt-link",{attrs:{to:"/user/ticket"}},[l("span",[l("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1):l("li",[l("nuxt-link",{attrs:{to:"/login"}},[l("span",[l("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?l("li",[l("nuxt-link",{attrs:{to:"/user/payment"}},[l("span",[l("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1):l("li",[l("nuxt-link",{attrs:{to:"/login"}},[l("span",[l("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?l("li",[l("nuxt-link",{attrs:{to:"/user/settings"}},[l("span",[l("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1):l("li",[l("nuxt-link",{attrs:{to:"/login"}},[l("span",[l("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?l("li",[l("nuxt-link",{attrs:{to:"/user/notification"}},[l("span",[l("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1):l("li",[l("nuxt-link",{attrs:{to:"/login"}},[l("span",[l("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),l("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?l("li",[l("a",{attrs:{href:"#"},on:{ckick:t.logout}},[t._m(2)])]):l("li",[l("nuxt-link",{attrs:{to:"/login"}},[l("span",[l("strong",{staticClass:"fa-solid fa-right-from-bracket"}),t._v("Login")])])],1)])])])])])])}),[function(){var t=this,l=t._self._c;return l("li",[l("a",{attrs:{"data-bs-toggle":"offcanvas",href:"#mobile_menu",role:"button","aria-controls":"mobile_menu"}},[l("i",{staticClass:"fa-solid fa-bars"})]),t._v(" "),l("p",[t._v("Menu")])])},function(){var t=this,l=t._self._c;return l("div",{staticClass:"offcanvas-header"},[l("h5",{staticClass:"offcanvas-title",attrs:{id:"offcanvasExampleLabel"}},[t._v("Lottery")]),t._v(" "),l("button",{staticClass:"btn_close bg-transparent text-white",attrs:{type:"button","data-bs-dismiss":"offcanvas","aria-label":"Close"}},[l("i",{staticClass:"fa-solid fa-x color-white",staticStyle:{color:"#fff"}})])])},function(){var t=this._self._c;return t("span",[t("strong",{staticClass:"fa-solid fa-right-from-bracket"}),this._v("Logout")])}],!1,null,"531c47d5",null);l.default=component.exports;installComponents(component,{Footer:n(315).default})},350:function(t,l,n){"use strict";n.r(l);var e={head:{title:"Contact"},data:function(){return{}},mounted:function(){},methods:{}},o=n(36),component=Object(o.a)(e,(function(){var t=this,l=t._self._c;return l("div",[l("Navbar"),t._v(" "),t._m(0),t._v(" "),l("Footer")],1)}),[function(){var t=this,l=t._self._c;return l("section",{staticClass:"contact_section"},[l("div",{staticClass:"container"},[l("div",{staticClass:"row"},[l("div",{staticClass:"col-md-6"},[l("div",{staticClass:"contact_left"},[l("h1",[t._v("Contact")]),t._v(" "),l("p",[t._v("Please fill in the form below and a dedicated member of our team will be in touch within 24 hrs")]),t._v(" "),l("form",{attrs:{action:""}},[l("div",{staticClass:"form_group"},[l("input",{staticClass:"form-control",staticStyle:{color:"#fff"},attrs:{type:"text",name:"name",placeholder:"Name"}})]),t._v(" "),l("div",{staticClass:"form_group"},[l("input",{staticClass:"form-control",staticStyle:{color:"#fff"},attrs:{type:"text",name:"email",placeholder:"Email "}})]),t._v(" "),l("div",{staticClass:"form_group"},[l("select",{staticClass:"form-control",staticStyle:{color:"#fff"},attrs:{name:"issus",id:""}},[l("option",{attrs:{value:""}},[t._v("General Enquires")]),t._v(" "),l("option",{attrs:{value:""}},[t._v("Technical issue")]),t._v(" "),l("option",{attrs:{value:""}},[t._v("Payment issue")])])]),t._v(" "),l("div",{staticClass:"form_group"},[l("textarea",{staticClass:"form-control",staticStyle:{color:"#fff"},attrs:{name:"message",placeholder:"Message",cols:"30",rows:"10"}})]),t._v(" "),l("input",{staticClass:"btn_submit",attrs:{type:"submit",value:"Send Message"}})])])]),t._v(" "),l("div",{staticClass:"col-md-6"},[l("div",{staticClass:"contact_right"},[l("div",{staticClass:"map_location"},[l("iframe",{staticStyle:{border:"0"},attrs:{src:"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d263.64370212294034!2d90.40347026273623!3d23.77973135923232!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1700377247056!5m2!1sen!2sbd",width:"600",height:"450",allowfullscreen:"",loading:"lazy",referrerpolicy:"no-referrer-when-downgrade"}})]),t._v(" "),l("div",{staticClass:"address"},[l("h1",[t._v("Lottery Headquarters")]),t._v(" "),l("p",[t._v("GP ga-129, Mohakhali, Dhaka")]),t._v(" "),l("div",{staticClass:"m_mail"},[l("div",{staticClass:"row"},[l("div",{staticClass:"col-6"},[l("div",{staticClass:"_mobile"},[l("p",[t._v("Call us")]),t._v(" "),l("strong",[t._v("+00 88000")])])]),t._v(" "),l("div",{staticClass:"col-6"},[l("div",{staticClass:"_mobile"},[l("p",[t._v("Email ")]),t._v(" "),l("strong",[t._v("support@lottery.com")])])])])])])])])])])])}],!1,null,null,null);l.default=component.exports;installComponents(component,{Navbar:n(320).default,Footer:n(315).default})}}]);