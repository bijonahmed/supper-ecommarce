<template>
<div>

    <Navbar />

    <div class="container">
        <div class="row mobile_view">
            <div class="col-md-12">

                <div class="pay_m_title">
                    <nuxt-link to="/user/profile" class="btn_back" type="button"> <i class="fa-solid fa-arrow-left-long"></i>
                    </nuxt-link>
                    <h6>Order List </h6>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 desktop_view">
                <LeftsidebarDesktop />
            </div>
            <div class="col-xl-9">
                <h4>Orders </h4>
                <span v-if="loading">
                    <Loader />
                </span>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Place On </th>
                                <th>Total </th>
                                <th>Status </th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="order in orders" :key="order.id">
                                <td>{{ order.orderId }}</td>
                                <td>{{ order.placeOn }}</td>
                                <td>{{ order.total }}</td>
                                <td>{{ order.name }}</td>
                                <td><button class="btn btn-primary btn-sm" @click="orderDetails(order.orderId)"><i class="fas fa-search-plus"></i></button></td>
                            </tr>
                        </tbody>
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
        title: 'Order List',
    },
    data() {
        return {
            loading: false,
            orders: [],
            errors: {},
        }
    },
    mounted() {
        this.loadingOrders();
    },
    methods: {
        orderDetails(orderId) {

            this.$router.push({
                path: '/user/order-details',
                query: {
                    orderId: orderId
                }
            })

        },
        async loadingOrders() {
            this.loading = true;
            await this.$axios.get(`/order/allOrders`).then(response => {
                    this.orders = response.data.orderdata;
                })
                .catch(error => {
                    // Handle error
                })
                .finally(() => {
                    this.loading = false; // Hide loader after response
                });;

        },
        addtoCart() {
            this.$router.push('/cart');
        },

    }
}
</script>
