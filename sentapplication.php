<?php

   include("config.php");
   session_start();
   

   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($db,$_POST['id']);
      $mycompany = mysqli_real_escape_string($db,$_POST['exampleFormControlSelect1']); 
     
      echo $myusername;
      echo $mycompany;
      //CHECK IF HAS MORE THAN ONE APPLICATIONS
      $sql = "SELECT * FROM Application WHERE student_regnum = '$myusername'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      //$active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // if 3 applications already exist
		echo $count;
      if($count >= 3) {
         //session_register("myusername");
         //$_SESSION['login_user'] = $myusername;
         echo "loged in";
         echo "<script type='text/javascript'>alert('You have already 3 applications for internship')</script>";
         sleep(6);
         //header("location: check.php");
       
         exit();
      }
      $sql = "SELECT * FROM Application WHERE student_regnum = '$myusername' and company='$mycompany'" ;
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
     // $active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // if 1 applications already exist
		echo $count;
		
      if($count >= 1) {
      
               echo "<script type='text/javascript'>alert('You have already have applied for this company')</script>";
      
      sleep(6);
      //header("location: check.php");
      exit();
      }
      
      //ADD
      $sql="INSERT INTO Application (student_regnum,company,approval) VALUES ('$myusername', '$mycompany', 'pending')";
      $result = mysqli_query($db,$sql);
        
      
      // If result matched $myusername and $mypassword, table row must be 1 row
	
      if($result == TRUE) {
         //session_register("myusername");
         //$_SESSION['login_user'] = $myusername;
         echo "New record created successfully";
                  echo "<script type='text/javascript'>alert('New record created')</script>";
            sleep(6);
       //  header("location: check.php");
      }else {
         $error = "Your Login Name or Password is invalid";
         echo $error;
         header("location: error.html");
      }
      }
   
$conn->close();
header("location: check.php");
?>




