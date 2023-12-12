<template>
<div>
    <section class="top_nav">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-expand-lg ">
                        <div class="container-fluid">
                            <nuxt-link class="navbar-brand" to="/">
                                <div class="logo_">
                                    Lottery
                                </div>
                            </nuxt-link>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <i class="fa-solid fa-bars"></i>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                        <a class="nav-link active" aria-current="page" href="#">Need Help? Contact us
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link mobile_" href="tel:888000">Call 01910000000</a>
                                    </li>
                                    <li class="nav-item d-none">
                                        <select name="" class="" id="">
                                            <option value=""><img src="/images/flags/united-states-emoji-96.png" class="img-fulid" loading="lazy" alt="">USDT</option>
                                            <option value="">BDT</option>
                                        </select>
                                    </li>
                                    <li class="nav-item d-none">
                                        <select name="" class="" id="">
                                            <option value="">English</option>
                                            <option value="">Bengali</option>
                                        </select>
                                    </li>
                                    <li class="nav-item">
                                        <nuxt-link to="/cart" class="nav-link" @click="logout">Cart</nuxt-link>
                                    </li>


                                    <li class="nav-item">
                                        <nuxt-link to="/user/profile" class="nav-link">My Dashboard</nuxt-link>
                                    </li>



                                    <li class="nav-item" v-if="loggedIn">
                                        <a href="#" class="nav-link" @click="logout">Logout</a>
                                    </li>

                                    <li class="nav-item" v-else>
                          
                                        <nuxt-link class="nav-link" to="/login">Register/Login</nuxt-link>
                                    </li>


                                </ul>

                            </div>
                        </div>
                    </nav>
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

    },
    computed: {
        loggedIn() {
            return this.$auth.loggedIn;
        },
    }, 
    methods: {
        async logout() {
            await this.$auth.logout()
            localStorage.removeItem('jwtToken');
            this.$router.push('/');
        },

    }
}
</script>
