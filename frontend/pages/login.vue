<template>
<div>
    <Navbar />
    <!-- main body part star there  -->
    <!-- login registration part star here  -->
    <div class="container">
        <center>
            <h3 style="color:white" id="register_msg"></h3>
        </center>
        <div class="row">

            <div class="col-md-6 m-auto">
                <div class="log_regi">
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-login" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Login</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-regis" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Registration</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
                            <div class="login_section">

                                <center><span class="text-danger text-center" id="dismessage">{{ dismessage }}</span></center>
                                <form @submit.prevent="userLogin()" id="formrest_login" class="forms-sample" enctype="multipart/form-data">
                                    <h5>Login</h5>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="input-container">
                                                <input placeholder="Email" class="input-field" type="text" v-model="login.email">
                                                <label for="input-field" class="input-label">Email </label>
                                                <span class="text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
                                                <span class="input-highlight"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input-container">
                                                <input placeholder="Password" class="input-field" :type="showPassword ? 'text' : 'password'" id="password-field" type="password" v-model="login.password">
                                                <label for="input-field" class="input-label">Password </label>
                                                <span class="text-danger" v-if="errors.password">{{ errors.password[0] }}</span>
                                                <span class="input-highlight"></span>
                                                <i toggle="#password-field" class="fa-solid fa-eye toggle-password" @click="showhidePassword"></i>
                                            </div>
                                        </div>
                                        <div class="row pe-0">
                                            <div class="col-6">
                                                <div class="input-container">
                                                    <nuxt-link to="/forget-password" class="f_link">Forget Password?</nuxt-link>
                                                </div>
                                            </div>
                                            <div class="col-6 px-0">
                                                <div class="input-container text-end" bis_skin_checked="1">
                                                    <input class="btn_submit" value="Login" type="submit">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-regis" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
                            <div class="login_section">
                                <form @submit.prevent="saveData()" id="formrest" class="forms-sample">
                                    <h5>Registration</h5>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="input-container">
                                                <input placeholder=" Name " class="input-field" type="text" v-model="insertdata.name">
                                                <label for="input-field" class="input-label">Name </label>
                                                <span class="text-danger" v-if="errors.name">{{ errors.name[0] }}</span>
                                                <span class="input-highlight"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-6 d-none">
                                            <div class="input-container">
                                                <input placeholder="Last Name " class="input-field" type="text" v-model="insertdata.lname">
                                                <label for="input-field" class="input-label">Last Name </label>
                                                <span class="text-danger" v-if="errors.lname">{{ errors.lname[0] }}</span>
                                                <span class="input-highlight"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input-container">
                                                <input placeholder="Email" class="input-field" type="text" v-model="insertdata.email">
                                                <label for="input-field" class="input-label">Email </label>
                                                <span class="text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
                                                <span class="input-highlight"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input_group input-container">
                                                <label for="nationality" class="s_label">Phone</label>
                                                <input placeholder="01700000000" id="mobile_code" class="input-field" type="text" v-model="insertdata.phone_number">
                                                <span class="text-danger" v-if="errors.phone_number">{{ errors.phone_number[0] }}</span>
                                                <span class="input-highlight"></span>
                                            </div>
                                        </div>

                                        <div class="col-md-12 d-none">
                                            <div class="input-container">
                                                <input placeholder="Date Of Birth" onfocus="type='date'" class="input-field" type="text" v-model="insertdata.date_of_birth">
                                                <label for="input-field" class="input-label">Date Of Birth</label>
                                                <span class="text-danger" v-if="errors.date_of_birth">{{ errors.date_of_birth[0] }}</span>
                                                <span class="input-highlight"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-12 d-none">
                                            <div class="input_group input-container">
                                                <label for="gender" class="s_label">Gender</label>
                                                <select name="" id="gender" class="form-control input-field" v-model="insertdata.gender">
                                                    <option value="" selected disabled>Select One </option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                            <span class="text-danger" v-if="errors.gender">{{ errors.gender[0] }}</span>
                                            <span class="input-highlight"></span>
                                        </div>
                                        <div class="col-md-12 d-none">
                                            <div class="input_group input-container">
                                                <label for="nationality" class="s_label">Nationality</label>
                                                <select v-model="insertdata.nationality_id" class="form-control input-field" id="nationality">
                                                    <option value="" disabled>Select Nationality</option>
                                                    <option v-for="country in countries" :value="country.id" :key="country.id">{{ country.countryname }}</option>
                                                </select>
                                                <span class="text-danger" v-if="errors.nationality_id">{{ errors.nationality_id[0] }}</span>
                                                <span class="input-highlight"></span>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="input-container">
                                                <input placeholder="Password" class="input-field" :type="showRegPassword ? 'text' : 'password'" v-model="insertdata.password">
                                                <label for="input-field" class="input-label">Password </label>
                                                <span class="text-danger" v-if="errors.password">{{ errors.password[0] }}</span>
                                                <span class="input-highlight"></span>
                                                <i toggle="#password-field2" class="fa-solid fa-eye toggle-password" @click="showhidePasswordreg"></i>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="input-container">
                                                <input placeholder="Confirm Password" class="input-field" id="password-field2" :type="showRegConPassword ? 'text' : 'password'" v-model="insertdata.password_confirmation">
                                                <label for="input-field" class="input-label">Confirm Password </label>
                                                <span class="text-danger" v-if="errors.password_confirmation">{{ errors.password_confirmation[0] }}</span>
                                                <span class="input-highlight"></span>
                                                <i toggle="#password-field2" class="fa-solid fa-eye toggle-password" @click="showhidePasswordregConfig"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input-container">
                                                <input type="submit" class="btn_submit" value="Submit">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
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
        title: 'Register/Login',
    },
    data() {
        return {
            countries: [],
            invaliderror: '',
            insertdata: {
                name: '',
                fname: '',
                lname: '',
                email: '',
                phone_number: '',
                date_of_birth: '',
                nationality_id: '',
                gender: '',
                password: '',
                password_confirmation: '',
            },
            dismessage: '',
            showPassword: false,
            showRegPassword: false,
            showRegConPassword: false,
            login: {
                email: '',
                password: '',
            },
            notifmsg: '',
            errors: {},
        }
    },
    mounted() {
        //  this.countrys();
    },
    methods: {

        showhidePassword() {
            this.showPassword = !this.showPassword;
        },

        showhidePasswordreg() {
            this.showRegPassword = !this.showRegPassword;
        },

        showhidePasswordregConfig() {
            this.showRegConPassword = !this.showRegConPassword;
        },

        async countrys() {
            const response = await this.$axios.get('/unauthenticate/countrys');
            this.countries = response.data;
            //console.log("country" + response.data);
        },
        saveData() {
            const formData = new FormData();
            formData.append('name', this.insertdata.name);
            //formData.append('lname', this.insertdata.lname);
            formData.append('email', this.insertdata.email);
            formData.append('date_of_birth', this.insertdata.date_of_birth);
            formData.append('gender', this.insertdata.gender);
            formData.append('nationality_id', this.insertdata.nationality_id);
            formData.append('phone_number', this.insertdata.phone_number);
            formData.append('password', this.insertdata.password);
            formData.append('password_confirmation', this.insertdata.password_confirmation);
            const headers = {
                'Content-Type': 'multipart/form-data'
            };
            this.$axios.post('/auth/register',
                formData, {
                    headers
                }).then((response) => {

                if (process.client) {
                    $("#register_msg").html("Congratulations! 🎉 You've successfully registered!");
                    this.$router.push({
                        path: '/verification'
                    });
                    $("#pills-home-tab").click();
                }

            }).catch(error => {
                if (error.response.status === 422) {
                    this.errors = error.response.data.errors;
                }
            });
        },

        async userLogin() {
            try {
                const postData = {
                    email: this.login.email,
                    password: this.login.password,
                    // Add other parameters as needed
                };

                this.dismessage = "";
                const {
                    data
                } = await this.$axios.post('/auth/login', postData);
                await this.$auth.setUserToken(data.access_token);
                this.$router.push('/user/profile');
            } catch (err) {
                if (err.response && err.response.status === 422) {
                    this.errors = err.response.data.errors;
                    this.errorHandler(err);
                } else if (err.response && err.response.status === 401) {
                    console.error(err.response.data.errors.account[0]);

                    console.log("------" + err.response.data.errors.account[0]);
                    this.dismessage = err.response.data.errors.account[0];
                } else {
                    console.error(err);
                }
            }

        },

        errorHandler(error) {
            // Check for specific error messages
            if (error.response && error.response.data.errors && error.response.data.errors.account) {
                // Display the specific error message to the user
                console.log("error : " + error.response.data.errors.account);
                this.invaliderror = error.response.data.errors.account[0];
                //this.$toast.error(error.response.data.errors.account[0]);
            } else {
                console.log("An error occurred. Please try again later.");

            }
        },

    }
}
</script>
