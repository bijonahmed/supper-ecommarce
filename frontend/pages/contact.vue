<template>
<div>
    <Navbar />
    <section class="contact_section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="contact_left">
                        <h1>Contact</h1>
                        <p>Please fill in the form below and a dedicated member of our team will be in touch within 24 hrs</p>
                        <form action="">
                            <div class="form_group">
                                <input type="text" style="color: #fff;" class="form-control" name="name" placeholder="Name">
                            </div>
                            <div class="form_group">
                                <input type="text" style="color: #fff;" name="email" placeholder="Email " class="form-control">
                            </div>
                            <div class="form_group">
                                <select name="issus" style="color: #fff;" id="" class="form-control">
                                    <option value="">General Enquires</option>
                                    <option value="">Technical issue</option>
                                    <option value="">Payment issue</option>
                                </select>
                            </div>
                            <div class="form_group">
                                <textarea name="message" style="color: #fff;" placeholder="Message" cols="30" rows="10" class="form-control"></textarea>
                            </div>
                            <input type="submit" class="btn_submit" value="Send Message">
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="contact_right">
                        <div class="map_location">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d263.64370212294034!2d90.40347026273623!3d23.77973135923232!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1700377247056!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <div class="address">
                            <h1>Lottery Headquarters</h1>
                            <p>GP ga-129, Mohakhali, Dhaka</p>
                            <div class="m_mail">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="_mobile">
                                            <p>Call us</p>
                                            <strong>+00 88000</strong>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="_mobile">
                                            <p>Email </p>
                                            <strong>support@lottery.com</strong>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <Footer />
    <MobileMenu/>
</div>
</template>

<script>
export default {
    head: {
        title: 'Contact',
    },
    data() {
        return {

        }
    },
    mounted() {

    },
    methods: {

    }
}
</script>
