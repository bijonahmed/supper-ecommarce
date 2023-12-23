<template>
<div>

    <Navbar />
    <section class="cart">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="cart_list">
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
                                                    <div class="creadit_ticket">
                                                        <p>Lottery Creadit</p>
                                                        <h1>BDT125</h1>
                                                    </div>
                                                </div>
                                                <div class="cart_title" v-if="item.category_id !== 27">
                                                    <h1>{{ item.name }} </h1>
                                                    <span>{{ item.quantity }} x {{ item.price }}</span><br><span>{{ item.size }}</span>
                                                    <h6>Lottery credit</h6>
                                                    <p>{{ calculateTotalPrice(item) }}</p>
                                                    <span>You will get 1 tickets</span>
                                                </div>
                                                <div class="cart_title" v-else>
                                                    <h1>{{ item.name }} </h1>
                                                    <span>{{ item.quantity }} x {{ item.price }}</span>
                                                    <h6>Lottery credit</h6>
                                                    <p>{{ calculateTotalPrice(item) }}</p>

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
                    <div class="total_amt">
                        <ul>
                            <li>
                                <h1>Win BDT10,000 weekly by adding only BDT1.00</h1>
                                <div class="checkboxes__item">
                                    <label class="checkbox style-e">
                                        <input type="checkbox" />
                                        <div class="checkbox__checkmark"></div>
                                    </label>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h6>Total</h6>
                                    <p>Inclusive of VAT</p>
                                </div>
                                <div>
                                    <h2>${{ subtotal }}</h2>
                                </div>
                            </li>
                            <li>
                                <p>Subtotal</p>
                                <p> ${{ subtotal }}</p>
                            </li>
                            <li>
                                <p>VAT</p>
                                <p> BDT42.86</p>
                            </li>
                        </ul>
                    </div>
                    <div class="offer_box">
                        <div class="checkboxes__item">
                            <label class="checkbox style-e">
                                <input type="checkbox">
                                <div class="checkbox__checkmark"></div>
                            </label>
                        </div>
                        <div>
                            <h6>Lottery Wallet</h6>
                            <h6>available balance: BDT5.00</h6>
                        </div>
                    </div>
                    <div class="promo_box offer_box">
                        <div class="input_box">
                            <form action="">
                                <input type="text" placeholder="Promo Code ">
                                <button class="btn_apply" type="button">Apply</button>
                            </form>
                        </div>
                    </div>
                    <div class="promo_box offer_box">
                        <!-- add "disabled" class to link disabled  -->

                        <div v-if="loggedIn" class="w-100" style="width: 100%;">
                            <button @click="orderConfirm" style="display: block;" class="btn_submit btn_checkout txtformat">Order Confirm</button>
                        </div>

                        <div v-else style="width: 100%;">
                            <nuxt-link to="/login" style="display: block;" class="btn_submit btn_checkout txtformat">Checkout</nuxt-link>
                        </div>

                    </div>
                    <div class="payment_section ">
                        <h2>Payment method</h2>
                        <!-- choose payment  -->
                        <div class="choose_method">
                            <h6 class="" id="output"></h6>
                            <div class="row">
                                <div class="col-xl-6 mb-2">
                                    <div class="pay_option">
                                        <input type="radio" class="checkbox" name="pay_method" id="api_m">
                                        <label for="api_m">
                                            <img src="/images/gpay_logo.png" class="img-fulid" loading="lazy" alt="">
                                        </label>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="pay_option">
                                        <input type="radio" class="checkbox2" name="pay_method" id="card">
                                        <label for="card">
                                            <div>
                                                <h6>Credit/Debit Cards</h6>
                                                <img src="/images/cards.png" class="cards_pic img-fulid" loading="lazy" alt="">
                                            </div>
                                        </label>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- payment here  -->
                        <div class="card_form">
                            <form action="">
                                <h5>Add card</h5>
                                <div class="card_input">
                                    <input type="text" placeholder="Creadit or Debit card Number " class="img-fulid">
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="card_input">
                                            <input type="text" placeholder="Expiry Date MM/YY" class="img-fulid">
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="card_input">
                                            <input type="text" placeholder="Secutiy Code" class="img-fulid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card_payment">
                                    <input type="checkbox" name="save" id="">
                                    <label for="save">Save Card to Account</label>
                                </div>
                                <button class="btn_pay" type="button">Pay Now </button>
                            </form>
                        </div>

                        <!-- payment button  -->
                        <div class="pay_form">
                            <a href="javascript:" class="btn_pay payment_api">Buy with Pay </a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
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
            cart: [],
            itemCount: 0,
            subtotal: 0,
            loading: false,
        }
    },
    mounted() {
        this.getCartTotal();
        this.loadCart();
        this.calculateTotalQuantity();

    },
    computed: {
        loggedIn() {
            return this.$auth.loggedIn;
        },
    },
    methods: {
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
            const totalQuantity = cart.reduce((total, item) => total + item.quantity, 0);
            console.log("Total Quantity in Cart:", totalQuantity);
            this.itemCount = totalQuantity;

        },
        calculateTotalPrice(item) {
            // Check if necessary properties are truthy before performing the calculation
            if (item && item.quantity !== undefined && item.price !== undefined) {
                const total = item.quantity * item.price;
                return `Total: ${this.formatPrice(total)}`; // Assuming you have a formatPrice method
            } else {
                return "Invalid item data";
            }
        },
        formatPrice(price) {
            // Add your price formatting logic here
            // For example, you might want to format the price to two decimal places
            return price.toFixed(2);
        },
        /*
        increaseQuantity(productId) {
            const savedCart = localStorage.getItem('cart');
            if (savedCart) {
                let cartData = JSON.parse(savedCart);
                const index = cartData.findIndex(cartItem => cartItem.id === productId);

                if (index !== -1) {

                    cartData[index].quantity += 1;
                    localStorage.setItem('cart', JSON.stringify(cartData));
                    this.loadCart();

                    // Call the updateQuantity method as well
                    this.updateQuantity(cartData[index]);
                    this.getCartTotal();
                }
            }
        },
        */

        increaseQuantity(productId) {
            const savedCart = localStorage.getItem('cart');
            if (savedCart) {
                let cartData = JSON.parse(savedCart);
                const index = cartData.findIndex(cartItem => cartItem.id === productId);

                if (index !== -1) {

                    if (this.category_id == 27) {
                        cartData[index].quantity += 1;
                    } else {
                        cartData[index].quantity += 1;
                    }

                    localStorage.setItem('cart', JSON.stringify(cartData));
                    this.loadCart();

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
                    if (this.category_id == 27) {
                        cartData[index].ticket_qty = parseInt(item.quantity);
                    } else {
                        cartData[index].quantity = parseInt(item.quantity);
                    }

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

                if (this.category_id !== 27) {
                    totalPrice = uniqueCart.reduce(
                        (total, item) => total + (item.price || 0) * item.quantity,
                        0
                    );
                } else {
                    totalPrice = uniqueCart.reduce(
                        (total, item) => total + (item.ticketprice || 0) * item.ticket_qty,
                        0
                    );
                }

                this.subtotal = totalPrice;
                console.log('Total Price for Unique Items:', totalPrice);
            } else {
                console.error('No cart data found in local storage.');
            }
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
