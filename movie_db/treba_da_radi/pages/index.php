
  
    <?php include ('./tags/header/top-header.php')?>
    <link rel="stylesheet" href="../css/style.css?v=<?php echo time(); ?>">
   
    <?php include ('./tags/header/bottom-headera.php');?>


    
    <?php 
    
   if (isset($_SESSION['kor_ime']) && isset($_SESSION['id'])) {  
 
	?>
    ?>

    <section id="movies" class="movies">
      <div class="container">
        <div class="menu-icons">
          <ul>
            <li>
              <a href="#"><i class="fas fa-home" id="home"></i></a>
              <p>POČETNA</p>
            </li>
            <li>
              <a href="#"
                ><img
                  src="../img/movie.png"
                  id="movies"
                  class="logo-menu"
                  alt=""
              /></a>
              <p>FILMOVI</p>
            </li>

            <li>
              <a href="#"
                ><img
                  src="../img/series.png"
                  id="series"
                  class="logo-menu"
                  alt=""
              /></a>
              <p>TV SERIJE</p>
            </li>

           
          </ul>
        </div>

      </div>
    </section>
    <?php }else{
	header("Location: ../index.php");
} ?>
    
    

    <?php include ('./tags/footer.php') ?>
    

   
