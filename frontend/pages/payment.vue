<template>
<div>
    <Navbar />
    <section class="about_">
        <div class="container">
            <div class="row">
                <section class="payment_opsection">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">

                                <div class="pay_options">
                                    <div class="pay_option">
                                        <a href="javascript:">
                                            <h6>Credit/Debit Cards</h6>
                                            <img src="/images/cards.png" class="cards_pic img-fulid" loading="lazy" alt="">
                                        </a>
                                    </div>
                                    <div class="pay_method_img">
                                        <a href="javascript:" class="bkash_op" @click="bkashPopup">
                                            <img src="/images/Bkash.png" class="cards_pic img-fulid" loading="lazy" alt="">
                                        </a>
                                    </div>
                                    <div class="pay_method_img">
                                        <a href="javascript:" class="nogot_pop" @click="nagadPopup">
                                            <img src="/images/nogot.png" class="cards_pic img-fulid" loading="lazy" alt="">
                                        </a>
                                    </div>
                                    <div class="pay_method_img">
                                        <a href="javascript:" class="roket_pop" @click="rocketPopup">
                                            <img src="/images/Roket.png" class="cards_pic img-fulid" loading="lazy" alt="">
                                        </a>
                                    </div>
                                    <div class="pay_method_img">
                                        <a href="javascript:" class="upay_pop" @click="upayPopup">
                                            <img src="/images/Upay.png" class="cards_pic img-fulid" loading="lazy" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </section>
            </div>
        </div>

        <!-- bkash popup -->
        <div class="pop_bkash pay_pop">
            <div class="content_section">
                <div class="text-end" style="background-color: #ecf9ff;">

                </div>
                <div class="pop_head">
                    <img src="images/Bkash.png" class="img-fluid logo_img" loading="lazy" alt="">
                    <button class="btn-close px-3 ms-auto" @click="bkashPopupClose"></button>
                </div>
                <div class="a_details">
                    <form action="">
                        <ul>
                            <li>
                                <h6>Account Number:</h6>
                                <div class="ac_n">
                                    <div class="position-relative">
                                        <p class="" id="copyText1">{{ bkash_number }}</p>
                                        <p class="c_txt position-absolute">Copy</p>
                                    </div>
                                    <button type="button" @click="copyBkashMobileNumber" class="btn_copy"> <i class="fa-regular fa-copy"></i></button>
                                </div>
                            </li>
                            <li>
                                <h6>Total Payable Ammount: </h6>
                                <h1><strong style="color: #aded28;">667.28</strong>TK </h1>
                            </li>
                            <div class="trx_img">
                                <p>How to get Trx Id?</p>
                                <img src="/images/transection_image.png" class="img-fluid" loading="lazy" alt="">
                            </div>
                            <li>
                                <h6>Trx ID: </h6>
                                <div>
                                    <p style="color: #aded28; font-size: 12px;">Trx Id Is Required</p>
                                    <div class="d-flex align-items-center"><input type="text" id="inputField" placeholder="Enter Transection Id"> <button class="btn_submit" id="pasteBtn" type="button">paste</button>
                                    </div>
                                </div>
                            </li>
                            <div class="text-center">
                                <button class="btn_submit" @click="ordersummary" type="button">Confirm Order</button>
                            </div>
                        </ul>
                    </form>
                </div>
                <div class="pop_footer">
                    <img src="images/logo.png" class="img-fluid" loading="lazy" alt="">
                </div>
            </div>
        </div>
        <!-- Nogot popup -->
        <div class="pop_nogot pay_pop">
            <div class="content_section">
                <div class="text-end" style="background-color: #ecf9ff;">

                </div>
                <div class="pop_head">
                    <img src="images/nogot.png" class="img-fluid logo_img" loading="lazy" alt="">
                    <button class="btn-close px-3 ms-auto" @click="nagadPopupClose"></button>
                </div>
                <div class="a_details">
                    <form action="">
                        <ul>
                            <li>
                                <h6>Account Number:</h6>
                                <div class="ac_n">
                                    <div class="position-relative">
                                        <p class="" id="copyText2">{{ nagad_number }}</p>
                                        <p class="c_txt position-absolute">Copy</p>
                                    </div>
                                    <button type="button" @click="copyNagadMobileNumber" class="btn_copy"> <i class="fa-regular fa-copy"></i></button>
                                </div>
                            </li>
                            <li>
                                <h6>Total Payable Ammount: </h6>
                                <h1><strong style="color: #aded28;">667.28</strong>TK </h1>
                            </li>
                            <div class="trx_img">
                                How to get Trx Id?
                                <img src="images/transection_image.png" class="img-fluid" loading="lazy" alt="">
                            </div>
                            <li>
                                <h6>Trx ID: </h6>
                                <div>
                                    <p style="color: #aded28; font-size: 12px;">Trx Id Is Required</p>
                                    <div class="d-flex align-items-center"><input type="text" id="inputField2" placeholder="Enter Transection Id"> <button class="btn_submit" id="pasteBtn2" type="button">paste</button>
                                    </div>
                                </div>
                            </li>
                            <div class="text-center">
                                <button class="btn_submit">Confirm Order</button>
                            </div>
                        </ul>
                    </form>
                </div>
                <div class="pop_footer">
                    <img src="images/logo.png" class="img-fluid" loading="lazy" alt="">
                </div>
            </div>
        </div>
        <!-- Roket popup -->
        <div class="pop_roket pay_pop">
            <div class="content_section">
                <div class="text-end" style="background-color: #ecf9ff;">

                </div>
                <div class="pop_head">
                    <img src="images/Roket.png" class="img-fluid logo_img" loading="lazy" alt="">
                    <button class="btn-close px-3 ms-auto" @click="rocketPopupClose"></button>
                </div>
                <div class="a_details">
                    <form action="">
                        <ul>
                            <li>
                                <h6>Account Number:</h6>
                                <div class="ac_n">
                                    <div class="position-relative">
                                        <p class="" id="copyText3">{{ rocket_number }}</p>
                                        <p class="c_txt position-absolute">Copy</p>
                                    </div>
                                    <button type="button" @click="copyRocketMobileNumber" class="btn_copy"> <i class="fa-regular fa-copy"></i></button>
                                </div>
                            </li>
                            <li>
                                <h6>Total Payable Ammount: </h6>
                                <h1><strong style="color: #aded28;">667.28</strong>TK </h1>
                            </li>
                            <div class="trx_img">
                                <a data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">How to get Trx Id?</a>
                                <div class="collapse" id="collapseExample">
                                    <img src="images/transection_image.png" class="img-fluid" loading="lazy" alt="">
                                </div>
                            </div>
                            <li>
                                <h6>Trx ID: </h6>
                                <div>
                                    <p style="color: #aded28; font-size: 12px;">Trx Id Is Required</p>
                                    <div class="d-flex align-items-center"><input type="text" id="inputField3" placeholder="Enter Transection Id"> <button class="btn_submit" id="pasteBtn3" type="button">paste</button>
                                    </div>
                                </div>
                            </li>
                            <div class="text-center">
                                <button class="btn_submit">Submit</button>
                            </div>
                        </ul>
                    </form>
                </div>
                <div class="pop_footer">
                    <img src="images/logo.png" class="img-fluid" loading="lazy" alt="">
                </div>
            </div>
        </div>
        <!-- Upay popup -->
        <div class="pop_upay pay_pop">
            <div class="content_section">
                <div class="text-end" style="background-color: #ecf9ff;">

                </div>
                <div class="pop_head">
                    <img src="images/Upay.png" class="img-fluid logo_img" loading="lazy" alt="">
                    <button class="btn-close px-3 ms-auto" @click="upayPopupClose"></button>
                </div>
                <div class="a_details">
                    <form action="">
                        <ul>
                            <li>
                                <h6>Account Number:</h6>
                                <div class="ac_n">
                                    <div class="position-relative">
                                        <p class="" id="copyText4">{{ upay_number }}</p>
                                        <p class="c_txt position-absolute">Copy</p>
                                    </div>
                                    <button type="button" @click="copyupayMobileNumber" class="btn_copy"> <i class="fa-regular fa-copy"></i></button>
                                </div>
                            </li>
                            <li>
                                <h6>Total Payable Ammount: </h6>
                                <h1><strong style="color: #aded28;">667.28</strong>TK </h1>
                            </li>
                            <div class="trx_img">
                                <a data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">How to get Trx Id?</a>
                                <div class="collapse" id="collapseExample">
                                    <img src="images/transection_image.png" class="img-fluid" loading="lazy" alt="">
                                </div>
                            </div>
                            <li>
                                <h6>Trx ID: </h6>
                                <div>
                                    <p style="color: #aded28; font-size: 12px;">Trx Id Is Required</p>
                                    <div class="d-flex align-items-center"><input type="text" id="inputField4" placeholder="Enter Transection Id"> <button class="btn_submit" id="pasteBtn4" type="button">paste</button>
                                    </div>
                                </div>
                            </li>
                            <div class="text-center">
                                <button class="btn_submit">Submit</button>
                            </div>
                        </ul>
                    </form>
                </div>
                <div class="pop_footer">
                    <img src="images/logo.png" class="img-fluid" loading="lazy" alt="">
                </div>
            </div>
        </div>

    </section>
    <Footer />
