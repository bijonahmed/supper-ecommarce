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
                    <div v-if="imgloading">
                        <center> <img src="/images/loading_animated.gif" class="rounded" style="height: 50px;width:50px;" /></center>
                    </div>
                    <div v-for="(category, categoryName) in groupedProducts" :key="categoryName">
                        <center><span style="color:white;text-align: center;">{{ categoryName }}</span></center>
                        <div class="product_grid">
                            <div class="product_gview" v-for="(item, index) in category" :key="index">

                                <span v-if="loggedIn">
                                    <button type="button" class="active" @click="wishlist(item.slug)"><i class="fa-solid fa-heart"></i></button>
                                </span>
                                <span v-else>
                                    <button type="button" class="active" @click="loginPopup"><i class="fa-solid fa-heart"></i></button>
                                </span>

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
    <MobileMenu />
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
                                    <input placeholder="Password" class="input-field" id="password-field" :type="showPassword ? 'text' : 'password'" v-model="login.password">
                                    <label for="input-field" class="input-label">Password </label>
                                    <span class="text-danger" v-if="errors.password">{{ errors.password[0] }}</span>
                                    <span class="input-highlight"></span>
                                    <i toggle="#password-field" class="fa-solid fa-eye toggle-password" @click="showhidePassword"></i>
                                </div>
                            </div>
                            <div class="row pe-0">
                                <div class="col-6">
                                    <div class="input-container  d-none">
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
</div>
</template>

<script>
export default {
    head: {
        title: 'Products',
    },
    data() {
        return {
            imgloading: true,
            loading: false,
            prouducts: [],
            categories: [],
            catProuducts: [],
            subcategories: [],
            login: {
                email: '',
                password: '',
            },
            showPassword: false,
            errors: {},
            invaliderror: '',
            notifmsg: '',
        }
    },
    computed: {
        loggedIn() {
            return this.$auth.loggedIn;
        },
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
        setTimeout(() => {
            this.allCategory();
            this.allproducts();
            this.imgloading = false;
        }, 2000); //
        this.limitedproduct();

        this.allSubCategory();

        this.$nextTick(() => {
            this.initCarousel();
        });
    },
    methods: {
        showhidePassword() {
            this.showPassword = !this.showPassword;
        },
        loginPopup() {
            $(".login_modal").fadeIn();
        },
        closePopup() {
            $(".login_modal").fadeOut();
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
