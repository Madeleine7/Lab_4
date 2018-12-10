<?php
//require_once 'functions.php';
//creating a login.php that will either send user to the hidden page or not let them enter

//1. send username and pass combo to data base to check if this user exists
// if there is somebody then let them include in
// if not, tell them login failed
//DOES CHECK IN DB

//2. send only username, and ask db to give you Password
//store the username and password in new variables
//check if entered password is same as password in db
// if it is, let them if, if not dont
// DOES CHECK IN CODE
// Begin the session

#HOW TO PROTECT AGAINST SESSION HIJACKING

$dbserver = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'bookstore';
# Open the Database
@ $db = new mysqli($dbserver, $dbuser, $dbpass, $dbname);
# Check if able to connect or not
if($db->connect_error){
  echo "you couldnt connect, heres why:" . $db->connect_error;
  exit();
}

//Checks to see if someone actually fill in the form and press login
if(isset($_POST) && !empty($_POST)){
  $myemail = mysqli_real_escape_string($db, $_POST['username']);
  $mypassword = mysqli_real_escape_string($db, $_POST['password']);
          // mysqli_real_escape_string is used to prevent SQL injection
  //so input form knows not to take any code, any code is banned
  //$myusername = mysqli_real_escape_string($db, $myusername);
$query =  "SELECT Email, Password
  FROM user
  WHERE Email = ?";

  $stmt = $db->prepare($query);
//echo $query;

  $stmt->bind_param('s', $myemail); //this says it is a string and the value is whatever $myusername is
  $stmt->execute();

  $stmt->bind_result($dbemail, $dbpassword);

  while($stmt->fetch()){
    if(md5($mypassword) == $dbpassword){
      //echo "welcome";
      //md5 unhashes the pass from the db
      session_start();
      $_SESSION['login']= $dbemail;
      header('location:fileupload.php');

      //we can hash passwords using md5. it looks like md5($mypassword); however it needs to go on a password that is already hashed
    }
    //only sometimes echos out when typing email and pass as 1 or 2
    echo "Login failed. Make sure you are using the correct username/password";
  }

}
 ?>

<!DOCTYPE html>
<html>
<body>
  <header>
    <?php
    include("header.php") ?>
    <h1>Login</h1>
  </header>

  <div ID="login_content">
  <form action="" method="post">
    Username:<br>
    <input type="text" name="username">
    <br>
    Password:<br>
    <input type="text" name="password" >
    <br><br>
    <input type="submit" value="Login">
  </form>
  </div>

  <?php
  include("footer.php") ?>
</body>

</html>
