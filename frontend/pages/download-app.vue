<template>
    <div>
        <Navbar />

        <!-- otp section start here  -->
        <section class="otp_sec">
            <div class="container">
                <div class="row">
                    <div class="app_link">

                        <center><a href="/download/winup360com.apk"> <img src="/images/Play.png" class="img-fulid" loading="lazy" alt=""></a>
                        </center>
                    </div>

                    <p>We have already submitted 'WinUp 360' to the Google Play Store. Once it goes live, we will share an
                        alternative way for you to download it manually.</p>
                </div>
                <div class="row">
                    <div class="app_link">

                        <center><a href="#"> <img src="/images/Apple.png" class="img-fulid" loading="lazy" alt=""></a>
                        </center>
                    </div>

                    <p>The app store is a work in progress....</p>
                </div>
            </div>
        </section>
        <!-- otp section end here  -->

        <Footer />
        <MobileMenu />
    </div>
</template>

<script>
export default {
    head: {
        title: 'Download App',
    },
    data() {
        return {

        }
    },
    computed: {

    },
    mounted() {
        //  this.countrys();
    },
    methods: {

    }
}
</script>
