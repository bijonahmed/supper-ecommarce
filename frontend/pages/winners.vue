<template>
<div>
    <Navbar />
    <!-- winner section start here  -->
    <section class="winners">
        <div class="container">
            <div class="row">
                <div class="col-md-12 m-auto">
                    <div class="win_tab">
                        <div class="tab_win_btn">
                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="pills-Winners-tab" data-bs-toggle="pill" data-bs-target="#pills-Winners" type="button" role="tab" aria-controls="pills-Winners" aria-selected="true">Winners</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-upcoming-tab" data-bs-toggle="pill" data-bs-target="#pills-upcoming" type="button" role="tab" aria-controls="pills-upcoming" aria-selected="false">Upcoming Draws</button>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-Winners" role="tabpanel" aria-labelledby="pills-Winners-tab" tabindex="0">
                                <div class="winner_list">

                                    <p class="text-center">All Of our Winner will appear here.</p>
                                    <!-- <ul>
                                        <li>
                                            <div class="win_box_list">
                                                <div class="win_img">
                                                    <img src="images/iphone_gold.png" class="img-fluid" loading="lazy" alt="">
                                                </div>
                                                <h1>Congratulations</h1>
                                                <p>Jhone Due <span>On winning</span></p>
                                                <h6>Win 10,000 Cash </h6>
                                                <p>Ticket On : <strong>CA-746564456</strong></p>
                                                <span>Draw on: 25 Jan 2024</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="win_box_list">
                                                <div class="win_img">
                                                    <img src="images/Modesh_Men_069.jpg" class="img-fluid" loading="lazy" alt="">
                                                </div>
                                                <h1>Congratulations</h1>
                                                <p>Jhone Due <span>On winning</span></p>
                                                <h6>Win 10,000 Cash </h6>
                                                <p>Ticket On : <strong>CA-746564456</strong></p>
                                                <span>Draw on: 25 Jan 2024</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="win_box_list">
                                                <div class="win_img">
                                                    <img src="images/iphone_gold.png" class="img-fluid" loading="lazy" alt="">
                                                </div>
                                                <h1>Congratulations</h1>
                                                <p>Jhone Due <span>On winning</span></p>
                                                <h6>Win 10,000 Cash </h6>
                                                <p>Ticket On : <strong>CA-746564456</strong></p>
                                                <span>Draw on: 25 Jan 2024</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="win_box_list">
                                                <div class="win_img">
                                                    <img src="images/Modesh_Men_069.jpg" class="img-fluid" loading="lazy" alt="">
                                                </div>
                                                <h1>Congratulations</h1>
                                                <p>Jhone Due <span>On winning</span></p>
                                                <h6>Win 10,000 Cash </h6>
                                                <p>Ticket On : <strong>CA-746564456</strong></p>
                                                <span>Draw on: 25 Jan 2024</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="win_box_list">
                                                <div class="win_img">
                                                    <img src="images/Modesh_Men_069.jpg" class="img-fluid" loading="lazy" alt="">
                                                </div>
                                                <h1>Congratulations</h1>
                                                <p>Jhone Due <span>On winning</span></p>
                                                <h6>Win 10,000 Cash </h6>
                                                <p>Ticket On : <strong>CA-746564456</strong></p>
                                                <span>Draw on: 25 Jan 2024</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="win_box_list">
                                                <div class="win_img">
                                                    <img src="images/iphone_gold.png" class="img-fluid" loading="lazy" alt="">
                                                </div>
                                                <h1>Congratulations</h1>
                                                <p>Jhone Due <span>On winning</span></p>
                                                <h6>Win 10,000 Cash </h6>
                                                <p>Ticket On : <strong>CA-746564456</strong></p>
                                                <span>Draw on: 25 Jan 2024</span>
                                            </div>
                                        </li>
                                    </ul> -->
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pills-upcoming" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
                                <div class="upcoming_draw">

                                    <ul>
                                        <li v-for="(item, index) in prouducts" :key="index">
                                            <nuxt-link :to="`/product-details/${item.slug}`" style="text-decoration: none;">
                                                <div class="win_box_list">
                                                    <div class="win_img">
                                                        <img :src="item.thumnail" class="img-fluid" loading="lazy" alt="">
                                                    </div>
                                                    <h1>Prize: {{ item.name }}</h1>
                                                    <p>Draw Date will be announced.</p>
                                                </div>
                                            </nuxt-link>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <Footer />
    <MobileMenu />
</div>
</template>

<script>
export default {
    head: {
        title: 'Winner',
    },
    data() {
        return {
            category_id: '',
            loading: false,
            prouducts: [],
            invaliderror: '',
            notifmsg: '',
            errors: {},
        }
    },
    mounted() {
        this.onlyloadingTicket();
    },
    methods: {
        async onlyloadingTicket() {
            const response = await this.$axios.get('/unauthenticate/getTickets');
            this.prouducts = response.data.tickets;
            this.category_id = response.data.category_id;
            //console.log("tickets: " +  response.data);
        },
    }
}
</script>
