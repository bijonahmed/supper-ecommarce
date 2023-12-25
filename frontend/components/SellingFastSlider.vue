<template>
<div>

    <section class="selling_fast">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Selling Fast</h1>
                    <!-- Swiper -->
                    <span v-if="loading">
                        <Loader />
                    </span>
                    <div class="swiper pro_slider">
                        <div class="swiper-wrapper">
                            <!-- start  -->
                            <div class="swiper-slide" v-for="(item, index) in products" :key="index">
                                <nuxt-link :to="`/product-details/${item.slug}`">
                                    <div class="sell_fast">
                                        <div class="product_image">
                                        <img :src="item.thumnail" class="img-fluid" loading="lazy" alt="">
                                        <div class="p_tag" v-if="item.addi_pname !== '' && item.addi_thumnail !== ''">
                                            <img :src="item.addi_thumnail" class="img-fluid" loading="lazy" alt="">
                                            <h6>{{ item.addi_pname }}</h6>
                                        </div>

                                    </div>
                                    <h3>Get a chance to <span>WIN</span></h3>
                                        <h2>{{ item.name }}</h2>
                                        <!-- <button type="button" class="add_cart" @click="addtoCart(item)">add to cart</button> -->
                                    </div>
                                </nuxt-link>
                            </div>
                            <!-- end -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
</template>

<script>
export default {
    data() {
        return {
            loading: false,
            cart: [],
            products: [],
            itemCount: 0,
            updatedQuantity: 0,
        }
    },
    mounted() {
        this.sellingFast();
        this.$nextTick(() => {
            this.initCarousel();

        });
    },
    methods: {
        async sellingFast() {
            try {
                this.loading = true; // Show loader
                const response = await this.$axios.get('/unauthenticate/sellingFast');
                this.products = response.data;
                // Handle other logic related to products if needed
            } catch (error) {
                console.error('Error fetching sellingFast:', error);
                // Handle error if needed
            } finally {
                this.loading = false; // Hide loader after response or error
            }
        },
        addtoCart(product) {
            this.loading = true;
            // const cart = JSON.parse(localStorage.getItem('cart')) || [];
            const existingProduct = this.cart.find(item => item.id === product.id);
            if (existingProduct) {
                // existingProduct.quantity += 1;
            } else {
                this.cart.push({
                    ...product,
                    quantity: 1
                });
            }
            // Merge with existing data if any
            const existingData = JSON.parse(localStorage.getItem('cart')) || [];
            const newData = [...existingData, ...this.cart];

            localStorage.setItem('cart', JSON.stringify(newData));

            setTimeout(() => {
                this.loading = false;
            }, 1000);
        },

        initCarousel() {
            // Pro slider
            new Swiper(".pro_slider", {
                slidesPerView: 1,
                spaceBetween: 20,
                breakpoints: {
                    320: {
                        slidesPerView: 1,
                        spaceBetween: 20
                    },
                    377: {
                        slidesPerView: 2,
                        spaceBetween: 20
                    },
                    480: {
                        slidesPerView: 2,
                        spaceBetween: 20
                    },
                    576: {
                        slidesPerView: 2,
                        spaceBetween: 20
                    },
                    768: {
                        slidesPerView: 3,
                        spaceBetween: 20
                    },
                    992: {
                        slidesPerView: 4,
                    },
                    1200: {
                        slidesPerView: 6,
                    }

                }
            });

        }
    }
}
</script>
