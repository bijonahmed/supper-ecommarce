(window.webpackJsonp=window.webpackJsonp||[]).push([[12,8],{322:function(t,e,r){var content=r(325);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,r(122).default)("d39a30e0",content,!0,{sourceMap:!1})},323:function(t,e,r){"use strict";r.r(e);r(324);var n=r(36),component=Object(n.a)({},(function(){var t=this,e=t._self._c;return e("div",[e("div",{staticClass:"loading-indicator"},[e("div",{staticClass:"loader-container"},[e("center",{staticClass:"loader-text"},[t._v("Loading...")]),t._v(" "),e("img",{attrs:{src:"/loader/loader.gif",alt:"Loader"}})],1)])])}),[],!1,null,"7dbb8f16",null);e.default=component.exports},324:function(t,e,r){"use strict";r(322)},325:function(t,e,r){var n=r(121)((function(i){return i[1]}));n.push([t.i,".loading-indicator[data-v-7dbb8f16]{background-color:hsla(0,0%,100%,.8);height:100%;left:0;position:fixed;top:0;width:100%;z-index:9999}.loader-container[data-v-7dbb8f16],.loading-indicator[data-v-7dbb8f16]{align-items:center;display:flex;justify-content:center}.loader-container[data-v-7dbb8f16]{flex-direction:column;height:100vh;position:relative}.loader-text[data-v-7dbb8f16]{margin:0}.loader-top[data-v-7dbb8f16]{top:0}.loader-bottom[data-v-7dbb8f16]{bottom:0}",""]),n.locals={},t.exports=n},338:function(t,e,r){"use strict";r.r(e);r(45),r(73),r(49),r(30),r(38),r(50),r(29),r(51);var n=r(74),o=r(22),l=r(10);r(71),r(93),r(221),r(14),r(37);function c(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function d(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?c(Object(r),!0).forEach((function(e){Object(o.a)(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):c(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}var v={data:function(){return{imgloading:!0,loading:!1,cart:[],products:[],rproducts:[],itemCount:0,updatedQuantity:0,login:{email:"",password:""},showPassword:!1,errors:{},invaliderror:"",notifmsg:""}},mounted:function(){var t=this;setTimeout((function(){t.randomProducts(),t.imgloading=!1}),2e3),this.sellingFast(),this.$nextTick((function(){t.initCarousel()}))},computed:{loggedIn:function(){return this.$auth.loggedIn}},methods:{userLogin:function(){var t=this;return Object(l.a)(regeneratorRuntime.mark((function e(){var r,n,data;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,r={email:t.login.email,password:t.login.password},e.next=4,t.$axios.post("/auth/login",r);case 4:return n=e.sent,data=n.data,e.next=8,t.$auth.setUserToken(data.access_token);case 8:t.closePopup(),Swal.mixin({toast:!0,position:"top-end",showConfirmButton:!1,timer:3e3,timerProgressBar:!0,didOpen:function(t){t.onmouseenter=Swal.stopTimer,t.onmouseleave=Swal.resumeTimer}}).fire({icon:"success",title:"Signed in successfully"}),t.$router.push("/"),e.next=18;break;case 14:e.prev=14,e.t0=e.catch(0),422===e.t0.response.status&&(t.errors=e.t0.response.data.errors,t.errorHandler(e.t0)),console.log(e.t0);case 18:case"end":return e.stop()}}),e,null,[[0,14]])})))()},wishlist:function(t){var e=this;return Object(l.a)(regeneratorRuntime.mark((function r(){var n;return regeneratorRuntime.wrap((function(r){for(;;)switch(r.prev=r.next){case 0:return r.prev=0,e.loading=!0,1,10,r.next=6,e.$axios.get("/order/addtowish/".concat(t));case 6:n=r.sent,console.log(n.data),Swal.mixin({toast:!0,position:"top-end",showConfirmButton:!1,timer:1500,timerProgressBar:!0,didOpen:function(t){t.onmouseenter=Swal.stopTimer,t.onmouseleave=Swal.resumeTimer}}).fire({icon:"success",title:"Item added to wishlist successfully!"}),r.next=15;break;case 12:r.prev=12,r.t0=r.catch(0),console.error("Error fetching slidersImages:",r.t0);case 15:return r.prev=15,e.loading=!1,r.finish(15);case 18:case"end":return r.stop()}}),r,null,[[0,12,15,18]])})))()},sellingFast:function(){var t=this;return Object(l.a)(regeneratorRuntime.mark((function e(){var r;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,t.loading=!0,e.next=4,t.$axios.get("/unauthenticate/sellingFast");case 4:r=e.sent,t.products=r.data,e.next=11;break;case 8:e.prev=8,e.t0=e.catch(0),console.error("Error fetching sellingFast:",e.t0);case 11:return e.prev=11,t.loading=!1,e.finish(11);case 14:case"end":return e.stop()}}),e,null,[[0,8,11,14]])})))()},randomProducts:function(){var t=this;return Object(l.a)(regeneratorRuntime.mark((function e(){var r;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,t.loading=!0,e.next=4,t.$axios.get("/unauthenticate/randomProducts");case 4:r=e.sent,t.rproducts=r.data,e.next=11;break;case 8:e.prev=8,e.t0=e.catch(0),console.error("Error fetching sellingFast:",e.t0);case 11:return e.prev=11,t.loading=!1,e.finish(11);case 14:case"end":return e.stop()}}),e,null,[[0,8,11,14]])})))()},addtoCart:function(t){var e=this;this.loading=!0,this.cart.find((function(e){return e.id===t.id}))||this.cart.push(d(d({},t),{},{quantity:1}));var r=JSON.parse(localStorage.getItem("cart"))||[],o=[].concat(Object(n.a)(r),Object(n.a)(this.cart));localStorage.setItem("cart",JSON.stringify(o)),setTimeout((function(){e.loading=!1}),1e3)},showhidePassword:function(){this.showPassword=!this.showPassword},loginPopup:function(){$(".login_modal").fadeIn()},closePopup:function(){$(".login_modal").fadeOut()},initCarousel:function(){new Swiper(".pro_slider",{slidesPerView:1,spaceBetween:20,breakpoints:{320:{slidesPerView:1,spaceBetween:20},377:{slidesPerView:2,spaceBetween:20},480:{slidesPerView:2,spaceBetween:20},576:{slidesPerView:2,spaceBetween:20},768:{slidesPerView:3,spaceBetween:20},992:{slidesPerView:4},1200:{slidesPerView:6}}})}}},m=r(36),component=Object(m.a)(v,(function(){var t=this,e=t._self._c;return e("div",[e("section",{staticClass:"selling_fast"},[e("div",{staticClass:"container app_hide"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("h1",[t._v("Selling Fast")]),t._v(" "),t.loading?e("span",[e("Loader")],1):t._e(),t._v(" "),e("div",{staticClass:"swiper pro_slider"},[e("div",{staticClass:"swiper-wrapper"},t._l(t.products,(function(r,n){return e("div",{key:n,staticClass:"swiper-slide"},[e("nuxt-link",{attrs:{to:"/product-details/".concat(r.slug)}},[e("div",{staticClass:"sell_fast"},[e("div",{staticClass:"product_image"},[e("img",{staticClass:"img-fluid",attrs:{src:r.thumnail,loading:"lazy",alt:""}}),t._v(" "),""!==r.addi_pname&&""!==r.addi_thumnail?e("div",{staticClass:"p_tag"},[e("img",{staticClass:"img-fluid",attrs:{src:r.addi_thumnail,loading:"lazy",alt:""}}),t._v(" "),e("h6",[t._v(t._s(r.addi_pname))])]):t._e()]),t._v(" "),e("h3",[t._v("Get a chance to "),e("span",[t._v("WIN")])]),t._v(" "),e("h2",[t._v(t._s(r.name))])])])],1)})),0)])])])])]),t._v(" "),e("section",{staticClass:"product my-3"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[t.imgloading?e("div",[e("center",[e("img",{staticClass:"rounded",staticStyle:{height:"50px",width:"50px"},attrs:{src:"/images/loading_animated.gif"}})])],1):t._e(),t._v(" "),e("div",{staticClass:"product_grid"},t._l(t.rproducts,(function(r,n){return e("div",{key:n,staticClass:"product_gview"},[t.loggedIn?e("span",[e("button",{staticClass:"active",attrs:{type:"button"},on:{click:function(e){return t.wishlist(r.slug)}}},[e("i",{staticClass:"fa-solid fa-heart"})])]):e("span",[e("button",{staticClass:"active",attrs:{type:"button"},on:{click:t.loginPopup}},[e("i",{staticClass:"fa-solid fa-heart"})])]),t._v(" "),e("nuxt-link",{attrs:{to:"/product-details/".concat(r.slug)}},[e("div",{staticClass:"product_image"},[e("img",{staticClass:"img-fluid",attrs:{src:r.thumnail,loading:"lazy",alt:""}}),t._v(" "),""!==r.addi_pname&&""!==r.addi_thumnail?e("div",{staticClass:"p_tag"},[e("img",{staticClass:"img-fluid",attrs:{src:r.addi_thumnail,loading:"lazy",alt:""}}),t._v(" "),e("h6",[t._v(t._s(r.addi_pname))])]):t._e()]),t._v(" "),e("h5",[t._v(t._s(r.name))]),t._v(" "),e("p",[t._v("TK."+t._s(r.price))])])],1)})),0)])]),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-4 col-12 m-auto"},[e("nuxt-link",{staticClass:"btn_submit text-center m-0 mb-2 w-100 fw-600",staticStyle:{display:"block","text-decoration":"none"},attrs:{to:"/products"}},[t._v("Explore More")])],1)])]),t._v(" "),e("div",{staticClass:"login_modal"},[e("div",{staticClass:"main_content"},[e("div",{staticClass:"log_regi"},[e("button",{staticClass:"cls_mdal",on:{click:t.closePopup}},[e("i",{staticClass:"fa-solid fa-x"})]),t._v(" "),e("div",{staticClass:"login_section"},[e("center",[e("span",{staticClass:"text-danger text-center"},[t._v(t._s(t.invaliderror))])]),t._v(" "),e("form",{staticClass:"forms-sample",attrs:{id:"formrest_login",enctype:"multipart/form-data"},on:{submit:function(e){return e.preventDefault(),t.userLogin()}}},[e("h5",{staticClass:"text-center"},[t._v("Login")]),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"input-container"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.login.email,expression:"login.email"}],staticClass:"input-field",attrs:{placeholder:"Email",type:"text"},domProps:{value:t.login.email},on:{input:function(e){e.target.composing||t.$set(t.login,"email",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Email ")]),t._v(" "),t.errors.email?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.email[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"})])]),t._v(" "),e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"input-container"},["checkbox"==(t.showPassword?"text":"password")?e("input",{directives:[{name:"model",rawName:"v-model",value:t.login.password,expression:"login.password"}],staticClass:"input-field",attrs:{placeholder:"Password",id:"password-field",type:"checkbox"},domProps:{checked:Array.isArray(t.login.password)?t._i(t.login.password,null)>-1:t.login.password},on:{change:function(e){var r=t.login.password,n=e.target,o=!!n.checked;if(Array.isArray(r)){var l=t._i(r,null);n.checked?l<0&&t.$set(t.login,"password",r.concat([null])):l>-1&&t.$set(t.login,"password",r.slice(0,l).concat(r.slice(l+1)))}else t.$set(t.login,"password",o)}}}):"radio"==(t.showPassword?"text":"password")?e("input",{directives:[{name:"model",rawName:"v-model",value:t.login.password,expression:"login.password"}],staticClass:"input-field",attrs:{placeholder:"Password",id:"password-field",type:"radio"},domProps:{checked:t._q(t.login.password,null)},on:{change:function(e){return t.$set(t.login,"password",null)}}}):e("input",{directives:[{name:"model",rawName:"v-model",value:t.login.password,expression:"login.password"}],staticClass:"input-field",attrs:{placeholder:"Password",id:"password-field",type:t.showPassword?"text":"password"},domProps:{value:t.login.password},on:{input:function(e){e.target.composing||t.$set(t.login,"password",e.target.value)}}}),t._v(" "),e("label",{staticClass:"input-label",attrs:{for:"input-field"}},[t._v("Password ")]),t._v(" "),t.errors.password?e("span",{staticClass:"text-danger"},[t._v(t._s(t.errors.password[0]))]):t._e(),t._v(" "),e("span",{staticClass:"input-highlight"}),t._v(" "),e("i",{staticClass:"fa-solid fa-eye toggle-password",attrs:{toggle:"#password-field"},on:{click:t.showhidePassword}})])]),t._v(" "),e("div",{staticClass:"row pe-0"},[t._m(0),t._v(" "),e("div",{staticClass:"col-6"},[e("div",{staticClass:"input-container"},[e("nuxt-link",{staticClass:"f_link",staticStyle:{"text-align":"right"},attrs:{to:"/register"}},[e("div",[e("small",{staticStyle:{color:"white"}},[t._v("Register")])])])],1)]),t._v(" "),t._m(1)])])])],1)])])])])])}),[function(){var t=this._self._c;return t("div",{staticClass:"col-6"},[t("div",{staticClass:"input-container d-none"},[t("a",{staticClass:"f_link",attrs:{href:"javascript:"}},[t("small",[t("p",{staticStyle:{color:"white"}},[this._v("Forget Password?")])])])])])},function(){var t=this._self._c;return t("div",{staticClass:"col-12 px-0"},[t("div",{staticClass:"input-container text-end"},[t("input",{staticClass:"btn_submit w-100",attrs:{value:"Login",type:"submit"}}),t("br"),t("br")])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Loader:r(323).default})}}]);