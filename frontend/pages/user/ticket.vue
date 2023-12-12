<template>
<div>
    <Navbar />
    <div class="container">
        <div class="row mobile_view">
            <div class="col-md-12">
                <div class="pay_m_title">
                    <nuxt-link to="/user/profile" class="btn_back" type="button"> <i class="fa-solid fa-arrow-left-long"></i>
                    </nuxt-link>
                    <h6>Active Ticket </h6>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 desktop_view">
                <LeftsidebarDesktop />
            </div>
            <div class="col-xl-9">
                <div class="profile_right">
                    <h1 class="desktop_view">Active Ticket</h1>
                    <div class="cart_list">
                        <ul>
                            <li>
                                <div class="cart_item ">

                                    <div class="row" style="width: 100%;">
                                        <div class="col-md-12">
                                            <div class="cart_left">
                                                <div class="c_price" style="position: unset;">
                                                    <img src="/images/cash2.png" class="img-fulid" style="width: 100%;" alt="">
                                                </div>
                                                <div class="cart_title">
                                                    <h1>VIP Plate T-285 or BDT150, Lorem ipsum dolor sit amet
                                                        consectetur
                                                        adipisicing elit. Ipsum, quas.</h1>
                                                    <h6>Lottery credit</h6>
                                                    <p>BDT5.00</p>
                                                    <span>Draw Date: <strong style="color: limegreen;">24 Jan
                                                            2024</strong></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="cart_item ">

                                    <div class="row" style="width: 100%;">
                                        <div class="col-md-12">
                                            <div class="cart_left">
                                                <div class="c_price" style="position: unset;">
                                                    <img src="/images/cash2.png" class="img-fulid" style="width: 100%;" alt="">
                                                </div>
                                                <div class="cart_title">
                                                    <h1>VIP Plate T-285 or BDT150, Lorem ipsum dolor sit amet
                                                        consectetur
                                                        adipisicing elit. Ipsum, quas.</h1>
                                                    <h6>Lottery credit</h6>
                                                    <p>BDT5.00</p>
                                                    <span>Draw Date: <strong style="color: limegreen;">24 Jan
                                                            2024</strong></span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </li>

                        </ul>
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
        title: 'Ticket',
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
