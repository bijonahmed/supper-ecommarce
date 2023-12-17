<template>
<div>
    <Navbar />
    <!-- mobile header part start here  -->
    <section class="mobile_header app_show">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="header_button ">
                        <a href="index.html">
                            <div class="creadit_ticket">
                                <p>Win Exclusive Price</p>
                                <h1>Lottery</h1>
                            </div>
                        </a>
                        <a href="product.html" class="active">
                            <div class="creadit_ticket">
                                <p>Win Exclusive Price</p>
                                <h1>PRODUCT</h1>
                            </div>
                        </a>
                        <a href="winner.html">
                            <div class="creadit_ticket">
                                <p>Winner from last Draw</p>
                                <h1>WINNERS</h1>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- mobile header part end here  -->

    <!-- product details part start here  -->
    <section class="product_details">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <!-- images slider part start here  -->
                    <div class="pd_slider">
                        <swiper-container class="mySwiper" pagination="true">

                            <swiper-slide v-for="(img, index) in slider_img" :key="index">
                                <img :src="img.thumnail" class="img-fluid" loading="lazy" alt="">
                            </swiper-slide>

                        </swiper-container>
                    </div>
                    <!-- images slider part end here  -->
                </div>
                <div class="col-md-7">
                    <div class="detail_part">
                        <h1>{{ pro_row.name }}</h1>
                        <div class="clr_size">
                            <img src="/images/lottery_model.png" class="img-fluid" loading="lazy" alt="">
                            <h2 class="mb-0">Ticket Price: BDT{{ pro_row.price }}</h2>
                            <h2 class="mb-2">You will get a Lottery Ticket for free </h2>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="custom-select">
                                    <select name="Country">
                                        <option value="">Size</option>
                                        <option value="">XS</option>
                                        <option value="">XL</option>
                                        <option value="">L</option>
                                        <option value="">M</option>
                                        <option value="">S</option>
                                    </select>
                                    <span class="custom-arrow"></span>
                                </div>
                                <div class="d-flex align-items-center">
                                    <button class="btn_size" @click="btnSize"><i class="fa-solid fa-question-circle"></i>Size Guide</button>
                                </div>
                            </div>
                        </div>

                        <div class="price_cart_box">
                            <div>
                                <p>Product Price</p>
                                <h3>BDT {{ pro_row.price }}</h3>
                            </div>
                            <button class="btn_submit">Add to cart</button>
                        </div>
                        <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                        size Details
                                    </button>
                                </h2>
                                <div id="flush-collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <p class="productdetails" style="color: white;"></p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- size chart part start here  -->
    <div class="size_chart_modal">
        <div class="chart_img">
            <div class="d-flex justify-content-end">
                <button class="btn_mclose" @click="btnSizeClose"><i class="fa-solid fa-x"></i></button>
            </div>
            <img src="/images/size_chart.webp" class="img-fluid" loading="lazy" alt="">
        </div>
    </div>
    <!-- size chart part end here  -->

    <!-- product details part end here  -->

    <Footer />

</div>
</template>

<script>
export default {
    head: {
        title: 'Product Details',
    },
    data() {
        return {
            cart: [],
            itemCount: 0,
            slider_img: [],
            subtotal: 0,
            pro_row: [],
            loading: false,
        }
    },
    mounted() {
        this.fetchData();

    },
    computed: {

    },
    methods: {
        btnSize(){
            $(".size_chart_modal").fadeIn();
        },
        btnSizeClose(){
            $(".size_chart_modal").fadeOut();
        },
        async fetchData() {
            const prosulg = this.$route.params.slug; //this.$route.query.slug;
            console.log("-----------" + prosulg);
            //return false; 
            const response = await this.$axios.get(`/unauthenticate/productSlug/${prosulg}`);
            console.log("----" + response.data.slider_img);
            this.slider_img = response.data.slider_img;
            this.pro_row = response.data.pro_row;
            $(".productdetails").html(response.data.pro_row.description);
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
