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
                <div class="row">
                    <div class="col">
                        <h4 style="color: white;">Orders Details </h4>
                    </div>

                    <div class="col">
                        <strong>
                            <p style="color: white;">Order Status: {{ orderstatus }}</p>
                        </strong>
                    </div>

                </div>

                <div style="overflow-x:auto;">

                    <table width="100%" border="0">
                        <tr>
                            <td width="22">#</td>
                            <td width="916">Item Description </td>
                            <td width="63">
                                <div align="center">Qty</div>
                            </td>
                            <td width="80">
                                <div align="center">Price</div>
                            </td>
                            <td width="80">
                                <div align="center">Total</div>
                            </td>
                        </tr>
                        <tr v-for="(order, index) in orders" :key="index">
                            <td>{{ index + 1 }}</td>
                            <td>{{ order.product_name }}</td>
                            <td>
                                <div align="center">{{ order.quantity }}</div>
                            </td>
                            <td>
                                <div align="center">{{ order.price }}</div>
                            </td>
                            <td>
                                <div align="center">{{ order.total }}</div>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <div align="right">Total Qty:</div>
                            </td>
                            <td>
                                <div align="center">{{ totalQuantity }}</div>
                            </td>
                            <td>
                                <div align="center">Total : </div>
                            </td>
                            <td>
                                <div align="center">{{ totalAmount }}</div>
                            </td>
                        </tr>
                    </table>
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
        title: 'Order Lists',
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
