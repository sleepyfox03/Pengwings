<script>
import axios from 'axios';
import RouterLink from '../router';
// export default{
//     return{

//     }
// }
</script>
<template>
    <div class="login mt-5">
        <img src="../components/icons/peng.gif" class="peng">
      </div >
      <div class="login">
          <h3>Peng-wing's</h3>
    </div>
<div class="login">
<div class=" col-lg-3 rcorners2  p-4">
        <div><h3 class="" style="color: #ff6726">Login</h3></div>
    <div class="">
        <div class="form-group">
        <label>Email</label>
        <input  class="form-control" type="text">
        </div>

        <div class="form-group">
        <label>Password</label>
        <input  class="form-control" type="text">
        </div>

        <div class="form-group text-center mt-2">
           
           <button class="btn1 form-control mt-5" @click="addzoo()">Login</button>
        </div>

        <div class="form-group forgot-pass mt-2" >
            <RouterLink to="/forgot" class="forgot-pass" >Forgot Password?</RouterLink>
        </div>
    </div>
</div>
</div>
</template>
<style>
.login{
    width: 100%;
    margin-top: rem;
    display: flex;
    justify-content: center;
}

</style>