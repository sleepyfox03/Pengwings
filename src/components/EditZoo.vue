<script>
import axios from 'axios';
export default
{
data(){
   return{
    // ZooData:null,
    form:{ 
    zoo_name:'',
    state:'',
    city:'',
    area:'',   
    }
}
},
props: {
    values: Object
  },
methods:{
editzoo(){
  
        axios
        .post('http://localhost:8080/zoosite/myresource/editzoodata',this.values)
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
        <div><h3 style="color: #ff6726">Edit Zoo</h3></div>
    <div class="">
        <div class="form-group">
        <label>Zoo Name</label>
        <input v-model="values.zoo_name" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>State</label>
        <input v-model="values.state" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>City</label>
        <input v-model="values.city" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Area</label>
        <input v-model="values.area" class="form-control" type="text">
        </div>

        <div class="form-group mt-2">
        <button class="btn1 form-control" @click="editzoo()">Update</button>
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