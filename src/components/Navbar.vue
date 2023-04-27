<script>    
    import RouterLink from '../router';
    export default{
      name:'navbar'
      
    }
document.addEventListener("DOMContentLoaded", function(){
  window.addEventListener('scroll', function() {
      if (window.scrollY > 30) {
        document.getElementById('nav-top').classList.add('fixed-top');

      } else {
        document.getElementById('nav-top').classList.remove('fixed-top');
      } 
  });
}); 

</script>
<template>
<div class="bg-light text-dark d-flex justify-content-center"> <img src="../components/icons/peng.gif" class="peng">
          
          <span class="zoosite">Peng-wing's Zoo</span></div>
       <nav id="nav-top" class=" bg-dark text-light d-flex justify-content-center">
       
        
        <RouterLink to="/" class="links">Home</RouterLink>
        <RouterLink to="/about" >About</RouterLink>
        <RouterLink to="/dashboard" >Dashboard</RouterLink>
        <RouterLink to="/login" >Login</RouterLink>
     
      </nav>
    
</template>

<style >
/* .log{
  height: 50px;
  width: 100%;
} */
.peng{
  z-index: 0;
}
.navlog
{
  justify-content: right;
  padding-right: 3rem;
}
.zoosite{
  font-weight: 500;
  /* text-decoration: underline; */
  display: flex;
  align-items: center !important;
  

}

.links{
text-decoration: none;
}

nav a.router-link-exact-active {
  color: rgb(255, 255, 255);
}

nav a.router-link-exact-active:hover {
  color: rgb(255, 255, 255);
  background-color: transparent;
}

nav a {
  /* display: inline-block; */
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}


.custard {

	width: 100%;
	text-align: center;
}

.custard::after {
  content: "\1F43f";
	/* CSS Pseudo-elements escape some characters that's why the unicode 'U+1F36E' is converted to '\1F36E' */
  font-size: 35px;
	/*As @LukyVj added in the comment section, Chrome limits the emoji size in 256px, Safari and Firefox doesn't restrcit sizes*/
	display: block;
}



  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }


  .forgot-pass{
    text-decoration: underline;
    color: #0000EE;
    
}
.forgot-pass:hover{
  text-decoration: underline;
    color: #0000EE;
    background-color: transparent;
}

</style>
