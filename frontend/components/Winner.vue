<template>
    <div>
        <section class="sold_out">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="sold_out_slider">
                        <h1>Winners</h1>
                        <p>All our sold out campaigns along with their corresponding draw dates are listed here.</p>
                        <div class="sl_nav">
                            <!-- <div class="swiper-button-next"></div>
              <div class="swiper-button-prev"></div> -->
                            <a href="javascript:" class="arrowbtn prev"><i class="fa-solid fa-chevron-left"></i></a>
                            <a href="javascript:" class="arrowbtn next"><i class="fa-solid fa-chevron-right"></i></a>
                        </div>
                        <!-- Swiper -->
                        <div class="swiper winners">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">

                                        <strong>Congratulations</strong>
                                        <h2>Jhone Due</h2>
                                        <h2>on winning BDT50,000 Cash</h2>
                                        <!-- <h3><span>Will be announced</span></h3> -->
                                        <h6>Ticket no: CG-03328-092310231 Announced on: 05:50 PM 16 November, 2023</h6>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">

                                        <strong>Congratulations</strong>
                                        <h2>Jhone Due</h2>
                                        <h2>on winning BDT50,000 Cash</h2>
                                        <!-- <h3><span>Will be announced</span></h3> -->
                                        <h6>Ticket no: CG-03328-092310231 Announced on: 05:50 PM 16 November, 2023</h6>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">

                                        <strong>Congratulations</strong>
                                        <h2>Jhone Due</h2>
                                        <h2>on winning BDT50,000 Cash</h2>
                                        <!-- <h3><span>Will be announced</span></h3> -->
                                        <h6>Ticket no: CG-03328-092310231 Announced on: 05:50 PM 16 November, 2023</h6>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">

                                        <strong>Congratulations</strong>
                                        <h2>Jhone Due</h2>
                                        <h2>on winning BDT50,000 Cash</h2>
                                        <!-- <h3><span>Will be announced</span></h3> -->
                                        <h6>Ticket no: CG-03328-092310231 Announced on: 05:50 PM 16 November, 2023</h6>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">

                                        <strong>Congratulations</strong>
                                        <h2>Jhone Due</h2>
                                        <h2>on winning BDT50,000 Cash</h2>
                                        <!-- <h3><span>Will be announced</span></h3> -->
                                        <h6>Ticket no: CG-03328-092310231 Announced on: 05:50 PM 16 November, 2023</h6>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="sell_fast sold_product_box">
                                        <img src="/images/iphone15.png" class="img-fulid mb-3" loading="lazy" alt="">

                                        <strong>Congratulations</strong>
                                        <h2>Jhone Due</h2>
                                        <h2>on winning BDT50,000 Cash</h2>
                                        <!-- <h3><span>Will be announced</span></h3> -->
                                        <h6>Ticket no: CG-03328-092310231 Announced on: 05:50 PM 16 November, 2023</h6>
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
            // Winners
            new Swiper(".winners", {
                slidesPerView: 4,
                loop: true,
                navigation: {
                    nextEl: '.next',
                    prevEl: '.prev',
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
