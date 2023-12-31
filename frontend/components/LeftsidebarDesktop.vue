<template>
<div>

    <div class="profile_image">
        <!-- <input type="file" class="file-upload" id="profile_img" name="profile"> -->
        <label for="profile_img">
            <img src="/images/blank_profile.png" class="img-fulid profile_pic" width="100%" loading="lazy" alt="">
        </label>
        <h1>{{ insertdata.name }}</h1>
        <p>{{ insertdata.email }}</p>
    </div>
    <div class="profile_links">
        <ul>
            <li>
                <nuxt-link to="/user/profile"><span><strong class="fa-solid fa-user"></strong>Personal
                        Details</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
            </li>
            <li>
                <nuxt-link to="/user/orderlist"><span><strong class="fa-solid fa-heart"></strong>Order List</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
            </li>
            <li>
                <nuxt-link to="/user/wishlist"><span><strong class="fa-solid fa-heart"></strong>Wishlist</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
            </li>
            <li>
                <nuxt-link to="/user/wallet"><span><strong class="fa-solid fa-dollar-sign"></strong>Wallet</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
            </li>
            <li>
                <nuxt-link to="/user/offer"><span><strong class="fa-solid fa-gift"></strong>Offer</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
            </li>
            <li>
                <nuxt-link to="/user/ticket"><span><strong class="fa-solid fa-ticket"></strong>Active Ticket</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
            </li>
            <li  class="d-none">
                <nuxt-link to="/user/payment"><span><strong class="fa-regular fa-credit-card"></strong>Payment Option </span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
            </li>
            <li >
                <nuxt-link to="/user/settings"><span><strong class="fa-solid fa-gear"></strong>Settings</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
            </li>
            <li class="d-none">
                <nuxt-link to="/user/notification"><span><strong class="fa-solid fa-bell"></strong>Notifications</span> <i class="fa-solid fa-chevron-right"></i></nuxt-link>
            </li>
            <li>
                <a href="#" @click="logout"><span><strong class="fa-solid fa-right-from-bracket"></strong>Logout</span></a>
            </li>
        </ul>
    </div>

</div>
</template>

<script>
export default {
    data() {
        return {
            insertdata: {
                name: '',
                email: '',
                phone_number: '',
                address: '',
                website: '',
                github: '',
                twitter: '',
                instagram: '',
                facebook: '',
                image: ''
            },
        }

    },
    mounted() {

        this.defaultLoadingData();
    },
    methods: {

        async logout() {
            await this.$auth.logout()
            localStorage.removeItem('jwtToken');
            this.$router.push('/');
        },

        defaultLoadingData() {
            this.$axios.get('/auth/showProfileData').then(response => {
                console.log(response.data.data.name)
                this.insertdata.name = response.data.data.name;
                this.insertdata.email = response.data.data.email;
            });
        },

    }
}
</script>
