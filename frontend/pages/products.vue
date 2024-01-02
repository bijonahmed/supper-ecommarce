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

                            <div class="swiper-slide cat_box" v-for="(item, index) in subcategories" :key="index">
                                <nuxt-link :to="`/categories/${item.slug}`">
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
                    <span v-if="loading">
                        <Loader />
                    </span>
                    <h6>EXPLORE PRODUCTS</h6>
                    <div class="p_filter">
                        <!-- <button type="button" class="btn_pfiler allproducts" @click="getItems(null)">All Products</button> -->
                        <button type="button" class="btn_pfiler " v-for="(item, index) in categories" :key="index" @click="getItems(item.id)">{{ item.name }}</button>

                    </div>

                    <div v-for="(category, categoryName) in groupedProducts" :key="categoryName">
                        <center><span style="color:white;text-align: center;">{{ categoryName }}</span></center>
                        <div class="product_grid">
                            <div class="product_gview" v-for="(item, index) in category" :key="index">
                                <button type="button"><i class="fa-solid fa-heart"></i></button>
                                <nuxt-link :to="`/product-details/${item.slug}`">
                                    <div class="product_image">
                                        <img :src="item.thumnail" class="img-fluid" loading="lazy" alt="">
                                        <div class="p_tag" v-if="item.addi_pname !== '' && item.addi_thumnail !== ''">
                                            <img :src="item.addi_thumnail" class="img-fluid" loading="lazy" alt="">
                                            <h6>{{ item.addi_pname }}</h6>
                                        </div>

                                    </div>
                                    <h5>{{ item.name }}</h5>
                                    <p>TK{{ item.price }}</p>
                                </nuxt-link>
                                <!-- <nuxt-link :to="`/product-details/${item.slug}`">
                                    <img :src="item.thumnail" class="img-fluid" loading="lazy" alt="">
                                    <h5>{{ item.name }}</h5>
                                    <p>TK{{ item.price }}</p>
                                </nuxt-link> -->
                            </div>
                        </div>
                    </div>
                    <!-- <div class="product_gview" v-for="(item, index) in catProuducts" :key="index">
                            <button type="button"><i class="fa-solid fa-heart"></i></button>
                            <nuxt-link :to="`/product-details/${item.slug}`">
                                <img :src="item.thumnail" class="img-fluid" loading="lazy" alt="">
                                <h5>{{ item.name }}</h5>
                                <p>TK{{ item.price }}</p>
                            </nuxt-link>
                        </div> -->
                    <div class="row d-none">
                        <div class="col-md-4 col-12 m-auto">
                            <button class="btn_submit m-0 mb-2 w-100">Explore More</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product grid part end here  -->

    <!-- explore our collection part start here  -->
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
    <!-- explore our collection part end here  -->

    <Footer />
    <MobileMenu/>
</div>
</template>

<script>
export default {
    head: {
        title: 'Products',
    },
    data() {
        return {
            loading: false,
            prouducts: [],
            categories: [],
            catProuducts: [],
            subcategories: [],
        }
    },
    computed: {
        groupedProducts() {
            const grouped = {};
            this.catProuducts.forEach((item) => {
                const categoryName = item.category_name;
                if (!grouped[categoryName]) {
                    grouped[categoryName] = [];
                }
                grouped[categoryName].push(item);
            });

            // Filter out categories without products
            const filteredGrouped = Object.fromEntries(
                Object.entries(grouped).filter(([key, value]) => value.length > 0)
            );

            return filteredGrouped;
        },
    },
    mounted() {
        this.limitedproduct();
        this.allproducts();
        this.allCategory();
        this.allSubCategory();

        this.$nextTick(() => {
            this.initCarousel();
        });
    },
    methods: {

        async getItems(categoryid) {
            this.loading = true;
            let url;
            if (categoryid === null) {
                // If categoryid is null, fetch all products
                url = '/unauthenticate/searchProductCategory/all'; // Update the URL as needed
            } else {
                // If categoryid is not null, fetch products for the specified category
                url = `/unauthenticate/searchProductCategory/${categoryid}`;
            }
            await this.$axios.get(url)
                .then(response => {
                    this.catProuducts = response.data.result;
                })
                .catch(error => {
                    // Handle error
                })
                .finally(() => {
                    this.loading = false; // Hide loader after response
                });
        },

        allproducts() {
            this.getItems(1);
        },
        async limitedproduct() {
            const response = await this.$axios.get('/unauthenticate/sellingFast');
            this.prouducts = response.data;
        },

        async allCategory() {
            const response = await this.$axios.get('/unauthenticate/getCategoryList');
            this.categories = response.data;
        },

        async allSubCategory() {
            const response = await this.$axios.get('/unauthenticate/getsubCategoryList');
            this.subcategories = response.data;
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
