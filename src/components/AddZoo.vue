<script>
import axios from 'axios';
export default
{
data(){
   return{
    form:{ 
    zoo_name:'',
    state:'',
    city:'',
    area:'',   
    }
}
},
methods:{
addzoo(){    
        axios
        .post('http://localhost:8080/zoosite/myresource/addzoodata',this.form)
        }
}
}
</script>
<template>
    <div class="  rcorners2 p-4">
        <div><h3 style="color: #ff6726">Add Zoo</h3></div>
    <div class="">
        <div class="form-group">
        <label>Zoo Name</label>
        <input v-model="form.zoo_name" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>State</label>
        <input v-model="form.state" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>City</label>
        <input v-model="form.city" class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Area</label>
        <input v-model="form.area" class="form-control" type="text">
        </div>

        <div class="form-group mt-2">
           
        <button class="btn1 form-control" @click="addzoo()">Add</button>
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
  
  border-radius: 25px;
  border: 2px solid;
  padding: 20px;

}

</style>