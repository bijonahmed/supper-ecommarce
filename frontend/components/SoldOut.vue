<template>
    <div>
        <section class="sold_out">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="sold_out_slider">
                        <h1>Sold Out</h1>
                        <p>All our sold out campaigns along with their corresponding draw dates are listed here.</p>
                        <div class="sl_nav">
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                        <!-- Swiper -->
                        <div class="swiper sold_out_s">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">
                                        <img src="/images/soldoutLabel.png" class="img-fulid sold_label" loading="lazy" alt="">

                                        <h2>iPhone 15 Pro Max</h2>
                                        <h2>IP-2932 </h2>
                                        <h3><span>Will be announced</span></h3>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">
                                        <img src="/images/soldoutLabel.png" class="img-fulid sold_label" loading="lazy" alt="">

                                        <h2>iPhone 15 Pro Max</h2>
                                        <h2>IP-2932 </h2>
                                        <h3>Draw Date:<span> 25 Dec 2023</span></h3>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">
                                        <img src="/images/soldoutLabel.png" class="img-fulid sold_label" loading="lazy" alt="">

                                        <h2>iPhone 15 Pro Max</h2>
                                        <h2>IP-2932 </h2>
                                        <h3><span>Will be announced</span></h3>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">
                                        <img src="/images/soldoutLabel.png" class="img-fulid sold_label" loading="lazy" alt="">

                                        <h2>iPhone 15 Pro Max</h2>
                                        <h2>IP-2932 </h2>
                                        <h3>Draw Date:<span> 25 Dec 2023</span></h3>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">
                                        <img src="/images/soldoutLabel.png" class="img-fulid sold_label" loading="lazy" alt="">

                                        <h2>iPhone 15 Pro Max</h2>
                                        <h2>IP-2932 </h2>
                                        <h3><span>Will be announced</span></h3>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">
                                        <img src="/images/soldoutLabel.png" class="img-fulid sold_label" loading="lazy" alt="">

                                        <h2>iPhone 15 Pro Max</h2>
                                        <h2>IP-2932 </h2>
                                        <h3>Draw Date:<span> 25 Dec 2023</span></h3>
                                    </div>
                                </div>

                            </div>
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
            // Sold Out
            new Swiper(".sold_out_s", {
                slidesPerView: 4,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                spaceBetween: 30,
                breakpoints: {
                    320: {
                        slidesPerView: 1,
                        spaceBetween: 20
                    },
                    377: {
                        slidesPerView: 2,
                        spaceBetween: 20
                    },
                    480: {
                        slidesPerView: 2,
                        spaceBetween: 20
                    },
                    576: {
                        slidesPerView: 2,
                        spaceBetween: 20
                    },
                    768: {
                        slidesPerView: 3,
                        spaceBetween: 20
                    },
                    992: {
                        slidesPerView: 3,
                    },
                    1200: {
                        slidesPerView: 4,
                    }

                }
            });
            
        }
    }
}
</script>
