<template>
<div>
    <section class="main_slider">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <!-- Swiper -->
                    <div class="swiper main_slider_box">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="slide_box">
                                    <img src="/images/slider_one.png" class="img-fulid" loading="lazy" alt="">
                                    <div class="s_txt">
                                        <h1>Win</h1>
                                        <h6>Tesla Models Plaid</h6>
                                        <p>Buy lottery Credit <br> and make it yours!</p>
                                        <a href="javascript:" class="s_link show_details">See Details</a>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="slide_box">
                                    <img src="/images/slider_two.png" class="img-fulid" loading="lazy" alt="">

                                </div>
                            </div>

                        </div>
                        <div class="navi_op">
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
</template>

<script>
export default {
    data() {
        return {

        }
    },
    mounted() {
        this.$nextTick(() => {
            this.initCarousel();
        });
    },
    methods: {
        initCarousel() {
            // Main slider box
            new Swiper(".main_slider_box", {
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",

                },
                spaceBetween: 10,
            });

        }
    }
}
</script>
