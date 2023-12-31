<template>
<div>

    <Navbar />

    <div class="container">
        <div class="row mobile_view">
            <div class="col-md-12">
                <div class="pay_m_title">
                    <nuxt-link to="/user/profile" class="btn_back" type="button"> <i class="fa-solid fa-arrow-left-long"></i>
                    </nuxt-link>
                    <h6>Wallet </h6>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 desktop_view">
                <LeftsidebarDesktop />
            </div>
            <div class="col-xl-9">
                <div class="profile_right wallet_r_top">
                    <h1 class="desktop_view">Wallet</h1>
                    <div class="cart_list">
                        <div class="wallet_available">
                            <p>Available Balance in winup360 Wallet</p>
                            <h1>BDT5.00</h1>
                        </div>
                    </div>

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
        title: 'Wallet',
    },
    data() {
        return {

        }
    },
    mounted() {

    },
    methods: {

        addtoCart() {
            this.$router.push('/cart');
        },

    }
}
</script>
