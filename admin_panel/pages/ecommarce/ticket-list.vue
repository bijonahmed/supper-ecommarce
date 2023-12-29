<template>
<div>
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item">
                                <router-link to="/hrm/dashboard"><a href="javascript:;"><i class="bx bx-home-alt"></i></a></router-link>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Ticket History List (Total Ticket: {{ totalTicket }})</li>
                        </ol>
                    </nav>
                </div>

            </div>
            <!--end breadcrumb-->
            <!-- <span class="loader"></span> -->
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control name" placeholder="Ticket Number" v-model="searchQuery.ticket_number" @input="handleSearch">
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control name" placeholder="Product Name" v-model="searchQuery.name" @input="handleSearch">
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="input-group mb-3">
                                <select class="form-select form-select-solid status" v-model="searchQuery.status" @change="handleSearch">
                                    <option value="">All Status</option>
                                    <option value="1">Active</option>
                                    <option value="0">Inactive</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="input-group mb-3">
                                <button class="btn btn-primary w-100" type="button" @click="fetchData">Search</button>
                            </div>
                        </div>

                    </div>
                    <div style="display: none;" class="customerSpinner">
                        <div class="d-flex justify-content-center">
                            <div class="spinner-border" role="status">
                                <span class="visually-hidden">Loading...</span>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-sm">
                            <thead>
                                <tr>
                                    <th>SL#</th>
                                    <th>Ticket Number</th>
                                    <th class="text-center">Product Name</th>
                                    <th class="text-center">Order ID</th>
                                    <th class="text-center">Order Date</th>
                                    <th class="text-center">Customer ID</th>
                                    <th class="text-center">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(item, index) in paginatedData" :key="item.id">
                                    <td>
                                        {{ (currentPage - 1) * perPage + index + 1 }}
                                    </td>
                                    <td>{{ item.ticket_number }}</td>

                                    <td>
                                        <center>{{ item.name }}</center>
                                    </td>
                                    <td>
                                        <center>{{ item.orderId }}</center>
                                    </td>
                                    <td>
                                        <center>{{ item.orderDate }}</center>
                                    </td>
                                    <td>
                                        <center>{{ item.customer_id }}</center>
                                    </td>
                                    <td class="text-center">
                                        <span v-if="(item.status == 1)"> Active </span>
                                        <span v-else> Inactive </span>
                                    </td>
                                    
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="pagenation">
                        <div style="text-align: right;">
                            <button @click="previousPage" :disabled="currentPage === 1" class="btn btn-primary btn-sm">
                                <center><i class="lni lni-angle-double-left"></i></center>
                            </button>
                            <span>Page {{ currentPage }} of {{ totalPages }}</span>
                            <button @click="nextPage" :disabled="currentPage === totalPages" class="btn btn-primary btn-sm">
                                <center><i class="lni lni-angle-double-right"></i></center>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--end page wrapper -->
</div>
</template>

<script>
import _ from 'lodash';
export default {
    head: {
        title: 'Ticket List',
    },
    data() {
        return {
            insertdata: {
                id: '',
                name: '',
                status: 1,
            },
            totalTicket: 0,
            notifmsg: '',
            errors: {},
            data: [],
            categries: [],
            searchQuery: {
                ticket_number: '',
                name: '',
                category_id: '',
                status: 1
            },
            searchQueryPhone: '',
            currentPage: 1,
            perPage: 100, // Number of items per page
        };
    },
    async mounted() {
        await this.fetchData();
        await this.fetchCategoryData();
    },
    computed: {

        totalPages() {
            return Math.ceil(this.filteredData.length / this.perPage);
        },
        filteredData() {
            let result = this.data;
            if (this.searchQuery.name) {
                result = result.filter(item =>
                    item.name.toLowerCase().includes(this.searchQuery.name.toLowerCase())
                );
            }

            if (this.searchQuery.category_id) {
                result = result.filter(item =>
                    item.category_id == this.searchQuery.category_id
                );
            }

            if (this.searchQuery.ticket_number) {
                result = result.filter(item =>
                    item.ticket_number == this.searchQuery.ticket_number
                );
            }

            if (this.searchQuery.status) {
                result = result.filter(item =>
                    item.status == this.searchQuery.status
                );
            }
            return result;
        },
        paginatedData() {
            const startIndex = (this.currentPage - 1) * this.perPage;
            return _.slice(this.filteredData, startIndex, startIndex + this.perPage);

        },

    },
    methods: {

        preview(id) {
            this.$router.push({
                path: '/ecommarce/product-preview',
                query: {
                    parameter: id
                }
            })
        },

        async fetchData() {
            $(".customerSpinner").show();
            try {
                const response = await this.$axios.get(`/product/getTicketList`);
                //console.log(response.data.length);
                this.totalTicket = response.data.length;
                this.data = response.data;
                $(".customerSpinner").hide();
            } catch (error) {
                console.error(error);
            }
        },

        async fetchCategoryData() {
            $(".customerSpinner").show();
            try {
                const response = await this.$axios.get(`/unauthenticate/filterCategorys`);
                this.categries = response.data;
                $(".customerSpinner").hide();
            } catch (error) {
                console.error(error);
            }
        },

        deleteProduct(id) {
            //alert(id);

            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    this.$axios.get(`/product/removeProducts/${id}`).then(response => {
                        this.fetchData();
                        this.pos4_error_noti();
                    });
                    Swal.fire(
                        'Deleted!',
                        'Your product has been deleted.',
                        'success'
                    )
                }
            })

        },

        handleSearch() {
            this.currentPage = 1;
        },
        previousPage() {
            this.currentPage--;
        },
        nextPage() {
            this.currentPage++;
        },
        edit(id) {
            this.$router.push({
                path: '/ecommarce/product-edit',
                query: {
                    parameter: id
                }
            })
        },

        pos4_error_noti() {
            Lobibox.notify('error', {
                pauseDelayOnHover: true,
                icon: 'bx bx-x-circle',
                size: 'mini',
                continueDelayOnInactiveTab: false,
                position: 'bottom left',
                msg: 'Successfully delete product.'
            });
        }

    },
};
</script>

<style scoped>
.pagenation {
    margin-top: 10px;
}

.pagination {
    /*! display: flex; */
    padding-left: 0;
    list-style: none
}
</style>
