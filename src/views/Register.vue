<script>
import axios from 'axios';
import RouterLink from '../router';
import Terms from '../components/Terms.vue';
export default
{
    components:{
        Terms:Terms

    },
data(){
   return{
    form:{ 
    uname:'',
    email:'',
    phn_no:'',
    role:'',
    pass:'',   
    },
    confirm_pass:'',
}
},
methods:{
adduser(){    
        axios
        .post('http://localhost:8080/zoosite/myresource/adduserdata',this.form)
        }
}
}
</script>
<template>
    <div class="login mt-5">
        <img src="../components/icons/peng.gif" class="peng">
      </div >
      <div class="login">
          <h5>Sign Up to Peng-wing's</h5>
    </div>
<div class="login ">
<div class=" col-lg-2 bg-light rcorners2  p-4">
    <div><h3 class="" style="color: #ff6726">Register</h3></div>
    <div class="">
        <div class="form-group">
        <label>Name</label>
        <input v-model="form.uname" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Email</label>
        <input v-model="form.email" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Phone No.</label>
        <input v-model="form.phn_no" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Role</label>
        <input v-model="form.role" class="form-control" type="text">
        </div>


        <div class="form-group">
        <label>Password</label>
        <input v-model="form.pass" class="form-control" type="text">
        </div>

        <div  class="form-group">
        <label>Re-enterPassword</label>
        <input v-model="confirm_pass" class="form-control" type="text">
        </div>
        <div v-if="form.pass!=confirm_pass" style="color: red;">Passwords do not match
        
        </div>
        <div v-else="">
            <input type="checkbox" >
            <label class="m-2">I have read 
            
            <!-- Button trigger modal -->
            <button type="button" class="terms blue-hyperlink" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Terms and Conditions
            </button>
                    
            <!-- Modal -->
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Terms and Conditions</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <Terms></Terms>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn1 " data-bs-dismiss="modal">Close</button>
                </div>
                </div>
            </div>
            </div>
            </label>
        </div>
        
        <div class="form-group text-center mt-2">
           
           <button class="btn1 form-control mt-5" @click="adduser()">Sign Up</button>
        </div>


    </div>
</div>

</div>

<div class="login">
<div class="col-lg-2 mt-2 rcorners2 cen">Already have an account? <RouterLink to="/login" class="blue-hyperlink" >Sign In</RouterLink></div>
</div>
</template>
<style>
.terms{
    background-color: transparent;
    border-color: transparent;
    color: #ff6726;
}
</style>