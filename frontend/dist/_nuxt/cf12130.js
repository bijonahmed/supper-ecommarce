(window.webpackJsonp=window.webpackJsonp||[]).push([[22,5,10,11],{315:function(t,e,r){"use strict";r.r(e);var n=r(36),component=Object(n.a)({},(function(){var t=this,e=t._self._c;return e("div",[e("footer",[e("div",{staticClass:"container"},[e("div",{staticClass:"footer"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"footer_links"},[e("div",{staticClass:"d-flex justify-content-around"},[e("div",[e("h6",[t._v("Quick Links")]),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/about"}},[t._v("About")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[t._v("My Account")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/ticket"}},[t._v("Active Ticket")])],1)])]),t._v(" "),e("div",[e("h6",[t._v("Customer Service")]),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/contact"}},[t._v("Contact Us")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/faq"}},[t._v("FAQ")])],1),t._v(" "),t._m(0)])])])])]),t._v(" "),t._m(1)])]),t._v(" "),e("div",{staticClass:"copyright_section"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"copyright_text"},[t._m(2),t._v(" "),e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/agreement",href:"javascript:void();"}},[t._v("User Agreement")])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/privacy-policy",href:"javascript:void();"}},[t._v("Privacy Policy")])],1)])])]),t._v(" "),t._m(3)])])])])])}),[function(){var t=this._self._c;return t("li",[t("a",{attrs:{href:"#"}},[this._v("How it is work")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"social"},[e("a",{attrs:{href:"https://www.facebook.com/winup360",target:"_blank"}},[e("i",{staticClass:"fa-brands fa-facebook-f"})])]),t._v(" "),e("div",{staticClass:"app_link"},[e("p",[t._v("Download the LOTTERY app for the ultimate shopping experience!")]),t._v(" "),e("div",{staticClass:"d-flex justify-content-center"},[e("a",{attrs:{href:"https://paly.google.com"}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/Play.png",loading:"lazy",alt:""}})]),t._v(" "),e("a",{attrs:{href:"https://app.store.com"}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/Apple.png",loading:"lazy",alt:""}})])])])])},function(){var t=this,e=t._self._c;return e("p",[t._v("© Copyright 2024 "),e("strong",{staticStyle:{color:"#aded28"}},[t._v("winup360")]),t._v(". All Rights Reserved.")])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"col-md-6"},[e("div",{staticClass:"we_accept"},[e("p",[t._v("We Accept: ")]),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Bkash.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Roket.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/nogot.png",loading:"lazy",alt:""}}),t._v(" "),e("img",{staticClass:"img-fulid",attrs:{src:"/images/Upay.png",loading:"lazy",alt:""}})])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Footer:r(315).default})},316:function(t,e,r){"use strict";var n=new(r(1).b);e.a=n},317:function(t,e,r){var content=r(320);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,r(122).default)("3c254914",content,!0,{sourceMap:!1})},318:function(t,e,r){"use strict";r.r(e);var n=r(10),o=(r(71),r(37),r(14),r(29),r(316)),l={data:function(){return{cart:[],_itemCount:0,itemCounts:0}},mounted:function(){var t=this;this.loadCart(),o.a.$on("updateCart",(function(e){t.loadCart()}))},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},methods:{redirectHomePages:function(){this.$router.push("/")},loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var e=0;this.cart.forEach((function(t){e+=parseInt(t.quantity)})),this.itemCounts=e},logout:function(){var t=this;return Object(n.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()}}},c=r(36),component=Object(c.a)(l,(function(){var t=this,e=t._self._c;return e("div",[e("section",{staticClass:"top_nav app_hide"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("nav",{staticClass:"navbar navbar-expand-lg"},[e("div",{staticClass:"container-fluid"},[e("nuxt-link",{staticClass:"navbar-brand",attrs:{to:"/"}},[e("div",{staticClass:"logo_"},[e("img",{staticClass:"img-fluid",attrs:{src:"/images/logo.png",loading:"lazy",alt:""}})])]),t._v(" "),t._m(0),t._v(" "),e("div",{staticClass:"collapse navbar-collapse",attrs:{id:"navbarSupportedContent"}},[e("ul",{staticClass:"navbar-nav ms-auto mb-2 mb-lg-0"},[t._m(1),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link active",attrs:{"aria-current":"page",to:"/products"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("PRODUCT")])])])],1),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link active",attrs:{to:"/winners","aria-current":"page"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("WINNERS")])])])],1),t._v(" "),t._m(2),t._v(" "),t._m(3),t._v(" "),e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link mobile_ position-relative",attrs:{to:"/cart"}},[t._v("\r\n                                            Cart\r\n                                            "),e("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                                "+t._s(t.itemCounts)+"\r\n                                            ")])])],1),t._v(" "),t.loggedIn?e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link",attrs:{to:"/user/profile"}},[t._v("My Dashboard")])],1):t._e(),t._v(" "),t.loggedIn?e("li",{staticClass:"nav-item"},[e("a",{staticClass:"nav-link",attrs:{href:"#"},on:{click:t.logout}},[t._v("Logout")])]):e("li",{staticClass:"nav-item"},[e("nuxt-link",{staticClass:"nav-link",attrs:{to:"/login"}},[t._v("Register/Login")])],1)])])],1)])])])])]),t._v(" "),e("section",{staticClass:"mobile_header app_show"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-3 m-auto"},[e("div",{staticClass:"header_button my-1",staticStyle:{"border-radius":"5px"},on:{click:t.redirectHomePages}},[e("img",{staticStyle:{width:"100%"},attrs:{src:"/images/logo.png",alt:"",loading:"lazy"}})])])]),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"header_button"},[e("nuxt-link",{class:{active:"/"===t.$route.path},attrs:{to:"/"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("Lottery")])])]),t._v(" "),e("nuxt-link",{class:{active:"/products"===t.$route.path},attrs:{to:"/products"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Win Exclusive Price")]),t._v(" "),e("h1",[t._v("PRODUCT")])])]),t._v(" "),e("nuxt-link",{class:{active:"/winners"===t.$route.path},attrs:{to:"/winners"}},[e("div",{staticClass:"creadit_ticket"},[e("p",[t._v("Winner from last Draw")]),t._v(" "),e("h1",[t._v("WINNERS")])])])],1)])])])])])}),[function(){var t=this._self._c;return t("button",{staticClass:"navbar-toggler",attrs:{type:"button","data-bs-toggle":"collapse","data-bs-target":"#navbarSupportedContent","aria-controls":"navbarSupportedContent","aria-expanded":"false","aria-label":"Toggle navigation"}},[t("i",{staticClass:"fa-solid fa-bars"})])},function(){var t=this._self._c;return t("li",{staticClass:"nav-item"},[t("a",{staticClass:"nav-link active",attrs:{"aria-current":"page",href:"https://www.facebook.com/winup360",target:"_blank"}},[this._v("Need Help? Contact\r\n                                            us\r\n                                        ")])])},function(){var t=this,e=t._self._c;return e("li",{staticClass:"nav-item d-none"},[e("select",{attrs:{name:"",id:""}},[e("option",{attrs:{value:""}},[e("img",{staticClass:"img-fulid",attrs:{src:"/images/flags/united-states-emoji-96.png",loading:"lazy",alt:""}}),t._v("USDT")]),t._v(" "),e("option",{attrs:{value:""}},[t._v("BDT")])])])},function(){var t=this,e=t._self._c;return e("li",{staticClass:"nav-item d-none"},[e("select",{attrs:{name:"",id:""}},[e("option",{attrs:{value:""}},[t._v("English")]),t._v(" "),e("option",{attrs:{value:""}},[t._v("Bengali")])])])}],!1,null,null,null);e.default=component.exports},319:function(t,e,r){"use strict";r(317)},320:function(t,e,r){var n=r(121)((function(i){return i[1]}));n.push([t.i,".mobile_footer[data-v-5f787db9]{bottom:0;padding:10px 0;position:fixed;width:100%;z-index:1000}.active[data-v-5f787db9]{color:#007bff}",""]),n.locals={},t.exports=n},321:function(t,e,r){"use strict";r.r(e);var n=r(10),o=(r(71),r(37),r(14),r(29),r(316)),l=(r(72),{data:function(){return{cart:[],_itemCount:0,itemCounts:0}},computed:{loggedIn:function(){return this.$auth.loggedIn},itemCount:{get:function(){return this._itemCount},set:function(t){this._itemCount=t}}},mounted:function(){var t=this;this.loadCart(),o.a.$on("updateCart",(function(e){t.loadCart()}))},methods:{loadCart:function(){var t=localStorage.getItem("cart");t&&(this.cart=JSON.parse(t));var e=0;this.cart.forEach((function(t){e+=parseInt(t.quantity)})),console.log("Finally get total Cart"+e),this.itemCounts=e},logout:function(){var t=this;return Object(n.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()}}}),c=(r(319),r(36)),component=Object(c.a)(l,(function(){var t=this,e=t._self._c;return e("div",{staticStyle:{position:"sticky",bottom:"0",width:"100%","z-index":"5"}},[e("footer",{staticClass:"mobile_footer app_show",staticStyle:{position:"unset"}},[e("div",{staticClass:"container-fluid"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"f_mnu"},[e("ul",[e("li",{class:{active:"/"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/"}},[e("i",{staticClass:"fa-solid fa-home"})]),t._v(" "),e("p",[t._v("Home")])],1),t._v(" "),e("li",{class:{active:"/user/ticket"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/user/ticket"}},[e("i",{staticClass:"fa-solid fa-ticket"})]),t._v(" "),e("p",[t._v("Ticket")])],1),t._v(" "),e("li",{class:{active:"/offer"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/offer"}},[e("i",{staticClass:"fa-solid fa-gift"})]),t._v(" "),e("p",[t._v("Offers")])],1),t._v(" "),e("li",{class:{active:"/cart"===t.$route.path}},[e("nuxt-link",{attrs:{to:"/cart"}},[e("i",{staticClass:"fa-solid fa-cart-shopping"})]),t._v(" "),e("p",[t._v("Cart")]),t._v(" "),e("span",{staticClass:"position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"},[t._v("\r\n                                    "+t._s(t.itemCounts)+"\r\n                                ")])],1),t._v(" "),t._m(0)])])])])])]),t._v(" "),e("div",{staticClass:"offcanvas offcanvas-start app_show",attrs:{tabindex:"-1",id:"mobile_menu","aria-labelledby":"mobile_menuLabel"}},[t._m(1),t._v(" "),e("div",{staticClass:"offcanvas-body",staticStyle:{height:"90%",overflow:"auto"}},[e("div",{staticClass:"tab-content",attrs:{id:"pills-tabContent"}},[e("div",{staticClass:"profile_links"},[e("ul",[t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                                    Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/wishlist"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/wallet"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/offer"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/ticket"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/payment"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/settings"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("nuxt-link",{attrs:{to:"/user/notification"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),t.loggedIn?e("li",[e("a",{attrs:{href:"#"},on:{ckick:t.logout}},[t._m(2)])]):e("li",[e("nuxt-link",{attrs:{to:"/login"}},[e("span",[e("strong",{staticClass:"fa-solid fa-right-from-bracket"}),t._v("Login")])])],1)])])])])])])}),[function(){var t=this,e=t._self._c;return e("li",[e("a",{attrs:{"data-bs-toggle":"offcanvas",href:"#mobile_menu",role:"button","aria-controls":"mobile_menu"}},[e("i",{staticClass:"fa-solid fa-bars"})]),t._v(" "),e("p",[t._v("Menu")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"offcanvas-header"},[e("h5",{staticClass:"offcanvas-title",attrs:{id:"offcanvasExampleLabel"}},[t._v("Lottery")]),t._v(" "),e("button",{staticClass:"btn_close bg-transparent text-white",attrs:{type:"button","data-bs-dismiss":"offcanvas","aria-label":"Close"}},[e("i",{staticClass:"fa-solid fa-x color-white",staticStyle:{color:"#fff"}})])])},function(){var t=this._self._c;return t("span",[t("strong",{staticClass:"fa-solid fa-right-from-bracket"}),this._v("Logout")])}],!1,null,"5f787db9",null);e.default=component.exports;installComponents(component,{Footer:r(315).default})},361:function(t,e,r){"use strict";r.r(e);var n=r(22),o=(r(73),r(51),r(45),r(52),r(38),r(14),r(10)),l=(r(71),{head:{title:"Register/Login"},data:function(){return{countries:[],invaliderror:"",insertdata:{name:"",fname:"",lname:"",email:"",phone_number:"",date_of_birth:"",nationality_id:"",gender:"",password:"",password_confirmation:""},dismessage:"",showPassword:!1,showRegPassword:!1,showRegConPassword:!1,login:{email:"",password:""},notifmsg:"",errors:{}}},mounted:function(){},methods:{showhidePassword:function(){this.showPassword=!this.showPassword},showhidePasswordreg:function(){this.showRegPassword=!this.showRegPassword},showhidePasswordregConfig:function(){this.showRegConPassword=!this.showRegConPassword},countrys:function(){var t=this;return Object(o.a)(regeneratorRuntime.mark((function e(){var r;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$axios.get("/unauthenticate/countrys");case 2:r=e.sent,t.countries=r.data;case 4:case"end":return e.stop()}}),e)})))()},saveData:function(){var t=this,e=new FormData;e.append("name",this.insertdata.name),e.append("email",this.insertdata.email),e.append("date_of_birth",this.insertdata.date_of_birth),e.append("gender",this.insertdata.gender),e.append("nationality_id",this.insertdata.nationality_id),e.append("phone_number",this.insertdata.phone_number),e.append("password",this.insertdata.password),e.append("password_confirmation",this.insertdata.password_confirmation);this.$axios.post("/auth/register",e,{headers:{"Content-Type":"multipart/form-data"}}).then((function(e){$("#register_msg").html("Congratulations! 🎉 You've successfully registered!"),t.$router.push({path:"/verification"}),$("#pills-home-tab").click()})).catch((function(e){422===e.response.status&&(t.errors=e.response.data.errors)}))},userLogin:function(){var t=this;return Object(o.a)(regeneratorRuntime.mark((function e(){var r,n,data;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,r={email:t.login.email,password:t.login.password},t.dismessage="",e.next=5,t.$axios.post("/auth/login",r);case 5:return n=e.sent,data=n.data,e.next=9,t.$auth.setUserToken(data.access_token);case 9:t.$router.push("/user/profile"),e.next=15;break;case 12:e.prev=12,e.t0=e.catch(0),e.t0.response&&422===e.t0.response.status?(t.errors=e.t0.response.data.errors,t.errorHandler(e.t0)):e.t0.response&&401===e.t0.response.status?(console.error(e.t0.response.data.errors.account[0]),console.log("------"+e.t0.response.data.errors.account[0]),t.dismessage=e.t0.response.data.errors.account[0]):console.error(e.t0);case 15:case"end":return e.stop()}}),e,null,[[0,12]])})))()},errorHandler:function(t){t.response&&t.response.data.errors&&t.response.data.errors.account?(console.log("error : "+t.response.data.errors.account),this.invaliderror=t.response.data.errors.account[0]):console.log("An error occurred. Please try again later.")}}}),c=r(36),component=Object(c.a)(l,(function(){var t=this,e=t._self._c;return e("div",[e("Navbar"),t._v(" "),e("div",{staticClass:"container"},[e("center",[e("h3",{staticStyle:{color:"white"},attrs:{id:"register_msg"}})]),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6 m-auto"},[e("div",{staticClass:"log_regi"},[t._m(0),t._v(" "),e("div",{staticClass:"tab-content",attrs:{id:"pills-tabContent"}},[e("div",{staticClass:"tab-pane fade show active",attrs:{id:"pills-login",role:"tabpanel","aria-labelledby":"pills-home-tab",tabindex:"0"}},[e("div",{staticClass:"login_section"},[e("center",[e("span",{staticClass:"text-danger text-center",attrs:{id:"dismessage"}},[t._v(t._s(t.dismessage))])]),t._v(" "),e("form",{staticClass:"forms-sample",attrs:{id:"formrest_login",enctype:"multipart/form-data"},on:{submit:function(e){return e.preventDefault(),t.userLogin()}}},[e("h5",[t._v("Login")]),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"input-container"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.login.email,expression:"login.email"}],staticClass:"input-field",attrs:{placeholder:"Email",type:"text"},domProps:{value:t.login.email},on:{input:function(e){e.target.composing||t.$set(t.login,"email",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Email ")]),t._v(" "),t.errors.email?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.email[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"})])]),t._v(" "),e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"input-container"},["checkbox"==(t.showPassword?"text":"password")?e("input",{directives:[{name:"model",rawName:"v-model",value:t.login.password,expression:"login.password"}],staticClass:"input-field",attrs:Object(n.a)({placeholder:"Password",id:"password-field",type:"password"},"type","checkbox"),domProps:{checked:Array.isArray(t.login.password)?t._i(t.login.password,null)>-1:t.login.password},on:{change:function(e){var r=t.login.password,n=e.target,o=!!n.checked;if(Array.isArray(r)){var l=t._i(r,null);n.checked?l<0&&t.$set(t.login,"password",r.concat([null])):l>-1&&t.$set(t.login,"password",r.slice(0,l).concat(r.slice(l+1)))}else t.$set(t.login,"password",o)}}}):"radio"==(t.showPassword?"text":"password")?e("input",{directives:[{name:"model",rawName:"v-model",value:t.login.password,expression:"login.password"}],staticClass:"input-field",attrs:Object(n.a)({placeholder:"Password",id:"password-field",type:"password"},"type","radio"),domProps:{checked:t._q(t.login.password,null)},on:{change:function(e){return t.$set(t.login,"password",null)}}}):e("input",{directives:[{name:"model",rawName:"v-model",value:t.login.password,expression:"login.password"}],staticClass:"input-field",attrs:Object(n.a)({placeholder:"Password",id:"password-field",type:"password"},"type",t.showPassword?"text":"password"),domProps:{value:t.login.password},on:{input:function(e){e.target.composing||t.$set(t.login,"password",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Password ")]),t._v(" "),t.errors.password?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.password[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"}),t._v(" "),e("i",{staticClass:"fa-solid fa-eye toggle-password",attrs:{toggle:"#password-field"},on:{click:t.showhidePassword}})])]),t._v(" "),t._m(1)])])],1)]),t._v(" "),e("div",{staticClass:"tab-pane fade",attrs:{id:"pills-regis",role:"tabpanel","aria-labelledby":"pills-profile-tab",tabindex:"0"}},[e("div",{staticClass:"login_section"},[e("form",{staticClass:"forms-sample",attrs:{id:"formrest"},on:{submit:function(e){return e.preventDefault(),t.saveData()}}},[e("h5",[t._v("Registration")]),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"input-container"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.name,expression:"insertdata.name"}],staticClass:"input-field",attrs:{placeholder:" Name ",type:"text"},domProps:{value:t.insertdata.name},on:{input:function(e){e.target.composing||t.$set(t.insertdata,"name",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Name ")]),t._v(" "),t.errors.name?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.name[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"})])]),t._v(" "),e("div",{staticClass:"col-md-6 d-none"},[e("div",{staticClass:"input-container"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.lname,expression:"insertdata.lname"}],staticClass:"input-field",attrs:{placeholder:"Last Name ",type:"text"},domProps:{value:t.insertdata.lname},on:{input:function(e){e.target.composing||t.$set(t.insertdata,"lname",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Last Name ")]),t._v(" "),t.errors.lname?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.lname[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"})])]),t._v(" "),e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"input-container"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.email,expression:"insertdata.email"}],staticClass:"input-field",attrs:{placeholder:"Email",type:"text"},domProps:{value:t.insertdata.email},on:{input:function(e){e.target.composing||t.$set(t.insertdata,"email",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Email ")]),t._v(" "),t.errors.email?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.email[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"})])]),t._v(" "),e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"input_group input-container"},[e("label",{staticClass:"s_label",attrs:{for:"nationality"}},[t._v("Phone")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.phone_number,expression:"insertdata.phone_number"}],staticClass:"input-field",attrs:{placeholder:"01700000000",id:"mobile_code",type:"text"},domProps:{value:t.insertdata.phone_number},on:{input:function(e){e.target.composing||t.$set(t.insertdata,"phone_number",e.target.value)}}}),t._v(" "),t.errors.phone_number?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.phone_number[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"})])]),t._v(" "),e("div",{staticClass:"col-md-12 d-none"},[e("div",{staticClass:"input-container"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.date_of_birth,expression:"insertdata.date_of_birth"}],staticClass:"input-field",attrs:{placeholder:"Date Of Birth",onfocus:"type='date'",type:"text"},domProps:{value:t.insertdata.date_of_birth},on:{input:function(e){e.target.composing||t.$set(t.insertdata,"date_of_birth",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Date Of Birth")]),t._v(" "),t.errors.date_of_birth?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.date_of_birth[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"})])]),t._v(" "),e("div",{staticClass:"col-md-12 d-none"},[e("div",{staticClass:"input_group input-container"},[e("label",{staticClass:"s_label",attrs:{for:"gender"}},[t._v("Gender")]),t._v(" "),e("select",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.gender,expression:"insertdata.gender"}],staticClass:"form-control input-field",attrs:{name:"",id:"gender"},on:{change:function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.insertdata,"gender",e.target.multiple?r:r[0])}}},[e("option",{attrs:{value:"",selected:"",disabled:""}},[t._v("Select One ")]),t._v(" "),e("option",{attrs:{value:"Male"}},[t._v("Male")]),t._v(" "),e("option",{attrs:{value:"Female"}},[t._v("Female")]),t._v(" "),e("option",{attrs:{value:"Others"}},[t._v("Others")])])]),t._v(" "),t.errors.gender?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.gender[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"})]),t._v(" "),e("div",{staticClass:"col-md-12 d-none"},[e("div",{staticClass:"input_group input-container"},[e("label",{staticClass:"s_label",attrs:{for:"nationality"}},[t._v("Nationality")]),t._v(" "),e("select",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.nationality_id,expression:"insertdata.nationality_id"}],staticClass:"form-control input-field",attrs:{id:"nationality"},on:{change:function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.insertdata,"nationality_id",e.target.multiple?r:r[0])}}},[e("option",{attrs:{value:"",disabled:""}},[t._v("Select Nationality")]),t._v(" "),t._l(t.countries,(function(r){return e("option",{key:r.id,domProps:{value:r.id}},[t._v(t._s(r.countryname))])}))],2),t._v(" "),t.errors.nationality_id?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.nationality_id[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"})])]),t._v(" "),e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"input-container"},["checkbox"==(t.showRegPassword?"text":"password")?e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.password,expression:"insertdata.password"}],staticClass:"input-field",attrs:{placeholder:"Password",type:"checkbox"},domProps:{checked:Array.isArray(t.insertdata.password)?t._i(t.insertdata.password,null)>-1:t.insertdata.password},on:{change:function(e){var r=t.insertdata.password,n=e.target,o=!!n.checked;if(Array.isArray(r)){var l=t._i(r,null);n.checked?l<0&&t.$set(t.insertdata,"password",r.concat([null])):l>-1&&t.$set(t.insertdata,"password",r.slice(0,l).concat(r.slice(l+1)))}else t.$set(t.insertdata,"password",o)}}}):"radio"==(t.showRegPassword?"text":"password")?e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.password,expression:"insertdata.password"}],staticClass:"input-field",attrs:{placeholder:"Password",type:"radio"},domProps:{checked:t._q(t.insertdata.password,null)},on:{change:function(e){return t.$set(t.insertdata,"password",null)}}}):e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.password,expression:"insertdata.password"}],staticClass:"input-field",attrs:{placeholder:"Password",type:t.showRegPassword?"text":"password"},domProps:{value:t.insertdata.password},on:{input:function(e){e.target.composing||t.$set(t.insertdata,"password",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Password ")]),t._v(" "),t.errors.password?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.password[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"}),t._v(" "),e("i",{staticClass:"fa-solid fa-eye toggle-password",attrs:{toggle:"#password-field2"},on:{click:t.showhidePasswordreg}})])]),t._v(" "),e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"input-container"},["checkbox"==(t.showRegConPassword?"text":"password")?e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.password_confirmation,expression:"insertdata.password_confirmation"}],staticClass:"input-field",attrs:{placeholder:"Confirm Password",id:"password-field2",type:"checkbox"},domProps:{checked:Array.isArray(t.insertdata.password_confirmation)?t._i(t.insertdata.password_confirmation,null)>-1:t.insertdata.password_confirmation},on:{change:function(e){var r=t.insertdata.password_confirmation,n=e.target,o=!!n.checked;if(Array.isArray(r)){var l=t._i(r,null);n.checked?l<0&&t.$set(t.insertdata,"password_confirmation",r.concat([null])):l>-1&&t.$set(t.insertdata,"password_confirmation",r.slice(0,l).concat(r.slice(l+1)))}else t.$set(t.insertdata,"password_confirmation",o)}}}):"radio"==(t.showRegConPassword?"text":"password")?e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.password_confirmation,expression:"insertdata.password_confirmation"}],staticClass:"input-field",attrs:{placeholder:"Confirm Password",id:"password-field2",type:"radio"},domProps:{checked:t._q(t.insertdata.password_confirmation,null)},on:{change:function(e){return t.$set(t.insertdata,"password_confirmation",null)}}}):e("input",{directives:[{name:"model",rawName:"v-model",value:t.insertdata.password_confirmation,expression:"insertdata.password_confirmation"}],staticClass:"input-field",attrs:{placeholder:"Confirm Password",id:"password-field2",type:t.showRegConPassword?"text":"password"},domProps:{value:t.insertdata.password_confirmation},on:{input:function(e){e.target.composing||t.$set(t.insertdata,"password_confirmation",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Confirm Password ")]),t._v(" "),t.errors.password_confirmation?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.password_confirmation[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"}),t._v(" "),e("i",{staticClass:"fa-solid fa-eye toggle-password",attrs:{toggle:"#password-field2"},on:{click:t.showhidePasswordregConfig}})])]),t._v(" "),t._m(2)])])])])])])])])],1),t._v(" "),e("Footer"),t._v(" "),e("MobileMenu")],1)}),[function(){var t=this,e=t._self._c;return e("ul",{staticClass:"nav nav-pills mb-3",attrs:{id:"pills-tab",role:"tablist"}},[e("li",{staticClass:"nav-item",attrs:{role:"presentation"}},[e("button",{staticClass:"nav-link active",attrs:{id:"pills-home-tab","data-bs-toggle":"pill","data-bs-target":"#pills-login",type:"button",role:"tab","aria-controls":"pills-home","aria-selected":"true"}},[t._v("Login")])]),t._v(" "),e("li",{staticClass:"nav-item",attrs:{role:"presentation"}},[e("button",{staticClass:"nav-link",attrs:{id:"pills-profile-tab","data-bs-toggle":"pill","data-bs-target":"#pills-regis",type:"button",role:"tab","aria-controls":"pills-profile","aria-selected":"false"}},[t._v("Registration")])])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"row pe-0"},[e("div",{staticClass:"col-6"},[e("div",{staticClass:"input-container d-none"},[e("a",{staticClass:"f_link",attrs:{href:"javascript:"}},[t._v("Forget Password?")])])]),t._v(" "),e("div",{staticClass:"col-6 px-0"},[e("div",{staticClass:"input-container text-end",attrs:{bis_skin_checked:"1"}},[e("input",{staticClass:"btn_submit",attrs:{value:"Login",type:"submit"}})])])])},function(){var t=this._self._c;return t("div",{staticClass:"col-md-12"},[t("div",{staticClass:"input-container"},[t("input",{staticClass:"btn_submit",attrs:{type:"submit",value:"Submit"}})])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Navbar:r(318).default,Footer:r(315).default,MobileMenu:r(321).default})}}]);