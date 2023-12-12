<template>
<div>
    <!-- desktop view profile section start here  -->
    <Navbar />
    <div class="container desktop_view">
        <div class="row">
            <div class="col-xl-3">
                <LeftsidebarDesktop />
            </div>

            <div class="col-xl-9">
                <div class="profile_right">
                    <h1>Personal details</h1>
                    <span v-if="loading">
                        <Loader />
                    </span>

                    <form @submit.prevent="updateprofile()" id="userSubmitFrm" class="forms-sample" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="input-container">
                                    <input type="hidden" v-model="insertdata.id">
                                    <input placeholder="First Name " class="input-field" type="text" v-model="insertdata.fname">
                                    <label for="input-field" class="input-label">First Name </label>
                                    <span class="text-danger" v-if="errors.fname">{{ errors.fname[0] }}</span>
                                    <span class="input-highlight"></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-container">
                                    <input placeholder="Last Name " class="input-field" type="text" v-model="insertdata.lname">
                                    <label for="input-field" class="input-label">Last Name </label>
                                    <span class="text-danger" v-if="errors.lname">{{ errors.lname[0] }}</span>
                                    <span class="input-highlight"></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-container">
                                    <input placeholder="Email" class="input-field" type="text" v-model="insertdata.email">
                                    <label for="input-field" class="input-label">Email </label>
                                    <span class="text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
                                    <span class="input-highlight"></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-container">
                                    <input placeholder="Date Of Birth" onfocus="type='date'" class="input-field" type="text" v-model="insertdata.date_of_birth">
                                    <label for="input-field" class="input-label">Date Of Birth</label>
                                    <span class="input-highlight"></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input_group input-container">
                                    <label for="nationality" class="s_label">Phone</label>
                                    <input placeholder="1700000000" id="mobile_code" class="input-field" type="text" v-model="insertdata.phone_number">
                                    <span class="text-danger" v-if="errors.phone_number">{{ errors.phone_number[0] }}</span>
                                    <span class="input-highlight"></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input_group input-container">
                                    <label for="gender" class="s_label">Gender</label>
                                    <select name="" id="gender" class="form-control input-field" v-model="insertdata.gender">
                                        <option value="" selected disabled>Select One </option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input_group input-container">
                                    <label for="nationality" class="s_label">Nationality</label>
                                    <select v-model="insertdata.nationality_id" class="form-control input-field" id="nationality">
                                        <option value="" disabled>Select Nationality</option>
                                        <option v-for="country in countries" :value="country.id" :key="country.id">{{ country.countryname }}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input_group input-container">
                                    <label for="residence" class="s_label">Country Of Residence</label>
                                    <select v-model="insertdata.country_residence" class="form-control input-field" id="country_residence">
                                        <option value="" disabled>Select Nationality</option>
                                        <option v-for="country in countries" :value="country.id" :key="country.id">{{ country.countryname }}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-container">
                                    <input type="submit" class="btn_submit" value="Update">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--desktop view profile section end here  -->
    <LeftsidebarMobile />
    <Footer />
</div>
</template>

<script>
export default {
    middleware: "auth",
    head: {
        title: 'Profile',
    },
    data() {
        return {
            loading: false,
            countries: [],
            insertdata: {
                id: '',
                fname: '',
                lname: '',
                name: '',
                nationality_id: '',
                date_of_birth: '',
                email: '',
                phone_number: '',
                country_residence: '',
                gender: '',

            },
            errors: {},
        }
    },
    mounted() {
        this.countrys();
        this.defaultLoadingData();
    },
    methods: {
        async updateprofile() {
            this.loading = true;
            const formData = new FormData();
            // formData.append('file', this.file);
            formData.append('fname', this.insertdata.fname);
            formData.append('lname', this.insertdata.lname);
            formData.append('email', this.insertdata.email);
            formData.append('phone_number', this.insertdata.phone_number);
            formData.append('nationality_id', this.insertdata.nationality_id);
            formData.append('date_of_birth', this.insertdata.date_of_birth);
            formData.append('country_residence', this.insertdata.country_residence);
            formData.append('gender', this.insertdata.gender);
            const headers = {
                'Content-Type': 'multipart/form-data'
            };
            await this.$axios.post('/auth/updateprofile',
                formData, {
                    headers
                }).then((res) => {

                this.$router.push('/user/profile');
            }).catch(error => {
                if (error.response.status === 422) {
                    this.errors = error.response.data.errors;
                }
            }).finally(() => {
                this.loading = false; // Hide loader after response
            });
        },
        async countrys() {
            const response = await this.$axios.get('/unauthenticate/countrys');
            this.countries = response.data;
        },

        defaultLoadingData() {
            this.$axios.get('/auth/showProfileData').then(response => {
                console.log(response.data.data.fname)
                this.insertdata.id = response.data.data.id;
                this.insertdata.fname = response.data.data.fname;
                this.insertdata.lname = response.data.data.lname;
                this.insertdata.date_of_birth = response.data.data.date_of_birth;
                this.insertdata.name = response.data.data.name;
                this.insertdata.email = response.data.data.email;
                this.insertdata.phone_number = response.data.data.phone_number;
                this.insertdata.nationality_id = response.data.data.nationality_id;
                this.insertdata.country_residence = response.data.data.country_residence;
                this.insertdata.gender = response.data.data.gender;
                this.insertdata.address = response.data.data.address;
                this.insertdata.website = response.data.data.website;
                this.insertdata.github = response.data.data.github;
                this.insertdata.twitter = response.data.data.twitter;
                this.insertdata.instagram = response.data.data.instagram;
                this.insertdata.facebook = response.data.data.facebook;
                // $('#dataimages').append('<img class="rounded-circle p-1 bg-primary" width="110" src="' + response.data.dataImg + '" />');
            });
        },

        addtoCart() {
            this.$router.push('/cart');
        },

    }
}
</script>
