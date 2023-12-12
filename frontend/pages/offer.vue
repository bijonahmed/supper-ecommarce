<template>
<div>
    <Navbar />
    <div class="container">
      
        <div class="row">
            <div class="col-xl-12">
                <div class="profile_right">
                    <h1 class="desktop_view">Offers</h1>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="bonus_section">
                                <div class="">
                                    <h5>Get 10% Extra <br>on Binance top-up</h5>
                                    <a href="#">Topup</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="bonus_section">
                                <div class="">
                                    <h5>Get 10% Extra <br>on Binance top-up</h5>
                                    <a href="#">Topup</a>
                                </div>
                            </div>
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
    head: {
        title: 'Offer',
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
