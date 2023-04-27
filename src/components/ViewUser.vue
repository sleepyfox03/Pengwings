<script>
import axios from 'axios';
import AddUser from './AddUser.vue';
import EditUser from './EditUser.vue';

export default{
    components:{
    AddUser,
    EditUser
},
    data()
    {
        return {
            UserData:null,
            edituser:'',
            // a:true,
            btntxt:'Close',
            btntxt2:'AddUser',
            adduser:'',
            value:null,
            form:{
                uname:'',
                email:'',
                phn_no:'',
                role:'',
                pass:'',     
                }
        }
    },


    mounted(){
                axios.get('http://localhost:8080/zoosite/myresource/userdata')
                .then(response=>(this.UserData=response.data))  
            },
    methods:{
        deleteuser(user){
            axios.post('http://localhost:8080/zoosite/myresource/deleteuserdata',user)
            return alert("Deleted")
            
        }
    }
}
</script>
<template>
<div class="row m-5">
        <br>
        <div class="col-lg-3">
        <div v-if="adduser" class=" btn1 round ">
        <button id="adduser" class="btnbg" @click='adduser=!adduser' > {{btntxt}} </button>
        </div>
        <div v-else="adduser" class=" btn1 round ">
        <button id="adduser" class="btnbg" @click='adduser=!adduser' > {{btntxt2}} </button>
        </div>
        <br/>
        <div v-if="adduser" >
            <AddUser />
        </div>
 </div>
       <div class="container col-lg-6  table-responsive">
       
       
        <table class="table border table-light table-striped table-hover" id="mytable1">
          <thead>  <tr><th>User ID</th>
                <th>Userame</th>
                <th>Email</th>
                <th>Phone No.</th>
                <th>Role</th>
                <th>Update</th>
                <th>Delete</th>
                
            </tr>
        </thead>
        <tbody>
    
        <tr v-for="a in UserData">
      
            <td>{{ a.user_id }}</td>
            <td>{{ a.uname }}</td>
            <td>{{ a.email }}</td>
            <td>{{ a.phn_no }}</td>
            <td>{{ a.role }}</td>
            <td>
            <button  class="btn1 " @click="edituser=!edituser ,value=a">Edit</button>
            
        </td><td>
        <button  class="btn1 " @click="deleteuser(a)">Delete</button>
 
            </td>
        </tr>
        

    
        </tbody>        
        </table>

        </div>
        


        <div v-if="edituser" class="col-lg-3">
            <EditUser :values="value"/>
        </div>
       </div>
     

</template>

<style>
.round {
display: flex;
justify-content: center;
align-self: right;
 
  border-radius:200px;
  border: 2px solid;

  height: 50px;

}
.btnbg{
    margin-top: -0.2rem;
    margin-left: -0.4rem;
    background-color: transparent;
    border-color: transparent;
    width: 100%;
    color: white;
}

</style>
