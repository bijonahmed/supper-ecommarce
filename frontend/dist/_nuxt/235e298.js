(window.webpackJsonp=window.webpackJsonp||[]).push([[24],{354:function(t,e,o){"use strict";o.r(e);var r=o(10),n=(o(71),o(93),o(37),o(14),o(38),o(328),o(327),{middleware:"auth",head:{title:"Payment"},data:function(){return{orderData:{txtid:""},cart:[],payableamount:0,subtotal:0,nagad_number:"",nagad_fee:0,bkash_number:"",bkas_fee:0,rocket_number:"",rocket_fee:0,upay_number:"",upay_fee:0,select_pay_type:"",loading:!0,errors:{}}},mounted:function(){var t=this;this.getCartTotal(),this.setting(),setTimeout((function(){t.loading=!1}),1e3)},methods:{submitOrder:function(){var t=this;return Object(r.a)(regeneratorRuntime.mark((function e(){var o,r,n,l,c,d,_;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return o=t.select_pay_type,t.loading=!0,r={"Content-Type":"application/json"},n=localStorage.getItem("cart"),l=localStorage.getItem("subtotal"),c=JSON.parse(n),d=JSON.parse(l),_={cart:c,payment_getway:o,subtotal_amt:d,txtid:t.orderData.txtid},e.next=10,t.$axios.post("/order/submitOrder",_,{headers:r}).then((function(e){t.clearCart();var o=e.data.orderid;t.$router.push("/order/".concat(o))})).catch((function(e){422===e.response.status&&(t.errors=e.response.data.errors)})).finally((function(){t.loading=!1}));case 10:case"end":return e.stop()}}),e)})))()},errorHandler:function(t){t.response&&t.response.data.errors&&t.response.data.errors.account?(console.log("error : "+t.response.data.errors.account[0]),this.invaliderror=t.response.data.errors.account[0]):console.log("An error occurred. Please try again later.")},clearCart:function(){var t=this;this.loading=!0,localStorage.removeItem("cart"),localStorage.removeItem("subtotal"),this.cart=[],this.subtotal=0,setTimeout((function(){t.loading=!1}),2e3)},getCartTotal:function(){var t=localStorage.getItem("cart");if(t){JSON.parse(t).filter((function(t,e,o){return e===o.findIndex((function(e){return e.id===t.id}))}));var e=localStorage.getItem("subtotal"),o=JSON.parse(e);console.log(o),this.subtotal=o,console.log("Total Price for Unique Items:",o)}else console.error("No cart data found in local storage.")},copyNumber:function(t){var e=document.createElement("textarea"),o="";1===t?(e.value=this.bkash_number,o="Bkash"):2===t?(e.value=this.nagad_number,o="Nagad"):3===t?(e.value=this.rocket_number,o="Rocket"):4===t&&(e.value=this.upay_number,o="Upay"),this.commonCopy(e),Swal.mixin({toast:!0,position:"top-end",showConfirmButton:!1,timer:1500,timerProgressBar:!0,didOpen:function(t){t.onmouseenter=Swal.stopTimer,t.onmouseleave=Swal.resumeTimer}}).fire({icon:"success",title:"".concat(o," number copied!")})},commonCopy:function(t){document.body.appendChild(t),t.select(),document.execCommand("copy"),document.body.removeChild(t)},setting:function(){var t=this;return Object(r.a)(regeneratorRuntime.mark((function e(){var o;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$axios.get("/unauthenticate/setting");case 2:o=e.sent,t.nagad_number=o.data.nagad_number,t.bkash_number=o.data.bkash_number,t.rocket_number=o.data.rocket_number,t.upay_number=o.data.upay_number,t.nagad_fee=o.data.nagad_fee,t.bkas_fee=o.data.bkash_fee,t.rocket_fee=o.data.rocket_fee,t.upay_fee=o.data.upay_fee,console.log("setting: bkash fee"+o.data.bkash_fee);case 12:case"end":return e.stop()}}),e)})))()},loadingPopup:function(t){if(1===t)$(".pop_cards").fadeIn();else if(2===t){console.log("bkash fee: :"+this.bkas_fee);var e=parseFloat(this.subtotal),o=(e+e*parseFloat(this.bkas_fee)/100).toFixed(2);this.payableamount=o,console.log("total payable amount: "+o),$(".pop_bkash").fadeIn()}else if(3===t){console.log("nagod fee: :"+this.nagad_fee);var r=parseFloat(this.subtotal),n=(r+r*parseFloat(this.nagad_fee)/100).toFixed(2);this.payableamount=n,console.log("total payable amount: "+n),$(".pop_nogot").fadeIn()}else if(4===t){console.log("roket fee: :"+this.rocket_fee);var l=parseFloat(this.subtotal),c=(l+l*parseFloat(this.rocket_fee)/100).toFixed(2);this.payableamount=c,console.log("total payable amount: "+c),$(".pop_roket").fadeIn()}else if(5===t){console.log("upay fee: :"+this.upay_fee);var d=parseFloat(this.subtotal),_=(d+d*parseFloat(this.upay_fee)/100).toFixed(2);this.payableamount=_,console.log("total payable amount: "+_),$(".pop_upay").fadeIn()}this.select_pay_type=t},loadingclosePopup:function(t){1===t?$(".pop_cards").fadeOut():2===t?$(".pop_bkash").fadeOut():3===t?$(".pop_nogot").fadeOut():4===t?$(".pop_roket").fadeOut():5===t&&$(".pop_upay").fadeOut()},ordersummary:function(){this.$router.push("/ordersummary")}}}),l=o(36),component=Object(l.a)(n,(function(){var t=this,e=t._self._c;return e("div",[e("Navbar"),t._v(" "),e("section",{staticClass:"about_"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("section",{staticClass:"payment_opsection"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-12"},[e("div",{staticClass:"pay_options"},[t.loading?e("span",[e("Loader")],1):t._e(),t._v(" "),e("div",{staticClass:"pay_option"},[e("a",{attrs:{href:"javascript:"},on:{click:function(e){return t.loadingPopup(1)}}},[e("h6",[t._v("Credit/Debit Cards")]),t._v(" "),e("img",{staticClass:"cards_pic img-fulid",attrs:{src:"/images/cards.png",loading:"lazy",alt:""}})])]),t._v(" "),e("div",{staticClass:"pay_method_img"},[e("a",{staticClass:"bkash_op",attrs:{href:"javascript:"},on:{click:function(e){return t.loadingPopup(2)}}},[e("img",{staticClass:"cards_pic img-fulid",attrs:{src:"/images/Bkash.png",loading:"lazy",alt:""}})])]),t._v(" "),e("div",{staticClass:"pay_method_img"},[e("a",{staticClass:"nogot_pop",attrs:{href:"javascript:"},on:{click:function(e){return t.loadingPopup(3)}}},[e("img",{staticClass:"cards_pic img-fulid",attrs:{src:"/images/nogot.png",loading:"lazy",alt:""}})])]),t._v(" "),e("div",{staticClass:"pay_method_img"},[e("a",{staticClass:"roket_pop",attrs:{href:"javascript:"},on:{click:function(e){return t.loadingPopup(4)}}},[e("img",{staticClass:"cards_pic img-fulid",attrs:{src:"/images/Roket.png",loading:"lazy",alt:""}})])]),t._v(" "),e("div",{staticClass:"pay_method_img"},[e("a",{staticClass:"upay_pop",attrs:{href:"javascript:"},on:{click:function(e){return t.loadingPopup(5)}}},[e("img",{staticClass:"cards_pic img-fulid",attrs:{src:"/images/Upay.png",loading:"lazy",alt:""}})])])])])])])])])]),t._v(" "),e("div",{staticClass:"pop_cards pay_pop"},[e("div",{staticClass:"content_section"},[e("div",{staticClass:"pop_head"},[e("button",{staticClass:"btn-close px-3 ms-auto",on:{click:function(e){return t.loadingclosePopup(1)}}})]),t._v(" "),t._m(0),t._v(" "),t._m(1)])]),t._v(" "),e("div",{staticClass:"pop_bkash pay_pop"},[e("div",{staticClass:"content_section"},[e("div",{staticClass:"text-end",staticStyle:{"background-color":"#ecf9ff"}}),t._v(" "),e("div",{staticClass:"pop_head"},[e("img",{staticClass:"img-fluid logo_img",attrs:{src:"images/Bkash.png",loading:"lazy",alt:""}}),t._v(" "),e("button",{staticClass:"btn-close px-3 ms-auto",on:{click:function(e){return t.loadingclosePopup(2)}}})]),t._v(" "),e("div",{staticClass:"a_details"},[e("form",{staticClass:"forms-sample",attrs:{id:"userSubmitFrm",enctype:"multipart/form-data"},on:{submit:function(e){return e.preventDefault(),t.submitOrder()}}},[e("ul",[e("li",[e("h6",[t._v("Account Number:")]),t._v(" "),e("div",{staticClass:"ac_n"},[e("div",{staticClass:"position-relative"},[e("p",{attrs:{id:"copyText1"}},[t._v(t._s(t.bkash_number))]),t._v(" "),e("p",{staticClass:"c_txt position-absolute"},[t._v("Copy")])]),t._v(" "),e("button",{staticClass:"btn_copy",attrs:{type:"button"},on:{click:function(e){return t.copyNumber(1)}}},[e("i",{staticClass:"fa-regular fa-copy"})])])]),t._v(" "),e("li",[e("h6",[t._v("Total Payable Amount: ")]),t._v(" "),e("h1",[e("strong",{staticStyle:{color:"#aded28"}},[t._v(t._s(t.payableamount))]),t._v("TK ")])]),t._v(" "),t._m(2),t._v(" "),e("li",[e("h6",[t._v("Trx ID: ")]),t._v(" "),e("div",[e("p",{staticStyle:{color:"#aded28","font-size":"12px"}},[t._v("Trx Id Is Required")]),t._v(" "),e("div",{staticClass:"d-flex align-items-center"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.orderData.txtid,expression:"orderData.txtid"}],attrs:{type:"text",id:"txtid",placeholder:"Enter Transection Id"},domProps:{value:t.orderData.txtid},on:{input:function(e){e.target.composing||t.$set(t.orderData,"txtid",e.target.value)}}})]),t._v(" "),t.errors.txtid?e("span",{staticClass:"text-black"},[t._v(t._s(t.errors.txtid[0]))]):t._e()])]),t._v(" "),t._m(3)])])]),t._v(" "),t._m(4)])]),t._v(" "),e("div",{staticClass:"pop_nogot pay_pop"},[e("div",{staticClass:"content_section"},[e("div",{staticClass:"text-end",staticStyle:{"background-color":"#ecf9ff"}}),t._v(" "),e("div",{staticClass:"pop_head"},[e("img",{staticClass:"img-fluid logo_img",attrs:{src:"images/nogot.png",loading:"lazy",alt:""}}),t._v(" "),e("button",{staticClass:"btn-close px-3 ms-auto",on:{click:function(e){return t.loadingclosePopup(3)}}})]),t._v(" "),e("div",{staticClass:"a_details"},[e("form",{staticClass:"forms-sample",attrs:{id:"userSubmitFrm",enctype:"multipart/form-data"},on:{submit:function(e){return e.preventDefault(),t.submitOrder()}}},[e("ul",[e("li",[e("h6",[t._v("Account Number:")]),t._v(" "),e("div",{staticClass:"ac_n"},[e("div",{staticClass:"position-relative"},[e("p",{attrs:{id:"copyText2"}},[t._v(t._s(t.nagad_number))]),t._v(" "),e("p",{staticClass:"c_txt position-absolute"},[t._v("Copy")])]),t._v(" "),e("button",{staticClass:"btn_copy",attrs:{type:"button"},on:{click:function(e){return t.copyNumber(2)}}},[e("i",{staticClass:"fa-regular fa-copy"})])])]),t._v(" "),e("li",[e("h6",[t._v("Total Payable Ammount: ")]),t._v(" "),e("h1",[e("strong",{staticStyle:{color:"#aded28"}},[t._v(t._s(t.payableamount))]),t._v("TK ")])]),t._v(" "),t._m(5),t._v(" "),e("li",[e("h6",[t._v("Trx ID: ")]),t._v(" "),e("div",[e("p",{staticStyle:{color:"#aded28","font-size":"12px"}},[t._v("Trx Id Is Required")]),t._v(" "),e("div",{staticClass:"d-flex align-items-center"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.orderData.txtid,expression:"orderData.txtid"}],attrs:{type:"text",id:"txtid",placeholder:"Enter Transection Id"},domProps:{value:t.orderData.txtid},on:{input:function(e){e.target.composing||t.$set(t.orderData,"txtid",e.target.value)}}})]),t._v(" "),t.errors.txtid?e("span",{staticClass:"text-black"},[t._v(t._s(t.errors.txtid[0]))]):t._e()])]),t._v(" "),t._m(6)])])]),t._v(" "),t._m(7)])]),t._v(" "),e("div",{staticClass:"pop_roket pay_pop"},[e("div",{staticClass:"content_section"},[e("div",{staticClass:"text-end",staticStyle:{"background-color":"#ecf9ff"}}),t._v(" "),e("div",{staticClass:"pop_head"},[e("img",{staticClass:"img-fluid logo_img",attrs:{src:"images/Roket.png",loading:"lazy",alt:""}}),t._v(" "),e("button",{staticClass:"btn-close px-3 ms-auto",on:{click:function(e){return t.loadingclosePopup(4)}}})]),t._v(" "),e("div",{staticClass:"a_details"},[e("form",{staticClass:"forms-sample",attrs:{id:"userSubmitFrm",enctype:"multipart/form-data"},on:{submit:function(e){return e.preventDefault(),t.submitOrder()}}},[e("ul",[e("li",[e("h6",[t._v("Account Number:")]),t._v(" "),e("div",{staticClass:"ac_n"},[e("div",{staticClass:"position-relative"},[e("p",{attrs:{id:"copyText3"}},[t._v(t._s(t.rocket_number))]),t._v(" "),e("p",{staticClass:"c_txt position-absolute"},[t._v("Copy")])]),t._v(" "),e("button",{staticClass:"btn_copy",attrs:{type:"button"},on:{click:function(e){return t.copyNumber(3)}}},[e("i",{staticClass:"fa-regular fa-copy"})])])]),t._v(" "),e("li",[e("h6",[t._v("Total Payable Ammount: ")]),t._v(" "),e("h1",[e("strong",{staticStyle:{color:"#aded28"}},[t._v(t._s(t.payableamount))]),t._v("TK ")])]),t._v(" "),t._m(8),t._v(" "),e("li",[e("h6",[t._v("Trx ID: ")]),t._v(" "),e("div",[e("p",{staticStyle:{color:"#aded28","font-size":"12px"}},[t._v("Trx Id Is Required")]),t._v(" "),e("div",{staticClass:"d-flex align-items-center"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.orderData.txtid,expression:"orderData.txtid"}],attrs:{type:"text",id:"txtid",placeholder:"Enter Transection Id"},domProps:{value:t.orderData.txtid},on:{input:function(e){e.target.composing||t.$set(t.orderData,"txtid",e.target.value)}}})]),t._v(" "),t.errors.txtid?e("span",{staticClass:"text-black"},[t._v(t._s(t.errors.txtid[0]))]):t._e()])]),t._v(" "),t._m(9)])])]),t._v(" "),t._m(10)])]),t._v(" "),e("div",{staticClass:"pop_upay pay_pop"},[e("div",{staticClass:"content_section"},[e("div",{staticClass:"text-end",staticStyle:{"background-color":"#ecf9ff"}}),t._v(" "),e("div",{staticClass:"pop_head"},[e("img",{staticClass:"img-fluid logo_img",attrs:{src:"images/Upay.png",loading:"lazy",alt:""}}),t._v(" "),e("button",{staticClass:"btn-close px-3 ms-auto",on:{click:function(e){return t.loadingclosePopup(5)}}})]),t._v(" "),e("div",{staticClass:"a_details"},[e("form",{staticClass:"forms-sample",attrs:{id:"userSubmitFrm",enctype:"multipart/form-data"},on:{submit:function(e){return e.preventDefault(),t.submitOrder()}}},[e("ul",[e("li",[e("h6",[t._v("Account Number:")]),t._v(" "),e("div",{staticClass:"ac_n"},[e("div",{staticClass:"position-relative"},[e("p",{attrs:{id:"copyText4"}},[t._v(t._s(t.upay_number))]),t._v(" "),e("p",{staticClass:"c_txt position-absolute"},[t._v("Copy")])]),t._v(" "),e("button",{staticClass:"btn_copy",attrs:{type:"button"},on:{click:function(e){return t.copyNumber(4)}}},[e("i",{staticClass:"fa-regular fa-copy"})])])]),t._v(" "),e("li",[e("h6",[t._v("Total Payable Ammount: ")]),t._v(" "),e("h1",[e("strong",{staticStyle:{color:"#aded28"}},[t._v(t._s(t.payableamount))]),t._v("TK ")])]),t._v(" "),t._m(11),t._v(" "),e("li",[e("h6",[t._v("Trx ID: ")]),t._v(" "),e("div",[e("p",{staticStyle:{color:"#aded28","font-size":"12px"}},[t._v("Trx Id Is Required")]),t._v(" "),e("div",{staticClass:"d-flex align-items-center"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.orderData.txtid,expression:"orderData.txtid"}],attrs:{type:"text",id:"txtid",placeholder:"Enter Transection Id"},domProps:{value:t.orderData.txtid},on:{input:function(e){e.target.composing||t.$set(t.orderData,"txtid",e.target.value)}}})]),t._v(" "),t.errors.txtid?e("span",{staticClass:"text-black"},[t._v(t._s(t.errors.txtid[0]))]):t._e()])]),t._v(" "),t._m(12)])])]),t._v(" "),t._m(13)])])]),t._v(" "),e("Footer")],1)}),[function(){var t=this._self._c;return t("div",{},[t("h1",{staticClass:"text-center",staticStyle:{color:"black"}},[this._v("Upcoming.....")])])},function(){var t=this._self._c;return t("div",{staticClass:"pop_footer"},[t("img",{staticClass:"img-fluid",attrs:{src:"images/logo.png",loading:"lazy",alt:""}})])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"trx_img"},[e("p",[t._v("How to get Trx Id?")]),t._v(" "),e("img",{staticClass:"img-fluid",attrs:{src:"/images/transection_image.png",loading:"lazy",alt:""}})])},function(){var t=this._self._c;return t("div",{staticClass:"text-center"},[t("button",{staticClass:"btn_submit",attrs:{type:"submit"}},[this._v("Confirm Order")])])},function(){var t=this._self._c;return t("div",{staticClass:"pop_footer"},[t("img",{staticClass:"img-fluid",attrs:{src:"images/logo.png",loading:"lazy",alt:""}})])},function(){var t=this._self._c;return t("div",{staticClass:"trx_img"},[this._v("\r\n                                How to get Trx Id?\r\n                                "),t("img",{staticClass:"img-fluid",attrs:{src:"images/transection_image.png",loading:"lazy",alt:""}})])},function(){var t=this._self._c;return t("div",{staticClass:"text-center"},[t("button",{staticClass:"btn_submit",attrs:{type:"submit"}},[this._v("Confirm Order")])])},function(){var t=this._self._c;return t("div",{staticClass:"pop_footer"},[t("img",{staticClass:"img-fluid",attrs:{src:"images/logo.png",loading:"lazy",alt:""}})])},function(){var t=this._self._c;return t("div",{staticClass:"trx_img"},[t("img",{staticClass:"img-fluid",attrs:{src:"images/transection_image.png",loading:"lazy",alt:""}})])},function(){var t=this._self._c;return t("div",{staticClass:"text-center"},[t("button",{staticClass:"btn_submit",attrs:{type:"submit"}},[this._v("Confirm Order")])])},function(){var t=this._self._c;return t("div",{staticClass:"pop_footer"},[t("img",{staticClass:"img-fluid",attrs:{src:"images/logo.png",loading:"lazy",alt:""}})])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"trx_img"},[e("a",{attrs:{"data-bs-toggle":"collapse",href:"#collapseExample",role:"button","aria-expanded":"false","aria-controls":"collapseExample"}},[t._v("How to get Trx Id?")]),t._v(" "),e("div",{staticClass:"collapse",attrs:{id:"collapseExample"}},[e("img",{staticClass:"img-fluid",attrs:{src:"images/transection_image.png",loading:"lazy",alt:""}})])])},function(){var t=this._self._c;return t("div",{staticClass:"text-center"},[t("button",{staticClass:"btn_submit",attrs:{type:"submit"}},[this._v("Confirm Order")])])},function(){var t=this._self._c;return t("div",{staticClass:"pop_footer"},[t("img",{staticClass:"img-fluid",attrs:{src:"images/logo.png",loading:"lazy",alt:""}})])}],!1,null,null,null);e.default=component.exports;installComponents(component,{Navbar:o(320).default,Loader:o(323).default,Footer:o(315).default})}}]);