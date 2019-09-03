<?php


include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

if(isset($_POST['email'], $_POST['password'])) { 
   $email = $_POST['email'];
   $password = $_POST['password']; // The hashed password.
   if(login($email, $password, $mysqli) == true) {
      // Login success
     header("Location: '..\..\..\UserAccess");
   } else {echo "error";
      // Login failed
     header("Location: '..\..\..\?error=1");

   }
} else { 
   // The correct POST variables were not sent to this page.
   echo 'Invalid Request';
}




;?>