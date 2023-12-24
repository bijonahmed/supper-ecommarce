<template>
<div>
    <Navbar />
    <MainSlider />
    <SellingFastSlider />
    <Banner />
    <ExploreCampain />
    <SoldOut />
    <Winner />
    <Footer />

    <div class="cart_link" @click="cartLink">
        <nuxt-link to="/cart">
            <p>Shopping Cart</p> <i class="fa-solid fa-cart-shopping"></i>
            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                {{ itemCounts }}
            </span>
        </nuxt-link>
    </div>
    <div class="spinner">
        <div class="dot1"></div>
        <div class="dot2"></div>
    </div>

    <!-- share popup  -->
    <div class="modal_share">
        <div class="popup">
            <header>
                <span>Share With </span>
                <div class="close"><i class="fa-solid fa-x"></i></div>
            </header>
            <div class="content">
                <p>Share this link via</p>
                <ul class="icons">
                    <a href="https://www.facebook.com/winup360" target="_blank"><i class="fab fa-facebook-f"></i></a>
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
            cart: [],
            _itemCount: 0,
            itemCounts: 0,
        }
    },
    mounted() {
        this.loadCart();
        bus.$on('updateCart', (updatedCart) => {
            this.loadCart();
        });
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
            //console.log("Finally get total Cart" + itemCount);
            this.itemCounts = itemCount;
        },
        cartLink() {
            $(".cart_link p").fadeIn();
        }
    }
}
</script>
