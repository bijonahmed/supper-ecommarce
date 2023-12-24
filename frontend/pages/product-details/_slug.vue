<template>
<div>
    <Navbar />

    <!-- product details part start here  -->
    <section class="product_details">
        <div class="container">
            <div class="row">
                <span v-if="loading">
                    <Loader />
                </span>

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
                            <!-- <img src="/images/lottery_model.png" class="img-fluid" loading="lazy" alt=""> -->
                            <h2 class="mb-0">Price: BDT{{ pro_row.price }}</h2>
                            <h2 class="mb-2" v-if="category_id !== 27">You will get a Lottery Ticket for free </h2>

                            <div class="d-flex justify-content-between align-items-center" v-if="category_id !== 27">

                                <div class="custom-select">
                                    <select name="choose_size" v-model="choose_size">
                                        <option value="">Size</option>
                                        <option v-for="size in prodAttr" :key="size.id">{{ size.name }}</option>
                                    </select>
                                    <span class="custom-arrow"></span>
                                </div>
                                <div class="d-flex align-items-center">
                                    <button class="btn_size" @click="btnSize"><i class="fa-solid fa-question-circle"></i>Size Guide</button>
                                </div>

                            </div>

                            <div class="d-flex justify-content-between align-items-center" v-else>
                                <!-- Content for category_id === 27 (Quantity) -->
                                <div class="custom-select">
                                    <select v-model="ticket_qty" @change="updatePrice">
                                        <option value="">Select Ticket Quantity</option>
                                        <option v-for="number in 150" :key="number">{{ number }}</option>
                                    </select>
                                    <span class="custom-arrow"></span>
                                </div>

                            </div>

                        </div>

                        <div class="price_cart_box">
                            <div>
                                <p>Price</p>
                                <h3>BDT {{ ticketprice || pro_row.price }}</h3>
                            </div>
                            <button class="btn_submit" @click="addtoCart(pro_row)">Add to cart</button>
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
import bus from '~/plugins/bus.js';
export default {
    head: {
        title: 'Product Details',
    },
    data() {
        return {
            cart: [],
            slider_img: [],
            choose_size: '',
            subtotal: 0,
            category_id: '',
            itemCount: 0,
            pro_row: [],
            prodAttr: [],
            ticket_qty: '',
            pro_row: {
                price: 0, // Initial price
            },
            ticketprice: '',
            loading: false,
        }
    },
    mounted() {
        this.fetchData();
    },
    computed: {

    },
    methods: {
        updatePrice() {
            console.log("Ticket Quantity:", this.ticket_qty);
            console.log("Product Row Price Before:", this.pro_row.price);
            const result = this.ticket_qty * this.pro_row.price;
            this.ticketprice = result;
            console.log("Result:", result);
            console.log("Product Row Price After:", this.pro_row.price);

        },
        addtoCart(product) {
            this.loading = true;

            if (this.category_id === 27) {
                // Category is 27 (ticket category)
                const chkTicketQty = this.ticket_qty;

                if (chkTicketQty === "") {
                    this.loading = false;
                    Swal.fire({
                        position: "top-end",
                        icon: "warning",
                        title: "Please select your ticket quantity!",
                        showConfirmButton: false,
                        timer: 1500,
                    });
                    return false;
                }
            } else {
                // Other category (not ticket category)
                const chkSizeVal = this.choose_size;

                if (chkSizeVal === "") {
                    this.loading = false;
                    Swal.fire({
                        position: "top-end",
                        icon: "warning",
                        title: "Please select your size!",
                        showConfirmButton: false,
                        timer: 1500,
                    });
                    return false;
                }
            }

            const existingProduct = this.cart.find(
                (item) => item.id === product.id && item.size === this.choose_size
            );

            if (existingProduct) {
                existingProduct.quantity += 1;
            } else {
                /*
                this.cart.push({
                    ...product,
                    size: this.choose_size,
                    category_id: this.category_id,
                    ticketprice: this.ticketprice,
                    ticket_qty: this.ticket_qty,
                    quantity: 1,
                });
                */
                if (this.category_id === 27) {
                    this.cart.push({
                        ...product,
                        size: this.choose_size,
                        category_id: this.category_id,
                        ticketprice: this.ticketprice,
                        ticket_qty: this.ticket_qty,
                        quantity: 1,
                        price: this.ticketprice,
                    });
                } else {
                    // Handle the case when category_id is not 27
                    // You can set a default price or omit the 'price' property altogether
                    this.cart.push({
                        ...product,
                        size: this.choose_size,
                        category_id: this.category_id,
                        ticketprice: this.ticketprice,
                        ticket_qty: this.ticket_qty,
                        quantity: 1,
                    });
                }
            }

            // Merge with existing data if any
            const existingData = JSON.parse(localStorage.getItem("cart")) || [];
            const newData = [...existingData, ...this.cart];

            localStorage.setItem("cart", JSON.stringify(newData));

            // Emit an event to notify other components
            bus.$emit("updateCart", newData);

            setTimeout(() => {
                this.loading = false;
            }, 1000);
        },

        // addtoCart(product) {
        //     this.loading = true;
        //     const chksizeval = this.choose_size;
        //     if (chksizeval == "") {
        //         this.loading = false;
        //         Swal.fire({
        //             position: "top-end",
        //             icon: "warning",
        //             title: "Please select your size!",
        //             showConfirmButton: false,
        //             timer: 1500
        //         });
        //         return false;
        //     } else {
        //         const existingProduct = this.cart.find(item => item.id === product.id && item.size === this.choose_size);
        //         //this.cart.find(item => item.id === product.id);
        //         if (existingProduct) {
        //             existingProduct.quantity += 1;
        //         } else {
        //             this.cart.push({
        //                 ...product,
        //                 size: this.choose_size,
        //                 category_id: this.category_id,
        //                 ticketprice: this.ticketprice,
        //                 quantity: 1
        //             });
        //         }
        //         // Merge with existing data if any
        //         const existingData = JSON.parse(localStorage.getItem('cart')) || [];
        //         const newData = [...existingData, ...this.cart];

        //         localStorage.setItem('cart', JSON.stringify(newData));

        //         // Emit an event to notify other components
        //         bus.$emit('updateCart', newData);

        //         setTimeout(() => {
        //             this.loading = false;
        //         }, 1000);
        //     }
        // },
        saveCart() {
            if (process.client) {
                localStorage.setItem('cart', JSON.stringify(this.cart));
            }
        },
        btnSize() {
            $(".size_chart_modal").fadeIn();
        },
        btnSizeClose() {
            $(".size_chart_modal").fadeOut();
        },
        async fetchData() {
            const prosulg = this.$route.params.slug;
            const response = await this.$axios.get(`/unauthenticate/productSlug/${prosulg}`);
            //  console.log("----" + response.data.prodAttr);
            this.slider_img = response.data.slider_img;
            this.prodAttr = response.data.prodAttr;
            this.pro_row = response.data.pro_row;
            this.category_id = response.data.category_id;
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
