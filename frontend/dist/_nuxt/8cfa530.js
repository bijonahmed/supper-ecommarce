(window.webpackJsonp=window.webpackJsonp||[]).push([[45,5,10,11],{315:function(t,e,n){"use strict";n.r(e);var o=n(36),component=Object(o.a)({},(function(){var t=this,e=t._self._c;return e("div",[e("footer",[e("div",{staticClass:"container"},[e("div",{staticClass:"footer"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"footer_links"},[e("div",{staticClass:"d-flex justify-content-around"},[e("div",[e("h6",[t._v("Quick Links")]),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/about"}},[t._v("About")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[t._v("My Account")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/ticket"}},[t._v("Active Ticket")])],1)])]),t._v(" "),e("div",[e("h6",[t._v("Customer Service")]),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/contact"}},[t._v("Contact Us")])],1),t._v(" "),t._m(0)])])])])]),t._v(" "),e("div",{staticClass:"col-md-6"},[t._m(1),t._v(" "),e("div",{staticClass:"app_link"},[e("p",[t._v("Download the WINUP360 app for the ultimate shopping experience!")]),t._v(" "),e("div",{staticClass:"d-flex justify-content-center"},[e("nuxt-link",{attrs:{to:"/download-app"}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/Play.png",loading:"lazy",alt:""}})]),t._v(" "),e("nuxt-link",{attrs:{to:"/download-app"}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/Apple.png",loading:"lazy",alt:""}})])],1)])])])]),t._v(" "),e("div",{staticClass:"copyright_section"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"copyright_text"},[t._m(2),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/agreement",href:"javascript:void();"}},[t._v("User Agreement")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/privacy-policy",href:"javascript:void();"}},[t._v("Privacy Policy")])],1)])])]),t._v(" "),t._m(3)])])])])])}),[function(){var t=this._self._c;return t("li",[t("a",{attrs:{href:"#"}},[this._v("How it is work")])])},function(){var t=this._self._c;return t("div",{staticClass:"social"},[t("a",{attrs:{href:"https://www.facebook.com/winup360",target:"_blank"}},[t("i",{staticClass:"fa-brands fa-facebook-f"})])])},function(){var t=this,e=t._self._c;return e("p",[t._v("© Copyright 2024 "),e("strong",{staticStyle:{color:"#aded28"}},[t._v("winup360")]),t._v(". All Rights Reserved.")])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"we_accept"},[e("p",[t._v("We Accept: ")]),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Bkash.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Roket.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/nogot.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Upay.png",loading:"lazy",alt:""}})])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Footer:n(315).default})},316:function(t,e,n){"use strict";var o=new(n(1).b);e.a=o},317:function(t,e,n){var content=n(319);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,n(122).default)("d6508686",content,!0,{sourceMap:!1})},318:function(t,e,n){"use strict";n(317)},319:function(t,e,n){var o=n(121)((function(i){return i[1]}));o.push([t.i,".mobile_footer[data-v-940fe2c4]{bottom:0;padding:10px 0;position:fixed;width:100%;z-index:1000}.active[data-v-940fe2c4]{color:#007bff}",""]),o.locals={},t.exports=o},320:function(t,e,n){"use strict";n.r(e);var o=n(10),r=(n(71),n(37),n(14),n(29),n(316)),l={data:function(){return{cart:[],_itemCount:0,itemCounts:0}},mounted:function(){var t=this;this.loadCart(),r.a.$on("updateCart",(function(e){t.loadCart()}))},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},methods:{redirectHomePages:function(){this.$router.push("/")},loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var e=0;this.cart.forEach((function(t){e+=parseInt(t.quantity)})),this.itemCounts=e},logout:function(){var t=this;return Object(o.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()}}},c=n(36),component=Object(c.a)(l,(function(){var t=this,e=t._self._c;return e("div",[e("section",{staticClass:"top_nav app_hide"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("nav",{staticClass:"navbar navbar-expand-lg"},[e("div",{staticClass:"container-fluid"},[e("nuxt-link",{staticClass:"navbar-brand",attrs:{to:"/"}},[e("div",{staticClass:"logo_"},[e("img",{staticClass:"img-fluid",attrs:{src:"/images/logo.png",loading:"lazy",alt:""}})])]),t._v(" "),t._m(0),t._v(" "),e("div",{staticClass:"collapse navbar-collapse",attrs:{id:"navbarSupportedContent"}},[e("ul",{staticClass:"navbar-nav ms-auto mb-2 mb-lg-0"},[t._m(1),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link active",attrs:{"aria-current":"page",to:"/products"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("PRODUCT")])])])],1),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link active",attrs:{to:"/winners","aria-current":"page"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("WINNERS")])])])],1),t._v(" "),t._m(2),t._v(" "),t._m(3),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link mobile_ position-relative",attrs:{to:"/cart"}},[t._v("\r\n                                            Cart\r\n                                            "),e("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                                "+t._s(t.itemCounts)+"\r\n                                            ")])])],1),t._v(" "),t.loggedIn?e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link",attrs:{to:"/user/profile"}},[t._v("My Dashboard")])],1):t._e(),t._v(" "),t.loggedIn?e("li",{staticClass:"nav-item"},[e("a",{staticClass:"nav-link",attrs:{href:"#"},on:{click:t.logout}},[t._v("Logout")])]):e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link",attrs:{to:"/login"}},[t._v("Register/Login")])],1)])])],1)])])])])]),t._v(" "),e("section",{staticClass:"mobile_header app_show"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"header_button"},[e("nuxt-link",{class:{active:"/"===t.$route.path},attrs:{to:"/"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("Lottery")])])]),t._v(" "),e("nuxt-link",{class:{active:"/products"===t.$route.path},attrs:{to:"/products"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("PRODUCT")])])]),t._v(" "),e("nuxt-link",{class:{active:"/winners"===t.$route.path},attrs:{to:"/winners"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Winner from last Draw")]),t._v(" "),e("h1",[t._v("WINNERS")])])])],1)])])])])])}),[function(){var t=this._self._c;return t("button",{staticClass:"navbar-toggler",attrs:{type:"button","data-bs-toggle":"collapse","data-bs-target":"#navbarSupportedContent","aria-controls":"navbarSupportedContent","aria-expanded":"false","aria-label":"Toggle navigation"}},[t("i",{staticClass:"fa-solid fa-bars"})])},function(){var t=this._self._c;return t("li",{staticClass:"nav-item"},[t("a",{staticClass:"nav-link active",attrs:{"aria-current":"page",href:"https://www.facebook.com/winup360",target:"_blank"}},[this._v("Need Help? Contact\r\n                                            us\r\n                                        ")])])},function(){var t=this,e=t._self._c;return e("li",{staticClass:"nav-item d-none"},[e("select",{attrs:{name:"",id:""}},[e("option",{attrs:{value:""}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/flags/united-states-emoji-96.png",loading:"lazy",alt:""}}),t._v("USDT")]),t._v(" "),e("option",{attrs:{value:""}},[t._v("BDT")])])])},function(){var t=this,e=t._self._c;return e("li",{staticClass:"nav-item d-none"},[e("select",{attrs:{name:"",id:""}},[e("option",{attrs:{value:""}},[t._v("English")]),t._v(" "),e("option",{attrs:{value:""}},[t._v("Bengali")])])])}],!1,null,null,null);e.default=component.exports},321:function(t,e,n){"use strict";n.r(e);var o=n(10),r=(n(71),n(37),n(14),n(29),n(316)),l=(n(72),{data:function(){return{cart:[],_itemCount:0,itemCounts:0}},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},mounted:function(){var t=this;this.loadCart(),r.a.$on("updateCart",(function(e){t.loadCart()}))},methods:{loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var e=0;this.cart.forEach((function(t){e+=parseInt(t.quantity)})),console.log("Finally get total Cart"+e),this.itemCounts=e},logout:function(){var t=this;return Object(o.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()}}}),c=(n(318),n(36)),component=Object(c.a)(l,(function(){var t=this,e=t._self._c;return e("div",{staticStyle:{position:"sticky",bottom:"0",width:"100%","z-index":"5"}},[e("footer",{staticClass:"mobile_footer app_show",staticStyle:{position:"unset"}},[e("div",{staticClass:"container-fluid"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"f_mnu"},[e("ul",[e("li",{class:{active:"/"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/"}},[e("i",{staticClass:"fa-solid fa-home"})]),t._v(" "),e("p",[t._v("Home")])],1),t._v(" "),e("li",{class:{active:"/user/ticket"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/user/ticket"}},[e("i",{staticClass:"fa-solid fa-ticket"})]),t._v(" "),e("p",[t._v("Ticket")])],1),t._v(" "),e("li",{class:{active:"/offer"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/offer"}},[e("i",{staticClass:"fa-solid fa-gift"})]),t._v(" "),e("p",[t._v("Offers")])],1),t._v(" "),e("li",{class:{active:"/cart"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/cart"}},[e("i",{staticClass:"fa-solid fa-cart-shopping"})]),t._v(" "),e("p",[t._v("Cart")]),t._v(" "),e("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                    "+t._s(t.itemCounts)+"\r\n                                ")])],1),t._v(" "),t._m(0)])])])])])]),t._v(" "),e("div",{staticClass:"offcanvas offcanvas-start app_show",attrs:{tabindex:"-1",id:"mobile_menu","aria-labelledby":"mobile_menuLabel"}},[t._m(1),t._v(" "),e("div",{staticClass:"offcanvas-body",staticStyle:{height:"90%",overflow:"auto"}},[e("div",{staticClass:"tab-content",attrs:{id:"pills-tabContent"}},[e("div",{staticClass:"profile_links"},[e("ul",[t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/wishlist"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/wallet"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/offer"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/ticket"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/payment"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/settings"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/notification"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("a",{attrs:{href:"#"},on:{click:t.logout}},[t._m(2)])]):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-right-from-bracket"}),t._v("Login/Register")])])],1)])])])])])])}),[function(){var t=this,e=t._self._c;return e("li",[e("a",{attrs:{"data-bs-toggle":"offcanvas",href:"#mobile_menu",role:"button","aria-controls":"mobile_menu"}},[e("i",{staticClass:"fa-solid fa-bars"})]),t._v(" "),e("p",[t._v("Menu")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"offcanvas-header"},[e("h5",{staticClass:"offcanvas-title",attrs:{id:"offcanvasExampleLabel"}},[t._v("Lottery")]),t._v(" "),e("button",{staticClass:"btn_close bg-transparent text-white",attrs:{type:"button","data-bs-dismiss":"offcanvas","aria-label":"Close"}},[e("i",{staticClass:"fa-solid fa-x color-white",staticStyle:{color:"#fff"}})])])},function(){var t=this._self._c;return t("span",[t("strong",{staticClass:"fa-solid fa-right-from-bracket"}),this._v("Logout")])}],!1,null,"940fe2c4",null);e.default=component.exports;installComponents(component,{Footer:n(315).default})},369:function(t,e,n){"use strict";n.r(e);var o={head:{title:"Validate OTP"},data:function(){return{countries:[],invaliderror:"",insertdata:{step1:"",step2:"",step3:"",step4:""},verifymsg:"",status:"",errors:{}}},computed:{totalDigits:function(){return 4}},mounted:function(){},methods:{handleInput:function(t){if(t<this.totalDigits){var e="input".concat(t+1);this.$refs[e].focus()}},saveData:function(){var t=this,e=new FormData;e.append("step1",this.insertdata.step1),e.append("step2",this.insertdata.step2),e.append("step3",this.insertdata.step3),e.append("step4",this.insertdata.step4);this.$axios.post("/unauthenticate/verificationCode",e,{headers:{"Content-Type":"multipart/form-data"}}).then((function(e){1==e.data.otp_sts?(t.verifymsg=e.data.message,t.status=e.data.otp_sts,Swal.mixin({toast:!0,position:"top-end",showConfirmButton:!1,timer:3e3,timerProgressBar:!0,didOpen:function(t){t.onmouseenter=Swal.stopTimer,t.onmouseleave=Swal.resumeTimer}}).fire({icon:"success",title:e.data.message}),t.$router.push({path:"/login"}),$("#pills-home-tab").click()):(t.verifymsg=e.data.message,t.status=e.data.otp_sts);console.log(e.data.message)})).catch((function(e){422===e.response.status&&(console.log("---"+e.response.data.errors),t.errors=e.response.data.errors)}))}}},r=n(36),component=Object(r.a)(o,(function(){var t=this,e=t._self._c;return e("div",[e("Navbar"),t._v(" "),e("section",{staticClass:"otp_sec"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6 my-3 mx-auto d-flex",attrs:{bis_skin_checked:"1"}},[e("div",{staticClass:"container my-auto py-5",staticStyle:{"background-color":"#373737","border-radius":"20px"},attrs:{bis_skin_checked:"1"}},[e("div",{staticClass:"row g-0",attrs:{bis_skin_checked:"1"}},[e("div",{staticClass:"col-11 col-sm-10 col-lg-9 col-xl-8 mx-auto",attrs:{bis_skin_checked:"1"}},[0===t.status?e("h3",{staticClass:"fw-600 mb-4 text-center",class:{"text-danger":0===t.status}},[t._v(t._s(t.verifymsg))]):t._e(),t._v(" "),e("h3",{staticClass:"fw-600 mb-4"},[t._v("Validate OTP")]),t._v(" "),t._m(0),t._v(" "),e("form",{staticClass:"forms-sample",attrs:{id:"otp-screen"},on:{submit:function(e){return e.preventDefault(),t.saveData()}}},[e("div",{staticClass:"row g-3",attrs:{bis_skin_checked:"1"}},[e("div",{staticClass:"col",attrs:{bis_skin_checked:"1"}},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.step1,expression:"insertdata.step1"}],ref:"input1",staticClass:"form-control text-center text-6 py-2",attrs:{type:"text",maxlength:"1",autocomplete:"off"},domProps:{value:t.insertdata.step1},on:{input:[function(e){e.target.composing||t.$set(t.insertdata,"step1",e.target.value)},function(e){return t.handleInput(1)}]}}),t._v(" "),t.errors.step1?e("span",{staticClass:"text-danger",staticStyle:{"font-size":"10px"}},[t._v(t._s(t.errors.step1[0]))]):t._e()]),t._v(" "),e("div",{staticClass:"col",attrs:{bis_skin_checked:"1"}},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.step2,expression:"insertdata.step2"}],ref:"input2",staticClass:"form-control text-center text-6 py-2",attrs:{type:"text",maxlength:"1",autocomplete:"off"},domProps:{value:t.insertdata.step2},on:{input:[function(e){e.target.composing||t.$set(t.insertdata,"step2",e.target.value)},function(e){return t.handleInput(2)}]}}),t._v(" "),t.errors.step2?e("span",{staticClass:"text-danger",staticStyle:{"font-size":"10px"}},[t._v(t._s(t.errors.step2[0]))]):t._e()]),t._v(" "),e("div",{staticClass:"col",attrs:{bis_skin_checked:"1"}},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.step3,expression:"insertdata.step3"}],ref:"input3",staticClass:"form-control text-center text-6 py-2",attrs:{type:"text",maxlength:"1",autocomplete:"off"},domProps:{value:t.insertdata.step3},on:{input:[function(e){e.target.composing||t.$set(t.insertdata,"step3",e.target.value)},function(e){return t.handleInput(3)}]}}),t._v(" "),t.errors.step3?e("span",{staticClass:"text-danger",staticStyle:{"font-size":"10px"}},[t._v(t._s(t.errors.step3[0]))]):t._e()]),t._v(" "),e("div",{staticClass:"col",attrs:{bis_skin_checked:"1"}},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.step4,expression:"insertdata.step4"}],ref:"input4",staticClass:"form-control text-center text-6 py-2",attrs:{type:"text",maxlength:"1",autocomplete:"off"},domProps:{value:t.insertdata.step4},on:{input:[function(e){e.target.composing||t.$set(t.insertdata,"step4",e.target.value)},function(e){return t.handleInput(4)}]}}),t._v(" "),t.errors.step4?e("span",{staticClass:"text-danger",staticStyle:{"font-size":"10px"}},[t._v(t._s(t.errors.step4[0]))]):t._e()])]),t._v(" "),t._m(1)])])])])])])])]),t._v(" "),e("Footer"),t._v(" "),e("MobileMenu")],1)}),[function(){var t=this,e=t._self._c;return e("p",{staticClass:"text- mb-4 text-light"},[t._v("Please enter the OTP (one time password) to verify your\r\n                                    account. A Code has been sent to "),e("span",{staticClass:"text-light"},[t._v("your number.")])])},function(){var t=this._self._c;return t("div",{staticClass:"d-grid my-4",attrs:{bis_skin_checked:"1"}},[t("button",{staticClass:"btn",staticStyle:{"background-color":"#b5f927"},attrs:{type:"submit"}},[this._v("Verify")])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Navbar:n(320).default,Footer:n(315).default,MobileMenu:n(321).default})}}]);