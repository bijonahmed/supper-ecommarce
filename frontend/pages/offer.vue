<template>
<div>
    <Navbar />
    <div class="container">

        <div class="row">
            <div class="col-xl-12">
                <div class="profile_right">
                    
                       <center> <h1>Welcome to WINUP360</h1></center> 
                        <p>Where there's an experience of winning in online shopping! Our offer is unprecedented. For any product you purchase, you have the chance to win an extraordinary prize! Shop at WINUP360 and you could be blessed with invaluable blessings without waiting. Take a glimpse at our past winners and experience the joy of victory.</p>
                        <p>All our draws are regulated by BANGLADESH economy and tourism. We take careful control of all draws for your confidence.</p>
                        <p><strong>WINUP360 - where shopping and winning come together!</strong></p>
                     
                </div>
            </div>
        </div>
    </div>

    <Footer />
    <MobileMenu />
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
