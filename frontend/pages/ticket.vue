<template>
<div>
    <Navbar />
    <!-- profile section start here  -->
    <div class="container">
        <div class="row mobile_view">
            <div class="col-md-12">
                <div class="pay_m_title">
                    <a href="profile.html" class="btn_back" type="button"> <i class="fa-solid fa-arrow-left-long"></i>
                    </a>
                    <h6>Active ticket </h6>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 desktop_view">
                <div class="profile_image">
                    <input type="file" class="file-upload" id="profile_img" name="profile">
                    <label for="profile_img">
                        <img src="images/blank_profile.png" class="img-fulid profile_pic" width="100%" loading="lazy" alt="">
                    </label>
                    <h1>Pronay Kumar Bormon</h1>
                    <p>pronaykumar888@gmail.com</p>
                </div>
                <div class="profile_links">
                    <ul>
                        <li>
                            <a href="profile.html"><span><strong class="fa-solid fa-user"></strong>Personal
                                    Details</span> <i class="fa-solid fa-chevron-right"></i></a>
                        </li>
                        <li>
                            <a href="wishlist.html"><span><strong class="fa-solid fa-heart"></strong>wishlist</span> <i class="fa-solid fa-chevron-right"></i></a>
                        </li>
                        <li>
                            <a href="wallet.html"><span><strong class="fa-solid fa-dollar-sign"></strong>Wallet</span>
                                <i class="fa-solid fa-chevron-right"></i></a>
                        </li>
                        <li>
                            <a href="offer.html"><span><strong class="fa-solid fa-gift"></strong>Offer</span> <i class="fa-solid fa-chevron-right"></i></a>
                        </li>
                        <li>
                            <a href="ticket.html"><span><strong class="fa-solid fa-ticket"></strong>Active Ticket</span>
                                <i class="fa-solid fa-chevron-right"></i></a>
                        </li>
                        <li>
                            <a href="Payment.html"><span><strong class="fa-regular fa-credit-card"></strong>Payment
                                    Option </span> <i class="fa-solid fa-chevron-right"></i></a>
                        </li>
                        <li>
                            <a href="settings.html"><span><strong class="fa-solid fa-gear"></strong>Settings</span> <i class="fa-solid fa-chevron-right"></i></a>
                        </li>
                        <li>
                            <a href="Notification.html"><span><strong class="fa-solid fa-bell"></strong>Notifications
                                    Performance</span> <i class="fa-solid fa-chevron-right"></i></a>
                        </li>
                        <li>
                            <a href="Logout.html"><span><strong class="fa-solid fa-right-from-bracket"></strong>Logout</span> <i class="fa-solid fa-chevron-right"></i></a>
                        </li>
                    </ul>
                </div>
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
                                                    <img src="images/cash2.png" class="img-fulid" style="width: 100%;" alt="">
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
                                                    <img src="images/cash2.png" class="img-fulid" style="width: 100%;" alt="">
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
    <!-- profile section end here  -->
<Footer/>
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

    }
}
</script>
