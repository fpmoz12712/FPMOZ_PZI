<?php
    session_start();
    include ("../db_conn.php");
    include ("funkcije.inc.php");

   dodaj_imdbid($_SESSION['kor_ime'], $_POST['imdbID'], intval($_SESSION['id']), $conn);

    
    $checkID = provjeri_korisnika2($konekcija);
    
    if($checkID < 1){   //provjeri pomocu ID da li je korisnik u bazi

        // $ids = array();
        // array_push($ids,$_POST["imdbID"]);
        // $strIds = implode(",",$ids);
        

        // dodaj_imdbid(
        //     $_SESSION['kor_ime'],
        //     $strIds,
        //     $konekcija
        //     );

        //Dodaj id
       

    }else{
        
        $lastIDs = (provjeri_id($konekcija));

        //provjera dali je korisnik ima trenutni id u bazi
        // if(!provjeriDuplikat($_POST["imdbID"],$lastIDs)){
        //     //pretvori string u array 
        //     $ids = explode(",",$lastIDs);
        //     array_push($ids,$_POST["imdbID"]);
        //     //arr -> str
        //     $strIds = implode(",",$ids);
            
        //     update_imdbid(
        //     $strIds,
        //     $_SESSION['kor_ime'],
        //     $konekcija
        //     );

        // }

    }
?>