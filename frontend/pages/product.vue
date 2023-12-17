<template>
<div>
    <Navbar />
    <!-- cat slider part start here  -->
    <section class="cat_slider">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="swiper cat_slider_box">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide cat_box" v-for="(item, index) in prouducts" :key="index">
                                <nuxt-link :to="`/product-details/${item.slug}`">
                                    <img :src="item.thumnail" class="img-fluid" loading="lazy" alt="">
                                    <h4>{{ item.name }}</h4>
                                </nuxt-link>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- cat slider part end here  -->

    <!-- product grid part star there  -->
    <section class="product">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h6>EXPLORE PRODUCTS</h6>
                    <div class="p_filter">
                        <button type="button" class="btn_pfiler">All Products</button>
                        <button type="button" class="btn_pfiler">Man</button>
                        <button type="button" class="btn_pfiler">Woman</button>
                        <button type="button" class="btn_pfiler">Kids</button>
                        <button type="button" class="btn_pfiler">Accessories</button>
                    </div>

                    <div class="product_grid">

                        <div class="product_gview" v-for="(item, index) in prouducts" :key="index">
                            <button type="button"><i class="fa-solid fa-heart"></i></button>
                            <nuxt-link :to="`/product-details/${item.slug}`">
                                <img :src="item.thumnail" class="img-fluid" loading="lazy" alt="">
                                <h5>{{ item.name }}</h5>
                                <p>TK{{ item.price }}</p>
                            </nuxt-link>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-4 col-12 m-auto">
                            <button class="btn_submit m-0 mb-2 w-100">Explore More</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product grid part end here  -->

    <!-- explore our Accessories part star here  -->
    <section class="accesories">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <a href="product.html">
                        <div class="">
                            <p>Exclusive</p>
                            <h4>Explore Our ACCESSORIES</h4>
                        </div>
                        <div>
                            <i class="fa-solid fa-arrow-right"></i>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- explore our Accessories part end here  -->

    <!-- explore our collection part start here  -->
    <section class="cat_slider">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="swiper cat_slider_box">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide cat_box"  v-for="(item, index) in prouducts" :key="index">
                                <nuxt-link :to="`/product-details/${item.slug}`">
                                    <img :src="item.thumnail" class="img-fluid" loading="lazy" alt="">
                                    <h4>{{ item.name }}</h4>
                                </nuxt-link>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- explore our collection part end here  -->

    <Footer />
</div>
</template>

<script>
export default {
    head: {
        title: 'Products',
    },
    data() {
        return {
            prouducts: [],
        }
    },
    mounted() {
        this.limitedproduct();
        this.$nextTick(() => {
            this.initCarousel();
        });
    },
    methods: {
        async limitedproduct() {
            const response = await this.$axios.get('/unauthenticate/sellingFast');
            this.prouducts = response.data;
        },
        initCarousel() {
            // Main slider box
            new Swiper(".cat_slider_box", {
                slidesPerView: 5,
                spaceBetween: 10,
                breakpoints: {
                    0: {
                        slidesPerView: 1,
                        spaceBetween: 5
                    },
                    320: {
                        slidesPerView: 2,
                        spaceBetween: 5
                    },
                    377: {
                        slidesPerView: 2,
                        spaceBetween: 5
                    },
                    480: {
                        slidesPerView: 2,
                        spaceBetween: 5
                    },
                    576: {
                        slidesPerView: 2,
                        spaceBetween: 5
                    },
                    768: {
                        slidesPerView: 3,
                        spaceBetween: 5
                    },
                    992: {
                        slidesPerView: 3,
                    },
                    1200: {
                        slidesPerView: 4,
                    }
                }
            });

        }
    }
}
</script>
