<script setup>
import { RouterLink, RouterView } from 'vue-router'
import Navbar from './components/Navbar.vue'
import Navbarlog from './components/Navbarlog.vue';
// import ViewZoo from './components/ViewZoo.vue';
import { useRoute } from 'vue-router'

let statusLogged  = localStorage.getItem('statusLoggedIn')

</script>

<template>
  <div>
    
  
  <header>
 
      <Navbar v-if="statusLogged != 'true'" />
      <Navbarlog v-else />
      

  </header>

</div>

<div class="temp">
  <RouterView ></RouterView>
</div>  
</template>

<style scoped>
header {
  line-height: 1.5;
  /* max-height: 100vh; */
}
.temp{
  animation: fadeInAnimation ease 3s;
    animation-iteration-count: 1;
    animation-fill-mode: forwards;
}
.logo {
  display: block;
  margin: 0 auto 2rem;
}





</style>
