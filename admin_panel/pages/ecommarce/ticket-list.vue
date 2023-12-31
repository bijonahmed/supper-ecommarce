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

            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">All Ticket's</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false" @click="fetchtickets">Tickets Selling History</button>
                </li>

            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                    <!-- Start  -->
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control name" placeholder="Order ID..." v-model="searchQuery.orderId" @input="handleSearch">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control name" placeholder="Ticket Number" v-model="searchQuery.ticket_number" @input="handleSearch">
                                    </div>
                                </div>

                                <div class="col-md-3">
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
                                        <select class="form-select form-select-solid status" v-model="searchQuery.order_condition" @change="handleSearch">
                                            <option value="">Order Condition</option>
                                            <option value="1">NOT NULL ORDER ID</option>
                                            <option value="2">NULL ORDER ID</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-1">
                                    <div class="input-group mb-3">
                                        <button class="btn btn-primary w-100" type="button" @click="fetchData"><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="25" height="25" viewBox="0 0 24 24">
                                                <path d="M 9 2 C 5.1458514 2 2 5.1458514 2 9 C 2 12.854149 5.1458514 16 9 16 C 10.747998 16 12.345009 15.348024 13.574219 14.28125 L 14 14.707031 L 14 16 L 19.585938 21.585938 C 20.137937 22.137937 21.033938 22.137938 21.585938 21.585938 C 22.137938 21.033938 22.137938 20.137938 21.585938 19.585938 L 16 14 L 14.707031 14 L 14.28125 13.574219 C 15.348024 12.345009 16 10.747998 16 9 C 16 5.1458514 12.854149 2 9 2 z M 9 4 C 11.773268 4 14 6.2267316 14 9 C 14 11.773268 11.773268 14 9 14 C 6.2267316 14 4 11.773268 4 9 C 4 6.2267316 6.2267316 4 9 4 z"></path>
                                            </svg></button>
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
                                            <th class="text-center">Category</th>
                                            <th class="text-center">Order ID</th>
                                            <th class="text-center">Order Date</th>
                                            <th class="text-center">Customer ID</th>
                                            <th class="text-center">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="(item, index) in paginatedData" :key="item.id" :style="{ backgroundColor: item.category_id === 27 ? 'green' : '' }">
                                            <td>
                                                {{ (currentPage - 1) * perPage + index + 1 }}
                                            </td>

                                            <td>{{ item.ticket_number }}</td>
                                            <td>
                                                <center>{{ item.name }}</center>
                                            </td>
                                            <td>
                                                <center>{{ item.category_name }}</center>

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
                    <!-- END -->

                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                    <!-- start  -->
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="table-responsive">
                                    <table class="table table-hover table-lg" border="1">
                                        <thead>
                                            <tr>
                                                <th width="4%">SL #</th>
                                                <th width="69%">Ticket Name</th>
                                                <th width="8%">Total Tickets</th>
                                                <th width="8%">Total Selling</th>
                                                <th width="11%">Current Stock</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr v-for="(ticket, index) in tickets" :key="index">
                                                <td>{{ index + 1 }}</td>
                                                <td>{{ ticket.name }}</td>
                                                <td style="font-size: 15px; color:blue;">
                                                    <div align="center"><b>{{ ticket.total_tickets }}</b></div>
                                                </td>
                                                <td style="font-size: 15px; color:rgb(1, 4, 8);">
                                                    <div align="center"><b>{{ ticket.total_selling }}</b></div>
                                                </td>
                                                <td style="font-size: 15px; color:rgb(88, 1, 1);">
                                                    <div align="center"><b>{{ ticket.current_stock }}</b></div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END -->

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
            sortOrder: 'asc', // Initial sort order
            sortBy: 'id', // Initial sort column
            tickets: [],
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
                orderId: '',
                order_condition: '',
                ticket_number: '',
                name: '',
                category_id: '',
                status: 1
            },
            searchQueryPhone: '',
            currentPage: 1,
            perPage: 150, // Number of items per page
        };
    },
    async mounted() {
        await this.fetchData();
        await this.fetchCategoryData();
        await this.fetchtickets();
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

            if (this.searchQuery.orderId) {
                result = result.filter(item =>
                    item.orderId == this.searchQuery.orderId
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

            if (this.searchQuery.order_condition === '1') {
                // Show only items with non-null orderId
                result = result.filter(item => item.orderId !== null && item.orderId !== undefined);
            } else if (this.searchQuery.order_condition === '2') {
                // Show only items with null orderId
                result = result.filter(item => item.orderId === null || item.orderId === undefined);
            }
            //order_condition

            return result;
        },
        paginatedData() {
            const startIndex = (this.currentPage - 1) * this.perPage;
            return _.slice(this.filteredData, startIndex, startIndex + this.perPage);

        },

    },
    methods: {
        sortTable(column) {
            if (this.sortBy === column) {
                // Toggle between ascending and descending order if the same column is clicked
                this.sortOrder = this.sortOrder === 'asc' ? 'desc' : 'asc';
            } else {
                // Set the new column to sort and reset order to ascending
                this.sortBy = column;
                this.sortOrder = 'asc';
            }

            // Perform the sorting logic here
            this.paginatedData = this.filteredData().sort((a, b) => {
                const factor = this.sortOrder === 'asc' ? 1 : -1;
                return a[column] > b[column] ? factor : -factor;
            });
        },
        async fetchtickets() {
            // Fetch data from the Laravel API
            const response = await this.$axios.get('/product/summary-report-tickets'); // Update the endpoint accordingly
            this.tickets = response.data;
        },
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
