<script setup>

</script>

<template>

  <main>
    <div class="row zindex bg1">
        <div class="col gradient ">
      <img src="../components/icons/2.jpg" class="">
      </div>
      <div class="col bg1 ">
        <h1></h1>
        <h1 class="clip">Peng-wings</h1>
        <h1>A home for wildlife</h1>
        
      </div>
    
    </div>

  </main>
</template>
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