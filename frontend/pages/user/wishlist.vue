<template>
<div>
    <!-- desktop view profile section start here  -->
    <Navbar />
    <div class="container">
        <div class="row mobile_view">
            <div class="col-md-12">
                <div class="pay_m_title">
                    <nuxt-link to="/user/profile" class="btn_back" type="button"> <i class="fa-solid fa-arrow-left-long"></i>
                    </nuxt-link>
                    <h6>Wishlist </h6>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 desktop_view">
                <LeftsidebarDesktop />
            </div>
            <div class="col-xl-9">

                <div class="profile_right">
                    <h1 class="desktop_view">Wishlist</h1>
                    <div class="cart_list">
                        <ul>
                            <li>
                                <div class="cart_item ">

                                    <div class="row" style="width: 100%;">
                                        <div class="col-md-6">
                                            <div class="cart_left">
                                                <div class="c_price" style="position: unset;">
                                                    <img src="/images/campain_slide1.gif" class="img-fulid" style="width: 100%;" alt="">
                                                </div>
                                                <div class="cart_title">
                                                    <h1>VIP Plate T-285 or BDT150, Lorem ipsum dolor sit amet
                                                        consectetur
                                                        adipisicing elit. Ipsum, quas.</h1>
                                                    <h6>Lottery credit</h6>
                                                    <p>BDT5.00</p>
                                                    <!-- sale progress  -->
                                                    <div class="sell_progress">
                                                        <div class="">
                                                            <span id="timer" class="end_date" data-date="29 April 2028 23:59:00 GMT+01:00">
                                                                Closing:
                                                                <strong class="days" style="color: limegreen;"></strong>
                                                                <strong class="hours" style="color: limegreen;"></strong>
                                                                <strong class="minutes" style="color: limegreen;"></strong>
                                                                <strong class="seconds" style="color: limegreen;"></strong>
                                                            </span>
                                                        </div>
                                                        <div class="d-none">
                                                            <span>1372 sold out of 1950</span>
                                                            <div class="progress " role="progressbar" aria-label="Success example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                                <div class="progress-bar" style="width: 25%"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="value_change">
                                                <div class="value_box">
                                                    <button type="button" class="btn_submit" style="display: block;">Add
                                                        To cart</button>

                                                    <button type="button" class="btn_submit rm_w">Remove from
                                                        wishlist</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="cart_item ">

                                    <div class="row" style="width: 100%;">
                                        <div class="col-md-6">
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
                                                    <div class="sell_progress">
                                                        <div class="d-none">
                                                            <span id="timer" class="end_date" data-date="29 April 2028 23:59:00 GMT+01:00">
                                                                Closing:
                                                                <strong class="days" style="color: limegreen;"></strong>
                                                                <strong class="hours" style="color: limegreen;"></strong>
                                                                <strong class="minutes" style="color: limegreen;"></strong>
                                                                <strong class="seconds" style="color: limegreen;"></strong>
                                                            </span>
                                                        </div>
                                                        <div class="">
                                                            <span>1372 sold out of 1950</span>
                                                            <div class="progress " role="progressbar" aria-label="Success example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                                <div class="progress-bar" style="width: 25%"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="value_change">
                                                <div class="value_box">
                                                    <button type="button" class="btn_submit" style="display: block;">Add
                                                        To cart</button>

                                                    <button type="button" class="btn_submit rm_w">Remove from
                                                        wishlist</button>
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
    <!--desktop view profile section end here  -->

    <Footer />
</div>
</template>

<script>
export default {
    head: {
        title: 'Wishlist',
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
