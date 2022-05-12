---
layout: single
title: personal
permalink: /personal/
canonical_url: "https://byhoson.github.io/personal"
author_profile: true
---

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
</style>
<body>

<!-- Header -->
<div class="header">
  <h1>Some Pics of Mine</h1>
  <p>click to see!</p>
</div>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
    <img src="/assets/images/1.jpeg" style="width:100%">
    <img src="/assets/images/2.jpeg" style="width:100%">
    <img src="/assets/images/3.jpeg" style="width:100%">
    <img src="/assets/images/pink.jpg" style="width:100%">
  </div>
  <div class="column">
    <img src="/assets/images/4.jpeg" style="width:100%">
    <img src="/assets/images/5.jpeg" style="width:100%">
    <img src="/assets/images/midschool.jpeg" style="width:100%">
    <img src="/assets/images/green.jpeg" style="width:100%">
  </div>  
  <div class="column">
    <img src="/assets/images/profile.jpeg" style="width:100%">
    <img src="/assets/images/7.jpeg" style="width:100%">
    <img src="/assets/images/6.jpeg" style="width:100%">
  </div>
  <div class="column">
    <img src="/assets/images/8.jpeg" style="width:100%">
    <img src="/assets/images/9.jpeg" style="width:100%">
    <img src="/assets/images/byoungho.jpg" style="width:100%">
  </div>
</div>

</body>
</html>

