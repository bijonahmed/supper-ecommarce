<template>
<div>

    <Navbar />
    <section class="cart">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="cart_list mt-0">
                        <h6 class="mb-0">Cart</h6>
                        <span v-if="loading">
                            <Loader />
                        </span>
                        <p class="l_alrt" v-if="!loggedIn">Please Login for Complete this process.</p>
                        <ul>
                            <li v-for="item in cart" :key="item.id">
                                <div class="cart_item ">
                                    <div class="row" style="width: 100%;">
                                        <div class="col-md-6">
                                            <div class="cart_left">
                                                <div class="c_price" style="position: unset;">
                                                    <img :src="item.thumnail_img" class="img-fluid" loading="lazy" alt="">
                                                </div>
                                                <div class="cart_title">
                                                    <h1>{{ item.name }}</h1>
                                                    <ul class="mb-0" style="margin: 0 !important;" v-if="item.addi_pname !== ''">
                                                        <li>
                                                            <strong class="text-light me-2">+</strong>
                                                            <div class="t_img">
                                                                <img :src="item.addi_thumnail_img" class="img-fluid" loading="lazy" alt="">
                                                            </div>
                                                            <h6>{{ item.addi_pname }}</h6>
                                                        </li>
                                                    </ul>

                                                    <div v-if="item.category_id !== 27">
                                                        <span>{{ item.quantity }} x {{ item.price }}</span> &nbsp;
                                                        <span>Size:{{ item.size }}</span>

                                                        <div v-if="item.addi_pname !== ''">
                                                            <p>{{ calculateTotalPrice(item) }}<span>+1 Free
                                                                    Ticket</span></p>
                                                            <span>You will get 1 tickets</span>
                                                        </div>
                                                        <div v-else>
                                                            <p>{{ calculateTotalPrice(item) }}</p>
                                                        </div>

                                                    </div>
                                                    <div v-else>
                                                        <span>{{ item.quantity }} x {{ item.price }}</span>
                                                        <p>{{ calculateTotalPrice(item) }}</p>

                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="value_change">
                                                <div class="value_box">
                                                    <button type="button" value="-" class="val_minus cart-qty-minus" @click="removefromCart(item.id)"> <i class="fa-solid fa-minus"></i></button>
                                                    <input type="text" class="val_input qty" v-model="item.quantity" @input="updateQuantity(item)">
                                                    <button type="button" class="val_add cart-qty-plus" value="+" @click="increaseQuantity(item.id)">Add more</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="col-md-3">

                    <div class="offer_box">
                        <div class="checkboxes__item">
                            <label class="checkbox style-e">
                                <input type="checkbox" v-model="isChecked" @click="toggleWalletInfo">
                                <div class="checkbox__checkmark"></div>
                            </label>
                        </div>
                        <div>
                            <h6> Lottery Wallet</h6>
                            <h6>available balance: {{ pre_setting.currency }}&nbsp;{{ pre_setting.wallet_balance }}</h6>
                        </div>
                    </div>
                    <div class="promo_box offer_box">

                        <div class="input_box">

                            <form action="">
                                <div>
                                    <input type="text" placeholder="Promo Code" v-model="couponCode">
                                </div>
                                <button class="btn_apply" type="button" @click="checkCoupon">Apply</button>

                            </form>
                        </div>
                    </div>
                    <div class="total_amt">
                        <ul>

                            <li>
                                <p>Item Subtotal</p>
                                <p>{{ pre_setting.currency }}&nbsp;{{ itemSubtotal }}</p>
                            </li>

                            <li>
                                <div>
                                    <p>Shipping</p>
                                    <span style="font-size: 10px;color: red;">Condition Apply</span>
                                </div>

                                <p>{{ pre_setting.currency }}&nbsp;{{ pre_setting.shipping_fee }}</p>
                            </li>
                            <li>
                                <p>VAT&nbsp;<span style="font-size: 10px;">({{ pre_setting.vat_percentage }}%)</span>
                                </p>
                                <p>{{ pre_setting.currency }}&nbsp;{{ percentageAmount }}</p>
                            </li>
                            <li v-if="showWalletInfo">
                                <p>Wallet Balance</p>
                                <p>{{ pre_setting.currency }}&nbsp;-{{ pre_setting.wallet_balance }}</p>
                            </li>
                            <li v-if="couponamt !== ''">

                                <p>Promo DCF</p>
                                <p>{{ pre_setting.currency }}&nbsp;- {{ couponamt }}</p>

                            </li>
                            <li>
                                <div>
                                    <h6>Total</h6>
                                    <p>Inclusive of VAT</p>
                                </div>
                                <div>
                                    <h2>Tk.{{ subtotal }}</h2>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="promo_box offer_box">
                        <!-- add "disabled" class to link disabled  -->

                        <div v-if="loggedIn" class="w-100" style="width: 100%;">
                            <nuxt-link to="/payment" style="display: block;" class="btn_submit btn_checkout txtformat">Checkout</nuxt-link>
                            <!-- <button @click="orderConfirm" style="display: block;" class="btn_submit btn_checkout txtformat">Order Confirm</button> -->
                        </div>
                        <div v-else style="width: 100%;">
                            <button style="display: block;" class="btn_submit btn_checkout txtformat" @click="loginpopup">Checkout</button>
                        </div>

                    </div>

                </div>

                <!-- <button @click="loginpopup">Login</button> -->
                <div class="login_modal">
                    <div class="main_content">
                        <div class="log_regi">
                            <button class="cls_mdal" @click="closePopup"><i class="fa-solid fa-x"></i></button>
                            <div class="login_section">
                                <form @submit.prevent="userLogin()" id="formrest_login" class="forms-sample" enctype="multipart/form-data">
                                    <h5 class="text-center">Login</h5>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="input-container">
                                                <input placeholder="Email" class="input-field" type="text" v-model="login.email">
                                                <label for="input-field" class="input-label">Email </label>
                                                <span class="text-danger" v-if="errors.email">{{ errors.email[0]
                                                    }}</span>
                                                <span class="input-highlight"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input-container">
                                                <input placeholder="Password" class="input-field" id="password-field" type="password" v-model="login.password">
                                                <label for="input-field" class="input-label">Password </label>
                                                <span class="text-danger" v-if="errors.password">{{ errors.password[0]
                                                    }}</span>
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
                                                    <input class="btn_submit w-100" value="Login" type="submit">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- login popup  -->

    </section>

    <Footer />

