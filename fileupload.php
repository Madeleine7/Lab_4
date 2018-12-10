<?php
session_start();
if(!isset($_SESSION['login'])){
  //if session is not called login it redirects the user to login page
  header('location:login.php');
}



//require_once 'functions.php';
#checks to see if 'file upload is in use'
if(isset($_FILES['fileupload'])){

$maxsize = 2000000; //2 mil bytes = 2MB
$allowed = array('jpg', 'png', 'jpeg', 'gif');
//make all files lower case and then check
//want to make FILE.JPEG only .JPEG
$ext = strtolower(substr($_FILES['fileupload']['name'], strpos($_FILES['fileupload']['name'], '.')+1));

//take file name and upload them to the server
//upload name to DB
//upload picture to server

$errors = array();

//place errors if upload does not work
if(in_array($ext, $allowed) === false){
  $errors[] = 'This is not an allowed extension';
}
if($_FILES['fileupload']['size']>$maxsize){
  $errors[] = 'This file exceeds 2MB';
}
if(empty($errors)){
  //if there is no errors we will upload the file
  move_uploaded_file($_FILES['fileupload']['tmp_name'], "uploads/{$_FILES['fileupload']['name']}");
}

}
?>

<!DOCTYPE html>
<html>

<body>
  <header>
    <?php
    include("header.php") ?>
    <h1>File Upload</h1>
  </header>

  <div ID="browse_content">
    <p class="browse_instruction">Upload your files here</p>
    <?php
    //time in video 46:10
    if(isset($errors)) {
      if(empty($errors)) {
        echo '<p>"Uploaded!"</p>';
      } else{
        foreach($errors as $err){
          echo '<p>$err</p>';
        }
      }
    }
     ?>
  <form method="post" class="my_upload" enctype="multipart/form-data">
    <input type="file" id="file" name="fileupload">
    <input type="submit" value="Submit" name="submit">
  </form>
  <p class="side_note"><b>Note</b>: only the formats .jpg, .jpeg, .gif and .png are allowed to a mximum size of 2MB</p>
  </div>



  <?php
  include("footer.php") ?>
</body>

</html>
