<script>
import axios from 'axios';
export default
{
data(){
   return{
    form:{ 
    uname:'',
    email:'',
    phn_no:'',
    role:'',
    pass:'',   
    }
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
    <div class="  rcorners2 p-4">
        <div><h3 style="color: #ff6726">Add User</h3></div>
    <div class="">
        <div class="form-group">
        <label>Username</label>
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

        <div class="form-group mt-2">
           
        <button class="btn1 form-control" @click="adduser()">Add</button>
        </div>

    </div>
    </div>
    
</template>
<style>
.btn1{

color: whitesmoke;
background-color: #212627;
border-radius: 10px;
border-color: #ff6726;
}
.btn1:hover{
background-color: #ff6726;
color: whitesmoke;
transition: 0.3s;
}
.rcorners2 {
  
  border-radius:25px;
  border: 2px solid;
  padding: 20px;

}

</style>