<script>
import axios from 'axios';
export default
{
data(){
   return{
    // ZooData:null,
    form:{ 
    uname:'',
    email:'',
    phn_no:'',
    role:'',
    pass:'',   
    }
}
},
props: {
    values: Object
  },
methods:{
edituser(){
  
        axios
        .post('http://localhost:8080/zoosite/myresource/edituserdata',this.values)
    return alert("Success!")    
    }
    

},
mounted()
{
    // axios.get('http://localhost:8080/zoosite/myresource/zoodata')
    //             .then(response=>(this.ZooData=response.data))  
}
}
</script>
<template>
<div class="  rcorners2 p-4">
        <div><h3 style="color: #ff6726">Edit User</h3></div>
    <div class="">
        <div class="form-group">
        <label>Name</label>
        <input v-model="values.uname" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Email</label>
        <input v-model="values.email" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Phone No.</label>
        <input v-model="values.phn_no" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Role</label>
        <input v-model="values.role" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Password</label>
        <input v-model="values.pass" class="form-control" type="text">
        </div>

        <div class="form-group mt-2">
           
        <button class="btn1 form-control" @click="edituser()">Update</button>
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