---
layout: single
permalink: /madduck/
canonical_url: "https://byhoson.github.io/madduck"
author_profile: false
---
## 마떡사거리인생
<img src="/assets/images/madduck/street.png" style="width:100%">
4
## 조직구성
### 위원장
<img src="/assets/images/madduck/sehyun.png" style="width:30%">
이름: 박세현
### 직원
<img src="/assets/images/madduck/wonsuck.png" style="width:30%">
이름: 유원석
<img src="/assets/images/madduck/jungmin.png" style="width:30%">
이름: 오정민
<img src="/assets/images/madduck/hyunwoo.png" style="width:30%">
이름: 김현우
<img src="/assets/images/madduck/yeonju.png" style="width:30%">
이름: 김연주
<img src="/assets/images/madduck/dongeon.png" style="width:30%">
이름: 김동언
<img src="/assets/images/madduck/hoseung.png" style="width:30%">
이름: 류호승
<img src="/assets/images/madduck/sunghoon.jpeg" style="width:30%">
이름: 조성훈 
### 애완견
<img src="/assets/images/madduck/yoohoon.png" style="width:20%">
이름: 장유훈
### 이사장
<img src="/assets/images/byoungho.jpg" style="width:30%">
이름: 손병호
<html>
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial;
}

.header {
  text-align: center;
  padding: 32px;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  padding: 0 4px;
}

/* Create four equal columns that sits next to each other */
.column {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
  max-width: 25%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
  width: 100%;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 800px) {
  .column {
    -ms-flex: 50%;
    flex: 50%;
    max-width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    -ms-flex: 100%;
    flex: 100%;
    max-width: 100%;
  }
}

#myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
/*  left: 50px;
  top: 50px; */
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}
</style>
<body>


<!-- Header -->
<div class="header">
  <h1>인사말</h1>
  <p>어서오고.  - 조직위원장 박세현</p>
</div>


<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
    <img id="myImg" alt="this is 1.jpeg" src="/assets/images/madduck/1.jpeg" style="width:100%">
    <img src="/assets/images/madduck/2.jpeg" style="width:100%">
    <img src="/assets/images/madduck/3.jpeg" style="width:100%">
    <img src="/assets/images/madduck/12.jpeg" style="width:100%">
  </div>
  <div class="column">
    <img src="/assets/images/madduck/4.jpeg" style="width:100%">
    <img src="/assets/images/madduck/5.jpeg" style="width:100%">
    <img src="/assets/images/madduck/10.jpeg" style="width:100%">
    <img src="/assets/images/madduck/13.jpeg" style="width:100%">
  </div>  
  <div class="column">
    <img src="/assets/images/madduck/7.jpeg" style="width:100%">
    <img src="/assets/images/madduck/6.jpeg" style="width:100%">
    <img src="/assets/images/madduck/8.jpeg" style="width:100%">
  </div>
  <div class="column">
    <img src="/assets/images/madduck/11.jpeg" style="width:100%">
    <img src="/assets/images/madduck/9.jpeg" style="width:100%">
  </div>
</div>

<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("myImg");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}
</script>


</body>
</html>

