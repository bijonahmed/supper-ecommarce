(window.webpackJsonp=window.webpackJsonp||[]).push([[5],{318:function(t,e,n){"use strict";n.r(e);n(44);var r=n(10),l=(n(69),{data:function(){return{insertdata:{name:"",email:"",phone_number:"",address:"",website:"",github:"",twitter:"",instagram:"",facebook:"",image:""}}},mounted:function(){this.defaultLoadingData()},methods:{logout:function(){var t=this;return Object(r.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$auth.logout();case 2:localStorage.removeItem("jwtToken"),t.$router.push("/");case 4:case"end":return e.stop()}}),e)})))()},defaultLoadingData:function(){var t=this;this.$axios.get("/auth/showProfileData").then((function(e){console.log(e.data.data.name),t.insertdata.name=e.data.data.name,t.insertdata.email=e.data.data.email}))}}}),o=n(34),component=Object(o.a)(l,(function(){var t=this,e=t._self._c;return e("div",[e("div",{staticClass:"profile_image"},[e("input",{staticClass:"file-upload",attrs:{type:"file",id:"profile_img",name:"profile"}}),t._v(" "),t._m(0),t._v(" "),e("h1",[t._v(t._s(t.insertdata.name))]),t._v(" "),e("p",[t._v(t._s(t.insertdata.email))])]),t._v(" "),e("div",{staticClass:"profile_links"},[e("ul",[e("li",[e("nuxt-link",{attrs:{to:"/user/profile"}},[e("span",[e("strong",{staticClass:"fa-solid fa-user"}),t._v("Personal\r\n                        Details")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/wishlist"}},[e("span",[e("strong",{staticClass:"fa-solid fa-heart"}),t._v("Wishlist")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/wallet"}},[e("span",[e("strong",{staticClass:"fa-solid fa-dollar-sign"}),t._v("Wallet")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/offer"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gift"}),t._v("Offer")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/ticket"}},[e("span",[e("strong",{staticClass:"fa-solid fa-ticket"}),t._v("Active Ticket")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/payment"}},[e("span",[e("strong",{staticClass:"fa-regular fa-credit-card"}),t._v("Payment Option ")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/settings"}},[e("span",[e("strong",{staticClass:"fa-solid fa-gear"}),t._v("Settings")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("nuxt-link",{attrs:{to:"/user/notification"}},[e("span",[e("strong",{staticClass:"fa-solid fa-bell"}),t._v("Notifications")]),t._v(" "),e("i",{staticClass:"fa-solid fa-chevron-right"})])],1),t._v(" "),e("li",[e("a",{attrs:{href:"#"},on:{click:t.logout}},[t._m(1)])])])])])}),[function(){var t=this._self._c;return t("label",{attrs:{for:"profile_img"}},[t("img",{staticClass:"img-fulid profile_pic",attrs:{src:"/images/blank_profile.png",width:"100%",loading:"lazy",alt:""}})])},function(){var t=this._self._c;return t("span",[t("strong",{staticClass:"fa-solid fa-right-from-bracket"}),this._v("Logout")])}],!1,null,null,null);e.default=component.exports}}]);