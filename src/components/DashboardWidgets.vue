<script >
import ViewZoo from './ViewZoo.vue';


export default{
 components:{
    ViewZoo
 },
    data()
    {
        return {
            display:'',

        }
    },
    // methods()
    // {
    //     return{

    //         displayComponents(){
    //             this.display=true;
    //         }
    //     }
    // }
    
    }
</script>

<template>
    <div >
        <div  >
            <h1 class="heading">Dashboard</h1>
        </div >
        <div>
            <div class="row">
                <div class="col-lg-3 col-md-3  col-6 p-5 m-3 bg  border">
              <button id="viewuser_table" class="btn1 cen " >Users</button>

                </div>
                <div class="col-lg-3 col-md-3  col-6 p-5 m-3 bg  border">
                      <button id="viewanimals_table" class="btn1 cen" >Animals</button>

                </div>
                <div class="col-lg-3 col-md-3  col-6 p-5 m-3 bg border">
                   <button id="viewzoo_table" class="btn1 cen" @click="display=!display"> Zoo</button>
                
                </div>
            </div>
        </div >        
    </div>
   
    <div class="row">
        <div v-if="display">
            <ViewZoo />
        </div>
    </div>
</template>

<style scoped>
.heading{
    color: #ff6726; 
    display: flex;
     justify-content: center;
     margin-top: 1.5rem;
     margin-left: -1rem;
}
.row{
    justify-content: space-around;
}
.cen
{   display: flex;
    justify-content: space-around;
}
.bg
{   background-color: rgb(38, 38, 38);
    border-radius: 10px;
    display: flex;
    justify-content: center;
    
}
.bg:hover{
    background-color: hsl(0, 0%, 33%);
    transition: 0.4s;
}
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
.btns1{
    
    color: whitesmoke;
    background-color: #212627;
    border-radius: 10px;
    border-color: #ff6726;
}
.btns1:hover{
    background-color: #ff6726;
    color: whitesmoke;
}
</style>