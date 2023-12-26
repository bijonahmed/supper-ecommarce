<template>
<div>

    <Navbar />

    <div class="container">
        <div class="row mobile_view">
            <div class="col-md-12">

                <div class="pay_m_title">
                    <nuxt-link to="/user/profile" class="btn_back" type="button"> <i class="fa-solid fa-arrow-left-long"></i>
                    </nuxt-link>
                    <h6>Order Details </h6>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 desktop_view">
                <LeftsidebarDesktop />
            </div>
            <div class="col-xl-9">
                <span v-if="loading">
                    <Loader />
                </span>

                <div class="order_details">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="or_des" id="mobileScreen" style="background-color: #373737;">
                                <div class="des_title">
                                    <img src="/images/logo.png" class="img-fluid" loading="lazy" alt="">
                                </div>
                                <div class="des_body">
                                    <div class="body_title">
                                        <h1>Thank You For Your Order.</h1>
                                        <div class="user_details">
                                            <p><strong>Order Status:</strong>{{ orderstatus }}</p>
                                            <p><strong>Order Id:</strong>#1111111</p>
                                            <p><strong>Payment With:</strong>Bkash</p>
                                            <p><strong>Trx Id:</strong>KJLSD7F7U9SDF</p>
                                            <p><strong>Order date:</strong>25/12/2023</p>
                                        </div>
                                        </p>
                                    </div>
                                    <ul>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="d_p_image">
                                                        <img src="/images/Modesh_Men_069.jpg" class="img-fluid" loading="lazy" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="des_part">
                                                        <div>
                                                            <h1>MEN'S POLO T-SHIRT BLACK</h1>
                                                            <p><strong>Quantity: </strong>3</p>
                                                        </div>
                                                        <div>
                                                            <h6>300TK</h6>
                                                        </div>
                                                    </div>
                                                    <div class="des_ticket">
                                                        <div class="d-flex justify-content-between align-items-center">
                                                            <img src="images/iphone15.png" class="img-fluid" loading="lazy" alt="ticket-image">
                                                            <div>
                                                                <h3>Win iPhone15 pro 256GB</h3>
                                                                <p><span>776672788343,</span><span>776672788343,</span><span>776672788343,</span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <h6>00.00TK</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="d_p_image">
                                                        <img src="images/Modesh_Men_069.jpg" class="img-fluid" loading="lazy" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="des_part">
                                                        <div>
                                                            <h1>MEN'S POLO T-SHIRT BLACK</h1>
                                                            <p><strong>Quantity: </strong>3</p>
                                                        </div>
                                                        <div>
                                                            <h6>300TK</h6>
                                                        </div>
                                                    </div>
                                                    <div class="des_ticket">
                                                        <div class="d-flex justify-content-between align-items-center">
                                                            <img src="images/iphone15.png" class="img-fluid" loading="lazy" alt="ticket-image">
                                                            <div>
                                                                <h3>Win iPhone15 pro 256GB</h3>
                                                                <p><span>776672788343,</span><span>776672788343,</span><span>776672788343,</span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <h6>00.00TK</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <div class="text-end mt-2">
                                            <p>Total Ammount: 600 Tk</p>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="text-center">
                    <button id="capture_btn" class="btn_submit m-auto mb-2" @click="captureBtn">Take screenshort</button>
                </div>

            </div>
        </div>
    </div>

    <Footer />
</div>
</template>

<script>
export default {
    middleware: "auth",
    head: {
        title: 'Order Details',
    },
    data() {
        return {
            loading: false,
            orderstatus: '',
            orders: [],
            errors: {},
        }
    },
    mounted() {
        const orderId = this.$route.query.orderId;
        console.log("order I D: " + orderId);
        this.loadingOrders();
    },
    computed: {

        totalQuantity() {
            // Calculate total quantity
            return this.orders.reduce((total, order) => total + order.quantity, 0);
        },
        totalAmount() {
            // Calculate total amount
            return this.orders.reduce((total, order) => total + order.total, 0);
        },
    },
    methods: {
        captureBtn() {
            html2canvas($("#mobileScreen")[0], {
                scale: 3, // Resolution scale (2 for 2x, 3 for 3x, and so on)
            }).then(function (canvas) {
                var imgData = canvas.toDataURL();
                var downloadLink = document.createElement("a");
                downloadLink.href = imgData;
                downloadLink.download = "Order Details(winUp360.com).png";  
                document.body.appendChild(downloadLink);
                downloadLink.click();
                document.body.removeChild(downloadLink);
            });

        },
        async loadingOrders() {
            this.loading = true;
            const orderId = this.$route.query.orderId;
            await this.$axios.get(`/order/orderDetails/${orderId}`).then(response => {
                    this.orders = response.data.orderdata;
                    this.orderstatus = response.data.orderrow;
                })
                .catch(error => {
                    // Handle error
                })
                .finally(() => {
                    this.loading = false; // Hide loader after response
                });

        },
        addtoCart() {
            this.$router.push('/cart');
        },

    }
}
</script>

<style scoped>
table {
    background-color: #f2f2f2;
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}

th,
td {
    text-align: left;
    padding: 8px;
}
</style>
