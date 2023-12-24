<template>
<div>
    <Navbar />
    <section class="about_">
        <div class="container">
            <div class="row">
                <section class="payment_opsection">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h2>
                                    <center>
                                        <p>Thank you for your payment</p>
                                    </center>
                                </h2>
                                <div class="total_amt">
                                    <ul>
                                        <li class="text-center">
                                            <h1>Payment Summary</h1>
                                        </li>
                                        <li>
                                            <p>Status</p>
                                            <p>Order Placed</p>
                                        </li>
                                        <li>
                                            <p>Payment Type</p>
                                            <p>Bkash</p>
                                        </li>
                                        <li>
                                            <p>Order Id</p>
                                            <p>4564</p>
                                        </li>
                                        <li>
                                            <p>Mobile</p>
                                            <p> 546645654456</p>
                                        </li>
                                        <li>
                                            <p>Email</p>
                                            <p> usermail@mail.com</p>
                                        </li>

                                        <li>
                                            <p>Total</p>
                                            <p> BDT664</p>
                                        </li>

                                    </ul>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <p>If you have any questions, please feel free to send us a direct message. <a href="whatsapp://send?phone=1234567890&text=Hello%20from%20your%20website!">Send WhatsApp Message</a></p>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </section>
            </div>
        </div>

    </section>
    <Footer />
</div>
</template>

<script>
export default {
    middleware: "auth",
    head: {
        title: 'Order Summary',
    },
    data() {
        return {

        }
    },
    mounted() {

    },
    methods: {
        //bkash
        bkashPopup() {
            $(".pop_bkash").fadeIn();
        },
        bkashPopupClose() {
            $(".pop_bkash").fadeOut();
        },
        //nagad
        nagadPopup() {
            $(".pop_nogot").fadeIn();
        },
        nagadPopupClose() {
            $(".pop_nogot").fadeOut();
        },
        //rocket 
        rocketPopup() {
            $(".pop_roket").fadeIn();
        },
        rocketPopupClose() {
            $(".pop_roket").fadeOut();
        },
        //upday 
        upayPopup() {
            $(".pop_upay").fadeIn();
        },
        upayPopupClose() {
            $(".pop_upay").fadeOut();
        },
    }
}
</script>
