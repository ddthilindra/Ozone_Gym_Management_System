<%@ Page Title="" Language="C#" MasterPageFile="~/headerFooter.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="OzoneFitness.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>OZONE - Fitness Center</title>

    <link rel="stylesheet" href="./css/index_style.css">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- ---------------------------------------------- CAROUSEL START ---------------------------------------------------------------------- -->


<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./imgs/pexels-binyamin-mellish-17840.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="animate__animated animate__fadeInDown animate__delay-1s">First slide label</h5>
        <p class="animate__animated animate__fadeInUp animate__delay-2s">Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="./imgs/anastase-maragos-FP7cfYPPUKM-unsplash.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="animate__animated animate__fadeInLeft animate__delay-1s">Second slide label</h5>
        <p class="animate__animated animate__fadeInRight animate__delay-2s">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="./imgs/sven-mieke-jO6vBWX9h9Y-unsplash.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="animate__animated animate__zoomIn animate__delay-1s">Third slide label</h5>
        <p class="animate__animated animate__lightSpeedInRight animate__delay-2s">Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!-- ---------------------------------------------- CAROUSEL END ---------------------------------------------------------------------- -->

<!-- ---------------------------------------------- INFO START ---------------------------------------------------------------------- -->

<div class="info" >
  <div class="container">
    <div class="row">
      <div class="col-md-3"data-aos="fade-up">
        <div class="wrap">
          <span><i class="fad fa-dumbbell fa-3x rounded-circle"></i></span>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Est maiores delectus officia inventore debitis ab mollitia tempora repellat </p>
        </div>
        
      </div>

      <div class="col-md-3 " data-aos="fade-up">
        <div class="wrap">
          <span><i class="fad fa-clipboard-list fa-3x "></i></span>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Est maiores delectus officia inventore debitis ab mollitia tempora repellat </p>
        </div>
        
      </div>
        

      <div class="col-md-3" data-aos="fade-up">
        <div class="wrap">
          <span><i class="fad fa-utensils-alt fa-3x"></i></span>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Est maiores delectus officia inventore debitis ab mollitia tempora repellat </p>
        </div>
       
      </div>

      <div class="col-md-3"data-aos="fade-up">
        <div class="wrap">
          <span> <i class="fad fa-user-clock fa-3x"></i></span>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Est maiores delectus officia inventore debitis ab mollitia tempora repellat </p>
  
        </div>
        
      </div>
    </div>
  </div>
</div>

<!-- ---------------------------------------------- INFO END ---------------------------------------------------------------------- -->


<!-- ---------------------------------------------- TRAINERS START ---------------------------------------------------------------------- -->

<div class="trainers" >
  <div class="row">
    <div class="container">
      <h2 class="text-center bg-dark" data-aos="fade-up">OUR TEAM</h2>
      <div class="card-group">
        <div class="col-md-4" data-aos="fade-up">
          <div class="card">
            <img src="./imgs/h1-team-img-1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
        </div>
    
        <div class="col-md-4" data-aos="fade-up">
          <div class="card">
            <img src="./imgs/h1-team-img-2.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
        </div>
    
        <div class="col-md-4" data-aos="fade-up">
          <div class="card">
            <img src="./imgs/h1-team-img-3.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
  
</div>  

 <!-- ---------------------------------------------- TRAINERS END ---------------------------------------------------------------------- -->
 
 
 <!-- ---------------------------------------------- SUPLIMENT START ---------------------------------------------------------------------- -->

<div class="suppliments">
  <div class="container">
    <h2 class="text-center bg-dark" >SUPPLIMENTS</h2>
    <div class="row-low">
      <div>
        <img src="./imgs/IMGBIN_dietary-supplement-ryno-power-gym-motocross-bodybuilding-supplement-logo-png_ygvfG6mU.png" style="height:65px; width: 247px;" alt="">
      </div>
      <div >
        <img src="./imgs/client4.png" alt="">
      </div>
      <div >
        <img src="./imgs/inner-armour-logo.png" style="height:65px; width: 247px;" alt="">
      </div>
      <div >
        <img src="./imgs/client2.png" alt="">
      </div>
      <div >
        <img src="./imgs/1upnutrition-logo.png" style="height:65px; width: 247px;" alt="">
      </div>
      <div >
        <img src="./imgs/client3.png" alt="">
      </div>
    
    
      <div>
        <img src="./imgs/client1.png">
      </div>
      <!-- <div>
        <img src="./imgs/Swole-2.png" style="height:177px; width: 206px;" alt="">
      </div>
      <div>
        <img src="./imgs/bsn-logo.png" style="height:206px; width: 177px;"alt="">
      </div> -->
      
      <!-- <div>
        <img src="./imgs/venum-logo.png" style="height:206px; width: 177px;" alt="">
      </div>
      <div>
        <img src="./imgs/client1.png" alt="">
      </div> -->
    </div>
  </div>
    
</div>  
  <!-- ---------------------------------------------- SUPLIMENT END ---------------------------------------------------------------------- -->

</asp:Content>