</div>
</template>

<script>
import bus from '~/plugins/bus.js';
export default {
    head: {
        title: 'Cart',
    },
    data() {
        return {
            itemSubtotal: 0,
            shippingFee: 0,
            isChecked: false,
            showWalletInfo: false,
            couponCode: '',
            couponamt: '',
            apiResponseMessage: '',
            cart: [],
            pre_setting: '',
            itemCount: 0,
            subtotal: 0,
            loading: true,
            percentageAmount: 0,

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
        this.setting();
        this.loadingCart();
        this.loadCart();
        this.calculateTotalQuantity();

    },
    computed: {
        loggedIn() {
            return this.$auth.loggedIn;
        },
    },

    methods: {

        loadTotalAmut() {
            console.log("loadTotalAmut" + this.subtotal);
            const subtotal = this.subtotal;
            // Save the updated cart back to local storage
            localStorage.setItem('subtotal', JSON.stringify(subtotal));

        },
        toggleWalletInfo() {
            this.showWalletInfo = !this.showWalletInfo;
            // Call this.getCartTotal() when showWalletInfo is true
            if (this.showWalletInfo) {
                this.getCartTotal();
            }
        },
        async checkCoupon() {
            try {
                this.loading = true; // Show loader
                const response = await this.$axios.post('/unauthenticate/check-coupon', {
                    couponCode: this.couponCode,
                });
                this.couponamt = response.data.wallet_amount;
                this.couponResult = response.data.message;
                this.apiResponseMessage = "";
                this.getCartTotal();

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
                    title: response.data.message
                });

            } catch (error) {

                // Check if error.response exists before accessing its properties
                if (error.response && error.response.data && error.response.data.message) {
                    this.apiResponseMessage = error.response.data.message;
                } else {
                    // If response data is not available, set a generic error message
                    this.apiResponseMessage = 'An error occurred while processing your request.';
                }

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
                    icon: "warning",
                    title: error.response.data.message
                });
            } finally {
                this.loading = false; // Hide loader after response or error
            }

        },
        async setting() {
            try {
                this.loading = true; // Show loader
                const response = await this.$axios.get('/unauthenticate/setting');
                this.pre_setting = response.data;
                this.shippingFee = response.data.shipping_fee;
                this.getCartTotal();
            } catch (error) {
                console.error('Error fetching sellingFast:', error);

            } finally {
                this.loading = false; // Hide loader after response or error
            }

        },
        loadingCart() {
            setTimeout(() => {
                this.loading = false;
            }, 1000); // 5000 milliseconds = 5 seconds
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
                } = await this.$axios.post('/auth/login', postData);
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
                this.$router.push('/payment');

            } catch (err) {

                if (err.response.status === 422) {
                    this.errors = err.response.data.errors;
                    this.errorHandler(err);
                }

                console.log(err)
            }
        },

        errorHandler(error) {
            if (error.response && error.response.data.errors && error.response.data.errors.account) {
                console.log("error : " + error.response.data.errors.account[0]);
                this.invaliderror = error.response.data.errors.account[0];
            } else {
                console.log("An error occurred. Please try again later.");
            }
        },
        orderConfirm() {
            Swal.fire({
                title: "Are you sure?",
                text: "Do you want to submit an order?",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes"
            }).then((result) => {
                if (result.isConfirmed) {
                    const response = this.$axios.post('/order/submitOrder', {
                        cart: this.cart,
                    });
                    this.clearCart();
                    console.log(response.data); // Log the API response

                    const savedCart = localStorage.getItem('cart');
                    let cartData = JSON.parse(savedCart);
                    bus.$emit("updateCart", cartData);

                    Swal.fire({
                        title: "Success!",
                        text: "Your order has been submited.",
                        icon: "success"
                    });
                }
            });
        },

        clearCart() {
            this.loading = true;
            localStorage.removeItem('cart');
            this.cart = [];
            this.calculateTotalQuantity();
            setTimeout(() => {
                this.loading = false;
            }, 2000);

        },

        calculateTotalQuantity() {
            // Get the cart data from local storage
            const cartData = localStorage.getItem('cart');
            const cart = JSON.parse(cartData) || [];
            const totalQuantity = cart.reduce((total, item) => total + parseInt(item.quantity, 10), 0);
            //  console.log("Total Quantity in Cart:", totalQuantity);
            this.itemCount = totalQuantity;

        },
        calculateTotalPrice(item) {
            // Check if necessary properties are truthy before performing the calculation
            if (item && item.quantity !== undefined && item.price !== undefined) {
                const total = item.quantity * item.price;
                return `Tk.: ${this.formatPrice(total)}`; // Assuming you have a formatPrice method
            } else {
                return "Invalid item data";
            }
        },
        formatPrice(price) {
            return price.toFixed(2);
        },

        increaseQuantity(productId) {
            const savedCart = localStorage.getItem('cart');
            if (savedCart) {
                let cartData = JSON.parse(savedCart);
                const index = cartData.findIndex(cartItem => cartItem.id === productId);
                if (index !== -1) {
                    cartData[index].quantity = (parseInt(cartData[index].quantity, 10) + 1).toString();
                    const totalQuantity = this.cart.reduce((total, item) => total + parseInt(item.quantity, 10), 0);
                    console.log("cart qty:" + totalQuantity);
                    console.log("cart qty:" + cartData[index].quantity);
                    //return false;
                    localStorage.setItem('cart', JSON.stringify(cartData));
                    this.loadCart();
                    bus.$emit("updateCart", cartData);
                    // Call the updateQuantity method as well
                    this.updateQuantity(cartData[index]);
                    this.getCartTotal();
                }
            }
        },

        updateQuantity(item) {
            const savedCart = localStorage.getItem('cart');
            if (savedCart) {
                let cartData = JSON.parse(savedCart);
                const index = cartData.findIndex(cartItem => cartItem.id === item.id);

                if (index !== -1) {
                    cartData[index].quantity = parseInt(item.quantity);
                    localStorage.setItem('cart', JSON.stringify(cartData));
                    this.loadCart();
                }
            }
        },
        removefromCart(productId) {
            this.loading = true;
            // Load the cart from local storage
            const savedCart = localStorage.getItem('cart');
            // this.$store.commit('cart/setCart', savedCart);

            if (savedCart) {
                const cartData = JSON.parse(savedCart);
                const updatedCart = cartData.filter(item => item.id !== productId);
                // Update the cart and save it back to local storage
                this.cart = this.getUniqueItems(updatedCart);
                localStorage.setItem('cart', JSON.stringify(updatedCart));
                bus.$emit('updateCart', this.cart);
                this.loadCart();
                setTimeout(() => {
                    this.loading = false;
                    this.getCartTotal();
                }, 1000);
            }

        },
        formatPrice(price) {
            if (typeof price === 'number') {
                return price.toFixed(2);
            }
            return price;
        },
        loadCart() {
            this.calculateTotalQuantity();
            const savedCart = localStorage.getItem('cart');
            if (savedCart) {

                const cartdata = JSON.parse(savedCart);
                this.cart = this.getUniqueItems(cartdata);
            }

        },
        getUniqueItems(cart) {
            return cart.filter((item, index, self) =>
                index === self.findIndex(t => t.id === item.id)
            );
        },

        getCartTotal() {
            const savedCart = localStorage.getItem('cart');
            if (savedCart) {
                const cartData = JSON.parse(savedCart);
                const uniqueCart = cartData.filter((item, index, self) =>
                    index === self.findIndex((t) => t.id === item.id)
                );
                let totalPrice = 0; // Declare totalPrice outside the if-else blocks
                totalPrice = uniqueCart.reduce((total, item) => total + (item.price || 0) * item.quantity, 0);
                // console.log("total :---" + totalPrice);
                this.itemSubtotal = totalPrice;
                const shipfees = this.pre_setting.shipping_fee;
                // console.log("shipping FEES : " + shipfees);
                const result_1 = this.isChecked ? parseFloat(totalPrice) - parseFloat(this.pre_setting.wallet_balance) : totalPrice;
                //console.log("result 1 : " + result_1);

                let result_2;
                if (this.couponamt !== '') {
                    result_2 = parseFloat(result_1) - parseFloat(this.couponamt);
                } else {
                    result_2 = result_1;
                }
                // console.log("result_2 : " + result_2);
                //console.log("shipping fee : " + this.pre_setting.shipping_fee);
                const percetage = this.pre_setting.vat_percentage;
                const result_3 = parseFloat(result_2) + parseFloat(this.pre_setting.shipping_fee);

                let percentageAmount;
                percentageAmount = (parseFloat(result_3) * percetage) / 100;
                this.percentageAmount = percentageAmount;
                // console.log("result 3: " + result_3);
                //console.log("percetage result: " + percentageAmount);
                const total = parseFloat(result_3) + parseFloat(percentageAmount);
                // console.log("total result : " + total);
                this.subtotal = `${total}`;
                console.log('Total Price for Unique Items:', totalPrice);
                this.loadTotalAmut();

            } else {
                console.error('No cart data found in local storage.');
            }
        },

        loginpopup() {
            $(".login_modal").fadeIn();
        },

        closePopup() {
            $(".login_modal").fadeOut();
        },

    }
}
</script>

<style>
.txtformat {
    text-decoration: none;
    width: 100%;
    text-align: center;
}
</style>
