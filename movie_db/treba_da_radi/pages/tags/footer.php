<?php include ("funkcije.inc.php"); ?>
<?php 
      $idsDB = array();
      array_push($idsDB,provjeri_id($konekcija));
      
     
      
    ?>
<footer>
      Copyright &copy; 2021 Movie Database | MDb
      <div class="social-media ">
        <a href="https://www.facebook.com/fpmoz.ba/"><i class="fab fa-facebook sm"></i></a>
        <a href="https://www.instagram.com/fpmoz.mostar/"><i class="fab fa-instagram sm" target="_blank"></i></a>
        <a href="https://www.youtube.com/watch?v=QAADpHsh6cM"><i class="fab fa-youtube sm" target="_blank"></i></a>
      </div>
    </footer>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="../scripts/view.js"></script>
    <script src="../scripts/model.js"></script>
    <script src="../scripts/controller.js"></script>
    
    <script type="text/javascript">
       
      document.addEventListener("click", e=> {
        

        if(e.target.id === 'posterInfo'){
         
          const arrayFromPHP = (<?php echo json_encode($idsDB); ?>)[0].split(",");

          Ctrl.cardInfo(arrayFromPHP);

        }else if (e.target.classList.contains("unliked")) {

          //add liked class and update db
          e.target.classList = "liked";
          let infoID = View.loadinfoID();
         
          $.ajax({
            url:'imdbID.php',
            method:'post',
            data:{imdbID:infoID},
            success: function(data){
              console.log(data);
            }          
          });

          
        } else if (e.target.classList.contains("liked")) {
          //add unliked class and update db
          e.target.classList = "unliked";
          const infoID = View.loadinfoID();

          $.ajax({
            url:'delete.php',
            method:'post',
            data:{imdbID:infoID},
            success: function(data){
              console.log(data);
            }          
          });
          
        }
      });
    
    </script>
  </body>
</html>