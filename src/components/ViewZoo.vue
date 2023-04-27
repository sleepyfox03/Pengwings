<script>
import axios from 'axios';
import AddZoo from './AddZoo.vue';
import EditZoo from './EditZoo.vue';

export default{
    components:{
    AddZoo,
    EditZoo
},
    data()
    {
        return {
            ZooData:null,
            editzoo:'',
            // a:true,
            btntxt:'Close',
            btntxt2:'AddZoo',
            addzoo:'',
            value:null,
            form:{
                zoo_id:'', 
                zoo_name:'',
                state:'',
                city:'',
                area:'',   
                }
        }
    },


    mounted(){
                axios.get('http://localhost:8080/zoosite/myresource/zoodata')
                .then(response=>(this.ZooData=response.data))  
            },
    methods:{
        deletezoo(zoo){
            axios.post('http://localhost:8080/zoosite/myresource/deletezoodata',zoo)
            return alert("Deleted")
            
        }
    }
}
</script>
<template>
<div class="row m-5">
        <br>
        <div class="col-lg-3">
        <div v-if="addzoo" class=" btn1 round ">
        <button id="addzoo" class="btnbg" @click='addzoo=!addzoo' > {{btntxt}} </button>
        </div>
        <div v-else="addzoo" class=" btn1 round ">
        <button id="addzoo" class="btnbg" @click='addzoo=!addzoo' > {{btntxt2}} </button>
        </div>
        <br/>
        <div v-if="addzoo" >
            <AddZoo />
        </div>
 </div>
       <div class="container col-lg-6  table-responsive">
       
       
        <table class="table border table-light table-striped table-hover" id="mytable1">
          <thead>  <tr><th>Zoo ID</th>
                <th>Zoo Name</th>
                <th>State</th>
                <th>City</th>
                <th>Area (sq km)</th>
                <th>Update</th>
                <th>Delete</th>
                
            </tr>
        </thead>
        <tbody>
    
        <tr v-for="a in ZooData">
      
            <td>{{ a.zoo_id }}</td>
            <td>{{ a.zoo_name }}</td>
            <td>{{ a.state }}</td>
            <td>{{ a.city }}</td>
            <td>{{ a.area }}</td>
            <td>
            <button  class="btn1 " @click="editzoo=!editzoo ,value=a">Edit</button>
            
        </td><td>
        <button  class="btn1 " @click="deletezoo(a)">Delete</button>
 
            </td>
        </tr>
        

    
        </tbody>        
        </table>

        </div>
        


        <div v-if="editzoo" class="col-lg-3">
            <EditZoo :values="value"/>
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
