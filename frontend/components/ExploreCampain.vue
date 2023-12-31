<template>
<div>
    <section class="campain_sec">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="campain_list">
                        <h4>Explore campaigns</h4>
                        <ul>
                            <span v-if="loading">
                                <Loader />
                            </span>

                            <li v-for="(item, index) in prouducts" :key="index">
                                <div class="campain_box ">
                                    <!-- total ticket  -->
                                    <div class="available_ticket ">
                                        <div class="sold">
                                            <h6>{{ item.total_selling }}</h6>
                                            <p>Sold</p>
                                        </div>
                                        <div class="total">
                                            <p>Out of</p>
                                            <h6>{{ item.total_tickets }}</h6>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="c_campain_left">
                                                <div class="camp_count">
                                                    <!-- <div id="timer" class=" c_timer" data-endtime="25 october 2024 10:00:00 GMT+01:00"></div> -->
                                                    <div>BDT&nbsp;{{ item.price }}Tk.</div>
                                                </div>
                                                <div class="campain_image">
                                                    <!-- Swiper -->
                                                    <div class="swiper campain_s">
                                                        <div class="swiper-wrapper">
                                                            <div class="swiper-slide"><img :src="item.thumnail" class="img-fulid" loading="lazy" alt=""></div>
                                                            <!-- <div class="swiper-slide"><img src="/images/cash.png" class="img-fulid" loading="lazy" alt=""></div>
                                                            <div class="swiper-slide"><img src="/images/cash1.png" class="img-fulid" loading="lazy" alt=""></div>
                                                            <div class="swiper-slide"><img src="/images/cash2.png" class="img-fulid" loading="lazy" alt=""></div> -->
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="c_price">
                                                    <div class="creadit_ticket">
                                                        <p>Lottery Creadit</p>
                                                        <h1>BDT{{ item.price }}TK.</h1>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div class="c_content_right">
                                                <div class="c_content_box">
                                                    <h1>Win</h1>
                                                    <h2>{{ item.name }}</h2>
                                                    <!-- <span>BDT{{ item.price }}</span> -->
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="d-flex">
                                                                <nuxt-link :to="`/product-details/${item.slug}`">View Details</nuxt-link>
                                                                <!-- <a href="javascript:" class="btn_details show_details" @click="viewDetails(item.slug)">View Details</a> -->
                                                                <button type="button" @click="addtoCart(item)" v-if="item.stock_status==1">Add to cart</button>
                                                                <button type="button" v-else>Stock Out</button>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <p> Draw Date: 21 November, 2023 or earlier based on the time passed. </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="button_">

                                                    <span v-if="loggedIn">
                                                        <button type="button" class="btn_share active" @click="wishlist(item.slug)"><i class="fa-solid fa-heart"></i></button>
                                                    </span>
                                                    <span v-else>
                                                        <button type="button" class="btn_share active" @click="loginPopup"><i class="fa-solid fa-heart"></i></button>
                                                    </span>

                                                    <button type="button" class="btn_share share_btn" @click="shareBtn"><i class="fa-solid fa-share"></i></button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- View Details Modal -->
    <div class="details_modal">
        <div class="m_content_">
            <div class="d-flex justify-content-between">
                <ul class="nav nav-pills tb_btns tb_btns mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item tb_btns_left" role="presentation">
                        <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-prize" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Product Details </button>
                    </li>

                </ul>
                <button class="btn_mclose" type="button" @click="hideDetails"><i class="fa-solid fa-x"></i></button>
            </div>
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane p_details fade show active" id="pills-prize" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
                    <p id="description"></p>

                </div>

            </div>
        </div>
    </div>
    <!-- Login  -->
    <div class="login_modal">
        <div class="main_content">
            <div class="log_regi">
                <button class="cls_mdal" @click="closePopup"><i class="fa-solid fa-x"></i></button>
                <div class="login_section">
                    <center><span class="text-danger text-center">{{ invaliderror }}</span></center>
                    <form @submit.prevent="userLogin()" id="formrest_login" class="forms-sample" enctype="multipart/form-data">
                        <h5 class="text-center">Login</h5>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="input-container">
                                    <input placeholder="Email" class="input-field" type="text" v-model="login.email">
                                    <label for="input-field" class="input-label">Email </label>
                                    <span class="text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
                                    <span class="input-highlight"></span>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="input-container">
                                    <input placeholder="Password" class="input-field" id="password-field" type="password" v-model="login.password">
                                    <label for="input-field" class="input-label">Password </label>
                                    <span class="text-danger" v-if="errors.password">{{ errors.password[0] }}</span>
                                    <span class="input-highlight"></span>
                                    <i toggle="#password-field" class="fa-solid fa-eye toggle-password"></i>
                                </div>
                            </div>
                            <div class="row pe-0">
                                <div class="col-6">
                                    <div class="input-container">
                                        <a href="javascript:" class="f_link"><small>
                                                <p style="color:white;">Forget Password?</p>
                                            </small></a>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="input-container">
                                        <nuxt-link to="/register" class="f_link" style="text-align: right;">
                                            <div> <small style="color:white;">Register</small></div>
                                        </nuxt-link>
                                    </div>
                                </div>
                                <div class="col-12 px-0">
                                    <div class="input-container text-end">
                                        <input class="btn_submit w-100" value="Login" type="submit"><br /><br />
                                    </div>
                                </div>

                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <!-- END  -->
    <!-- share popup  -->
    <div class="modal_share">
        <div class="popup">
            <header>
                <span>Share With </span>
                <div class="close" @click="shareBtnCls"><i class="fa-solid fa-x"></i></div>
            </header>
            <div class="content">
                <p>Share this link via</p>
                <ul class="icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-whatsapp"></i></a>
                    <a href="#"><i class="fab fa-telegram-plane"></i></a>
                </ul>
                <p>Or copy link</p>
                <div class="field">
                    <i class="url-icon uil uil-link"></i>
                    <input type="text" readonly id="myInput" value="https://winup360.com/">
                    <button onclick="copy()" id="change_txt">Copy</button>
                </div>
            </div>
        </div>
    </div>

