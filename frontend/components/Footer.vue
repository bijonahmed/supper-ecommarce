<template>
<div>
    <footer>
        <div class="container">
            <div class="footer">
                <div class="row">
                    <div class="col-md-6">
                        <div class="footer_links">
                            <div class="d-flex justify-content-around">
                                <div>
                                    <h6>Quick Links</h6>
                                    <ul>
                                        <li>
                                            <nuxt-link to="/about">About</nuxt-link>
                                        </li>
                                        <li>
                                            <nuxt-link to="/user/profile">My Account</nuxt-link>
                                        </li>
                                        <li>
                                            <nuxt-link to="/user/ticket">Active Ticket</nuxt-link>
                                        </li>
                                    </ul>
                                </div>
                                <div>
                                    <h6>Customer Service</h6>
                                    <ul>
                                        <li>
                                            <nuxt-link to="/contact">Contact Us</nuxt-link>
                                        </li>
                                        <!-- <li>
                                            <nuxt-link to="/faq">FAQ</nuxt-link>
                                        </li> -->
                                        <li>
                                            <a href="#">How it is work</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="social">
                            <a href="https://www.facebook.com/winup360" target="_blank">
                                <i class="fa-brands fa-facebook-f"></i>
                            </a>
                            <!-- <a href="#" target="_blank">
                                <i class="fa-brands fa-x-twitter"></i>
                            </a>
                            <a href="#" target="_blank">
                                <i class="fa-brands fa-linkedin-in"></i>
                            </a>
                            <a href="#" target="_blank">
                                <i class="fa-brands fa-instagram"></i>
                            </a>
                            <a href="#" target="_blank">
                                <i class="fa-brands fa-whatsapp"></i>
                            </a>
                            <a href="#" target="_blank">
                                <i class="fa-brands fa-tiktok"></i>
                            </a> -->
                        </div>
                        <div class="app_link">
                            <p>Download the LOTTERY app for the ultimate shopping experience!</p>
                            <div class="d-flex justify-content-center">
                                <a href="https://paly.google.com"><img src="/images/Play.png" class="img-fulid" loading="lazy" alt=""></a>
                                <a href="https://app.store.com"><img src="/images/Apple.png" class="img-fulid" loading="lazy" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="copyright_section">
                <div class="row">
                    <div class="col-md-6">
                        <div class="copyright_text">
                            <p>© Copyright 2024 <strong style="color: #aded28;">winup360</strong>. All Rights Reserved.</p>
                            <ul>
                                <li>
                                    <nuxt-link to="/agreement" href="javascript:void();">User Agreement</nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/privacy-policy" href="javascript:void();">Privacy Policy</nuxt-link>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="we_accept">
                            <p>We Accept: </p>
                            <img src="/images/Bkash.png" class="img-fulid" loading="lazy" alt="">
                            <img src="/images/Roket.png" class="img-fulid" loading="lazy" alt="">
                            <img src="/images/nogot.png" class="img-fulid" loading="lazy" alt="">
                            <img src="/images/Upay.png" class="img-fulid" loading="lazy" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
 
</div>
</template>
