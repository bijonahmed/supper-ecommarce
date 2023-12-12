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
                            <p>Available Balance in Idealz Wallet</p>
                            <h1>BDT5.00</h1>
                        </div>
                    </div>
                    <h6>Select Topup Method </h6>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="pay_option" bis_skin_checked="1">
                                <input type="radio" class="default" name="pay_method" id="default">
                                <input type="radio" class="checkbox1" name="pay_method" id="crypto">
                                <label for="crypto">
                                    <img src="/images/binance.png" class="img-fulid" loading="lazy" alt="">
                                </label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="pay_option" bis_skin_checked="1">
                                <input type="radio" class="checkbox" name="pay_method" id="api_m">
                                <label for="api_m">
                                    <img src="/images/gpay_logo.png" class="img-fulid" loading="lazy" alt="">
                                </label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="pay_option" bis_skin_checked="1">
                                <input type="radio" class="checkbox2" name="pay_method" id="card">
                                <label for="card">
                                    <div bis_skin_checked="1">
                                        <h6>Credit/Debit Cards</h6>
                                        <img src="/images/cards.png" class="cards_pic img-fulid" loading="lazy" alt="">
                                    </div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="profile_right code_option">
                    <div class="pay_m_title">
                        <button class="btn_back" type="button"> <i class="fa-solid fa-arrow-left-long"></i> </button>
                        <h6>TOpup</h6>

                    </div>
                    <!-- promo code  -->
                    <div class="profile_links promo_">
                        <form action="">
                            <div class="input-container">
                                <input placeholder="Credit Code (case sensitive) " class="input-field" type="text">
                                <label for="input-field" class="input-label">Credit Code (case sensitive) </label>
                                <span class="input-highlight"></span>
                            </div>
                            <buttton class="btn_submit mt-4">Next</buttton>
                        </form>
                    </div>
                    <!-- crypto  -->
                    <div class="profile_links crypto_">
                        <form action="">
                            <div class="input-container">
                                <input placeholder="Enter Your Ammount" class="input-field" type="text">
                                <label for="input-field" class="input-label">Enter Your Ammount</label>
                                <span class="input-highlight"></span>
                            </div>
                            <div class="input-container">

                                <buttton class="btn_submit btn_nxt mt-4">Next</buttton>
                            </div>
                        </form>
                    </div>

                    <!-- card  -->
                    <div class="card_form form_wallet card_">
                        <form action="">
                            <h5>Add card</h5>
                            <div class="card_input" bis_skin_checked="1">
                                <input type="text" placeholder="Creadit or Debit card Number " class="img-fulid">
                            </div>
                            <div class="row" bis_skin_checked="1">
                                <div class="col-6" bis_skin_checked="1">
                                    <div class="card_input" bis_skin_checked="1">
                                        <input type="text" placeholder="Expiry Date MM/YY" class="img-fulid">
                                    </div>
                                </div>
                                <div class="col-6" bis_skin_checked="1">
                                    <div class="card_input" bis_skin_checked="1">
                                        <input type="text" placeholder="Secutiy Code" class="img-fulid">
                                    </div>
                                </div>
                            </div>
                            <div class="card_payment" bis_skin_checked="1">
                                <input type="checkbox" name="save" id="">
                                <label for="save">Save Card to Account</label>
                            </div>
                            <button class="btn_pay" type="button">Pay Now </button>
                        </form>
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