</div>
</template>

<script>
import bus from '~/plugins/bus.js';
export default {
    data() {
        return {
            category_id: '',
            loading: false,
            cart: [],
            prouducts: [],
            itemCount: 0,
            updatedQuantity: 0,

            login: {
                email: '',
                password: '',
            },
            invaliderror: '',
            notifmsg: '',
            errors: {},
        }

    },
    mounted() {
        this.onlyloadingTicket();
    },
    computed: {
        loggedIn() {
            return this.$auth.loggedIn;
        },

    },
    methods: {
        async wishlist(slug) {
            try {
                this.loading = true; // Show loader
                // Define parameters
                const page = 1;
                const limit = 10;
                // Make GET request with parameters
                const response = await this.$axios.get(`/order/addtowish/${slug}`);
                console.log(response.data);
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
                    title: "Item added to wishlist successfully!"
                });
            } catch (error) {
                console.error('Error fetching slidersImages:', error);
            } finally {
                this.loading = false; // Hide loader after response or error
            }

        },

        async onlyloadingTicket() {
            const response = await this.$axios.get('/unauthenticate/getTickets');
            this.prouducts = response.data.tickets;
            this.category_id = response.data.category_id;
            //console.log("tickets: " +  response.data);
        },

        addtoCart(product) {

            this.loading = true;
            // const cart = JSON.parse(localStorage.getItem('cart')) || [];
            const existingProduct = this.cart.find(item => item.id === product.id);
            if (existingProduct) {
                existingProduct.quantity += 1;
            } else {
                // this.cart.push({
                //     ...product,
                //     quantity: 1
                // });
                if (this.category_id === 27) {
                    this.cart.push({
                        ...product,
                        category_id: this.category_id,
                        ticketprice: product.price,
                        thumnail_img: product.thumnail,
                        addi_pname: '',
                        addi_thumnail: '',
                        ticket_qty: 1,
                        quantity: 1,
                    });
                } else {
                    this.cart.push({
                        ...product,
                        size: this.choose_size,
                        category_id: this.category_id,
                        quantity: 1,
                    });
                }
            }
            // Merge with existing data if any
            const existingData = JSON.parse(localStorage.getItem('cart')) || [];
            const newData = [...existingData, ...this.cart];

            localStorage.setItem('cart', JSON.stringify(newData));

            bus.$emit("updateCart", newData);

            setTimeout(() => {
                this.loading = false;
            }, 1000);
        },
        saveCart() {
            if (process.client) {
                localStorage.setItem('cart', JSON.stringify(this.cart));
            }
        },
        async viewDetails(slug) {
            const prosulg = slug;
            const response = await this.$axios.get(`/unauthenticate/productSlug/${prosulg}`);
            $("#description").html(response.data.product_descr);
            //console.log("product row " + response.data.product_descr);

            $(".details_modal").fadeIn();
        },

        async userLogin() {
            try {

                const postData = {
                    email: this.login.email,
                    password: this.login.password,
                    // Add other parameters as needed
                };

                let {
                    data
                } = await this.$axios.post('/auth/login', postData); //await this.login.post('/auth/login');
                await this.$auth.setUserToken(data.access_token);
                this.closePopup();
                const Toast = Swal.mixin({
                    toast: true,
                    position: "top-end",
                    showConfirmButton: false,
                    timer: 3000,
                    timerProgressBar: true,
                    didOpen: (toast) => {
                        toast.onmouseenter = Swal.stopTimer;
                        toast.onmouseleave = Swal.resumeTimer;
                    }
                });
                Toast.fire({
                    icon: "success",
                    title: "Signed in successfully"
                });
                this.$router.push('/');

            } catch (err) {

                if (err.response.status === 422) {
                    this.errors = err.response.data.errors;
                    this.errorHandler(err);
                }

                console.log(err)
            }
        },

        hideDetails() {
            $(".details_modal").fadeOut();
        },
        shareBtn() {
            $(".modal_share").fadeIn();
        },
        shareBtnCls() {
            $(".modal_share").fadeOut();
        },
        loginPopup() {
            $(".login_modal").fadeIn();
        },
        closePopup() {
            $(".login_modal").fadeOut();
        },

    }
}
</script>
