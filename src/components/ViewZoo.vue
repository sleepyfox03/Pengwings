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
            addzoo:'addzoo',
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
 
       <div class="container col-lg-6  table-responsive">
        <p><button id="addzoo" class="btn1 " @click='addzoo=!addzoo' hidden>add zoo</button>
       </p>
        <table class="table table-light table-striped table-hover" id="mytable1">
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
        <div v-else-if="addzoo" class="col-lg-3">
            <AddZoo />
        </div>
     
</div>
</template>

<style>

</style>