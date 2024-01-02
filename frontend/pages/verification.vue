<template>
<div>
    <Navbar />

    <!-- otp section start here  -->
    <section class="otp_sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 my-3 mx-auto d-flex" bis_skin_checked="1">
                    <div style="background-color: #373737;border-radius: 20px;" class="container my-auto py-5" bis_skin_checked="1">
                        <div class="row g-0" bis_skin_checked="1">
                            <div class="col-11 col-sm-10 col-lg-9 col-xl-8 mx-auto" bis_skin_checked="1">
                                <h3 :class="{ 'text-danger': status === 0 }" class="fw-600 mb-4 text-center" v-if="status === 0">{{ verifymsg }}</h3>
                                <h3 class="fw-600 mb-4">Validate OTP</h3>
                                <p class="text- mb-4 text-light">Please enter the OTP (one time password) to verify your
                                    account. A Code has been sent to <span class="text-light">your number.</span></p>
                                <form @submit.prevent="saveData()" id="otp-screen" class="forms-sample">
                                    <div class="row g-3" bis_skin_checked="1">
                                        <div class="col" bis_skin_checked="1">
                                            <input type="text" ref="input1" @input="handleInput(1)" class="form-control text-center text-6 py-2" v-model="insertdata.step1" maxlength="1" autocomplete="off">
                                            <span style="font-size:10px ;" class="text-danger" v-if="errors.step1">{{ errors.step1[0] }}</span>
                                        </div>
                                        <div class="col" bis_skin_checked="1">
                                            <input type="text" ref="input2" @input="handleInput(2)" class="form-control text-center text-6 py-2" v-model="insertdata.step2" maxlength="1" autocomplete="off">
                                            <span style="font-size:10px ;" class="text-danger" v-if="errors.step2">{{ errors.step2[0] }}</span>
                                        </div>
                                        <div class="col" bis_skin_checked="1">
                                            <input type="text" ref="input3" @input="handleInput(3)" class="form-control text-center text-6 py-2" v-model="insertdata.step3" maxlength="1" autocomplete="off">
                                            <span style="font-size:10px ;" class="text-danger" v-if="errors.step3">{{ errors.step3[0] }}</span>
                                        </div>
                                        <div class="col" bis_skin_checked="1">
                                            <input type="text" ref="input4" @input="handleInput(4)" class="form-control text-center text-6 py-2" maxlength="1" v-model="insertdata.step4" autocomplete="off">
                                            <span style="font-size:10px ;" class="text-danger" v-if="errors.step4">{{ errors.step4[0] }}</span>
                                        </div>
                                    </div>
                                    <div class="d-grid my-4" bis_skin_checked="1">
                                        <button class="btn" style="background-color: #b5f927; font-size:10px ;" type="submit">Verify</button>
                                    </div>
                                </form>
                                <!-- <p class="text-center text-light mb-0">I didn't get your code? <a style="color: #b5f927;" href="#">Resend
                                        code</a></p> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- otp section end here  -->

    <Footer />
    <MobileMenu/>
</div>
</template>

<script>
export default {
    head: {
        title: 'Validate OTP',
    },
    data() {
        return {
            countries: [],
            invaliderror: '',
            insertdata: {
                step1: '',
                step2: '',
                step3: '',
                step4: '',

            },
            verifymsg: '',
            status: '',
            errors: {},
        }
    },
    computed: {
        totalDigits() {
            return 4; // Set the total number of digits
        },
    },
    mounted() {
        //  this.countrys();
    },
    methods: {
        handleInput(currentDigit) {
            if (currentDigit < this.totalDigits) {
                const nextRef = `input${currentDigit + 1}`;
                this.$refs[nextRef].focus();
            }
        },

        saveData() {
            const formData = new FormData();
            formData.append('step1', this.insertdata.step1);
            formData.append('step2', this.insertdata.step2);
            formData.append('step3', this.insertdata.step3);
            formData.append('step4', this.insertdata.step4);
            const headers = {
                'Content-Type': 'multipart/form-data'
            };
            this.$axios.post('/unauthenticate/verificationCode',
                formData, {
                    headers
                }).then((response) => {

                if (response.data.otp_sts == 1) {

                    this.verifymsg = response.data.message;
                    this.status = response.data.otp_sts;
                    const Toast = Swal.mixin({
                        toast: true,
                        position: "top-end",
                        showConfirmButton: false,
                        timer: 3000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.onmouseenter = Swal.stopTimer;
                            toast.onmouseleave = Swal.resumeTimer;
                        }
                    });
                    Toast.fire({
                        icon: "success",
                        title: response.data.message,
                    });
                    if (process.client) {
                        this.$router.push({
                            path: '/login'
                        });
                        $("#pills-home-tab").click();
                    }
                } else {
                    this.verifymsg = response.data.message;
                    this.status = response.data.otp_sts;
                }
                console.log(response.data.message);

            }).catch(error => {
                if (error.response.status === 422) {
                    console.log("---" + error.response.data.errors);
                    this.errors = error.response.data.errors;
                }
            });
        },

    }
}
</script>
