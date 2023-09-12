<script setup>

</script>

<template>
  <div class="container-fluid m-0">
       <div class ="row">
          <div class="col-lg-4">
           <h2 class="hero-text">
              Welcome to the <span class="hero-title">Peng-Wings' Zoo</span>
           </h2>
           <p class="text-center font-weight-light hero-paragraph">
              With Over 2500 animals over 80 Acres.
              You are really in for a Wild life in coolest zoo. 
              we provide more intensive care for animals than is possible in nature reserves or sanctuaries
              The primary aim of a lemon society is to ensure that endangered species are maintained, researched and protected. 
           </p>
           <div class="text-center mt-4">
           <button type="button" class="btn indigo btn-lg">Get Your Tour !</button>
           </div>
          </div>
          <div class="col-lg-8 hero-right-section">
            <img :src="illustration" class="hero-right-section-img">
          </div>
      </div>
      <div class="container-fluid m-3">
       <div class="row mt-5">
          <div class="col-lg-4 mt-2">
            <img :src="flower" class="flower-img">
          </div>
          <div class="col-lg-8 mt-2">
              <h2 class="red-colour text-center">Our Mission</h2>
              <p class="mission-paragraph">Peng-Wings' Society provide more intensive care for animals than is possible in nature reserves or sanctuaries
                  We specialize in particular groups of animals, while others exhibit general collections 
                  Marine animals are often kept in separate establishments called aquariums.
                  The primary aim of a Lemon Society is to ensure that endangered species are maintained, researched and protected.
                  Lemon Society also play an important role in educating people about animals and their habitats. </p>
          </div>
      </div>
      </div>
  </div>
</template>
<script>
import illustration from '../../public/zootopia.jpg'
import flower from '../../public/flower.webp'
import zoocharacter from '../../public/comedy.jpeg'
export default{
data()
{
  return{
      illustration:illustration,
      flower:flower,
      zoocharacter:zoocharacter
  }
}
}
</script>
<style>
.btn1{
/* z-index: 1 !important; */
color: whitesmoke;
background-color: #212627;
border-radius: 10px;
border-color: #ff6726;
}
.btn1:hover{
  /* z-index: 0; */
background-color: #ff6726;
color: whitesmoke;
transition: 0.3s;
cursor: pointer;
}
.bg1{

  height: 50%;
  color: white;
  background-color: black;
  align-items: center;
  justify-content: center;
}
.blob{
  /* height: auto; */
  /* width:  */
  color: aqua;
}
.zindex{
  z-index: -1;
}
.gradient{
  background: linear-gradient(to right, rgba(255, 254, 254, 0) 0%,rgb(0, 0, 0) 100%);
}
img{
  height: auto;
  max-width: 100%;
  /* opacity: 70%; */
  position:relative;
  z-index:-1;
}
.clip{
  align-content: center;
  font-size: 72px;
  /* margin-top: 3rem; */
  /* margin-bottom: 1rem; */
  /* -webkit-transform: scale(3,1); */

  font-weight: 200;
  background: linear-gradient(to right, #f32170,
                    #ff6b08, #cf23cf, #eedd44);
            -webkit-text-fill-color: transparent;
            -webkit-background-clip: text;
}
</style>