</div>
</template>

<script>
export default {
    middleware: "auth",
    head: {
        title: 'Payment',
    },
    data() {
        return {

            nagad_number: '',
            bkash_number: '',
            rocket_number: '',
            upay_number: '',

        }
    },
    mounted() {

        this.setting();

    },
    methods: {

        copyNagadMobileNumber() {
            const el = document.createElement('textarea');
            el.value = this.nagad_number;
            this.commonCopy(el);
            const Toast = Swal.mixin({
                toast: true,
                position: "top-end",
                showConfirmButton: false,
                timer: 1500,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.onmouseenter = Swal.stopTimer;
                    toast.onmouseleave = Swal.resumeTimer;
                }
            });
            Toast.fire({
                icon: "success",
                title: "Nagad number copied!"
            });

        },
        copyBkashMobileNumber() {
            const el = document.createElement('textarea');
            el.value = this.bkash_number;
            this.commonCopy(el);
            const Toast = Swal.mixin({
                toast: true,
                position: "top-end",
                showConfirmButton: false,
                timer: 1500,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.onmouseenter = Swal.stopTimer;
                    toast.onmouseleave = Swal.resumeTimer;
                }
            });
            Toast.fire({
                icon: "success",
                title: "Bkash number copied!"
            });
            //alert('Mobile number copied to clipboard!');
        },

        copyRocketMobileNumber() {
            const el = document.createElement('textarea');
            el.value = this.rocket_number;
            this.commonCopy(el);
            const Toast = Swal.mixin({
                toast: true,
                position: "top-end",
                showConfirmButton: false,
                timer: 1500,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.onmouseenter = Swal.stopTimer;
                    toast.onmouseleave = Swal.resumeTimer;
                }
            });
            Toast.fire({
                icon: "success",
                title: "Rocket number copied!"
            });
        },

        copyupayMobileNumber() {
            const el = document.createElement('textarea');
            el.value = this.upay_number;
            this.commonCopy(el);
            const Toast = Swal.mixin({
                toast: true,
                position: "top-end",
                showConfirmButton: false,
                timer: 1500,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.onmouseenter = Swal.stopTimer;
                    toast.onmouseleave = Swal.resumeTimer;
                }
            });
            Toast.fire({
                icon: "success",
                title: "Upay number copied!"
            });
        },

        commonCopy(el) {
            document.body.appendChild(el);
            el.select();
            document.execCommand('copy');
            document.body.removeChild(el);
        },

        async setting() {

            const response = await this.$axios.get('/unauthenticate/setting');

            this.nagad_number = response.data.nagad_number;
            this.bkash_number = response.data.bkash_number;
            this.rocket_number = response.data.rocket_number;
            this.upay_number = response.data.upay_number;
            //console.log("country" + response.data);

        },
        //bkash
        bkashPopup() {
            $(".pop_bkash").fadeIn();
        },
        bkashPopupClose() {
            $(".pop_bkash").fadeOut();
        },
        //nagad
        nagadPopup() {
            $(".pop_nogot").fadeIn();
        },
        nagadPopupClose() {
            $(".pop_nogot").fadeOut();
        },
        //rocket 
        rocketPopup() {
            $(".pop_roket").fadeIn();
        },
        rocketPopupClose() {
            $(".pop_roket").fadeOut();
        },
        //upday 
        upayPopup() {
            $(".pop_upay").fadeIn();
        },
        upayPopupClose() {
            $(".pop_upay").fadeOut();
        },

        ordersummary() {
            this.$router.push('/ordersummary');

        },
    }
}
</script>
