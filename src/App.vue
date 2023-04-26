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


@media (min-width: 1024px) {
  header {
    /* display: flex; */
    place-items: center;
    /* padding-right: calc(var(--section-gap) / 2); */
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }


}
</style>
