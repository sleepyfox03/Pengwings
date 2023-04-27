<script setup>
import { RouterLink, RouterView } from 'vue-router'
import Navbar from './components/Navbar.vue'
// import ViewZoo from './components/ViewZoo.vue';

</script>

<template>
  <div>
    
  
  <header>
 
      <Navbar />

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
