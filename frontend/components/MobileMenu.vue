<template>
<div style="position: sticky; bottom: 0; width: 100%;z-index: 5;">
    <!-- mobile footer part start here  -->
    <footer style="position: unset;" class="mobile_footer app_show">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="f_mnu">
                        <ul>
                            <li :class="{ active: $route.path === '/' }">
                                <nuxt-link to="/"><i class="fa-solid fa-home"></i></nuxt-link>
                                <p>Home</p>
                            </li>
                            <li :class="{ active: $route.path === '/user/ticket' }">
                                <nuxt-link to="/user/ticket"><i class="fa-solid fa-ticket"></i></nuxt-link>
                                <p>Ticket</p>
                            </li>
                            <li :class="{ active: $route.path === '/offer' }">
                                <nuxt-link to="/offer"><i class="fa-solid fa-gift"></i></nuxt-link>
                                <p>Offers</p>
                            </li>

                            <li :class="{ active: $route.path === '/cart' }">
                                <nuxt-link to="/cart"><i class="fa-solid fa-cart-shopping"></i></nuxt-link>
                                <p>Cart</p>
                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                    {{ itemCounts }}
                                </span>
                            </li>
                            <li>
                                <a data-bs-toggle="offcanvas" href="#mobile_menu" role="button" aria-controls="mobile_menu">
                                    <i class="fa-solid fa-bars"></i>
                                </a>
                                <p>Menu</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- mobile footer part end here  -->
    <!-- mobile menu offcanvas  -->
    <div class="offcanvas offcanvas-start app_show" tabindex="-1" id="mobile_menu" aria-labelledby="mobile_menuLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">WINUP360</h5>
            <button type="button" class="btn_close bg-transparent text-white" data-bs-dismiss="offcanvas" aria-label="Close">
                <i class="fa-solid fa-x color-white" style="color: #fff;"></i></button>
        </div>
        <div class="offcanvas-body" style="height: 90%;overflow: auto;">
            <!-- login registration part start here  -->
            <div class="tab-content" id="pills-tabContent">
                <!-- link without login  -->
                <div class="profile_links">
                    <ul>
                        <li v-if="loggedIn">
                            <nuxt-link to="/user/profile"><span><strong class="fa-solid fa-user"></strong>Personal
                                    Details</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
                        </li>
                        <li v-else>
                            <nuxt-link to="/login"><span><strong class="fa-solid fa-user"></strong>Personal
                                    Details</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
                        </li>


                        <li v-if="loggedIn">
                            <nuxt-link to="/user/orderlist">
                                <span><strong class="fa-brands fa-product-hunt"></strong>Order</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>
                        <li v-else>
                            <nuxt-link to="/login">
                                <span><strong class="fa-brands fa-product-hunt"></strong>Order</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>

                        <li v-if="loggedIn">
                            <nuxt-link to="/user/wishlist">
                                <span><strong class="fa-solid fa-heart"></strong>Wishlist</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>
                        <li v-else>
                            <nuxt-link to="/login">
                                <span><strong class="fa-solid fa-heart"></strong>Wishlist</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>

                        <li v-if="loggedIn">
                            <nuxt-link to="/user/wallet">
                                <span><strong class="fa-solid fa-dollar-sign"></strong>Wallet</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
                        </li>

                        <li v-else>
                            <nuxt-link to="/login">
                                <span><strong class="fa-solid fa-dollar-sign"></strong>Wallet</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>

                        <li v-if="loggedIn">
                            <nuxt-link to="/user/offer"><span><strong class="fa-solid fa-gift"></strong>Offer</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
                        </li>

                        <li v-else>
                            <nuxt-link to="/login">
                                <span><strong class="fa-solid fa-gift"></strong>Offer</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>

                        <li v-if="loggedIn">
                            <nuxt-link to="/user/ticket">
                                <span><strong class="fa-solid fa-ticket"></strong>Active Ticket</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
                        </li>

                        <li v-else>
                            <nuxt-link to="/login">
                                <span><strong class="fa-solid fa-ticket"></strong>Active Ticket</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>

                        <li v-if="loggedIn">
                            <nuxt-link to="/user/payment"><span><strong class="fa-regular fa-credit-card"></strong>Payment Option </span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
                        </li>

                        <li v-else>
                            <nuxt-link to="/login">
                                <span><strong class="fa-regular fa-credit-card"></strong>Payment Option </span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>

                        <li v-if="loggedIn">
                            <nuxt-link to="/user/settings">
                                <span><strong class="fa-solid fa-gear"></strong>Settings</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
                        </li>

                        <li v-else>
                            <nuxt-link to="/login">
                                <span><strong class="fa-solid fa-gear"></strong>Settings</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>

                        <li v-if="loggedIn">
                            <nuxt-link to="/user/notification">
                                <span><strong class="fa-solid fa-bell"></strong>Notifications</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>

                        <li v-else>
                            <nuxt-link to="/login">
                                <span><strong class="fa-solid fa-bell"></strong>Notifications</span> <i class="fa-solid fa-chevron-right"></i>
                            </nuxt-link>
                        </li>

                        <li v-if="loggedIn">
                            <a href="#" @click="logout"><span><strong class="fa-solid fa-right-from-bracket"></strong>Logout</span></a>
                        </li>
                        <li v-else>
                            <nuxt-link to="/login">
                                <span><strong class="fa-solid fa-right-from-bracket"></strong>Login/Register</span>
                            </nuxt-link>
                        </li>
                        
                    </ul>
                </div>

                <!-- mobile menu offcanvas end here  -->
            </div>
        </div>
    </div>
</div>
</template>

<script>
import bus from '~/plugins/bus.js';
import axios from 'axios';
export default {
    data() {
        return {
            //loggedIn: false,
            cart: [],
            _itemCount: 0,
            itemCounts: 0,
        };
    },

    computed: {
        loggedIn() {
            return this.$auth.loggedIn;
        },
        itemCount: {
            get() {
                return this._itemCount;
            },
            set(value) {
                this._itemCount = value;
            },
        },
    },
    mounted() {
        this.loadCart();
        bus.$on('updateCart', (updatedCart) => {
            this.loadCart();
        });
    },
    methods: {
        loadCart() {
            const savedCart = localStorage.getItem('cart');

            if (savedCart) {
                this.cart = JSON.parse(savedCart);
            }

            let itemCount = 0;
            this.cart.forEach((item) => {
                itemCount += parseInt(item.quantity);
            });

            console.log("Finally get total Cart" + itemCount);
            this.itemCounts = itemCount;
        },
        async logout() {
            await this.$auth.logout()
            localStorage.removeItem('jwtToken');
            this.$router.push('/');
        },

    },
};
</script>

<style scoped>
.mobile_footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    padding: 10px 0;
    z-index: 1000;
}

/* Add styles for the 'active' class to highlight the active menu item */
.active {
    color: #007bff;
    /* Set your desired active color */
}
</style>
