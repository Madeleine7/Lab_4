<?php
include("config.php");

# Open the Database
@ $db = new mysqli($dbserver, $dbuser, $dbpass, $dbname);

# Check if able to connect or not
if($db->connect_error){
  echo "you couldnt connect, heres why:" . $db->connect_error;
  exit();
}

$searchtitle = "";
$searchauthor = "";

#RESERVE BOOK has to be at top of page otherwise does not work
if (isset($_GET)  && !empty($_GET)) {
    $id=$_GET['reserved'];
    $query2 = "UPDATE book SET Reserved='1' WHERE BookID='".$id."'";
    $stmt2= $db->prepare($query2);
    $stmt2->execute();
}

#only runs if the variables are NOT empty
if (isset($_POST) && !empty($_POST)){
  $searchauthor = htmlentities(trim($_POST['Author']));
  $searchtitle = htmlentities(trim($_POST['Title']));
  //protects against all html entries to be added, if somebody adds html tags it will not execute them
  //trim prevents sql spaces that affect code, htmlentities prevents html code 
}

#connects the tables to the middle table book author and thats where browse pulls the books from
$query = "
SELECT book.title, book.BookID, book.isbn, author.first_name, author.last_name FROM book
JOIN bookauthor ON book.BookID = bookauthor.BookID
JOIN author ON author.AuthorID = bookauthor.AuthorID";

#Checks to see if title was searched
if($searchtitle && !$searchauthor){
  $query = $query . " WHERE book.title LIKE '%" . $searchtitle . "%'";
}
#Checks to see if author was searched
if(!$searchtitle && $searchauthor){
  $query = $query . " WHERE author.first_name LIKE '%" . $searchauthor . "%'";
}
#Checks to see if title and author was searched
if($searchtitle && $searchauthor){
  $query = $query . " WHERE book.title LIKE '%" . $searchtitle . "%' AND author.first_name LIKE '%" . $searchauthor . "%'";
}


#Echos out query to page
//echo $query;
$stmt = $db->prepare($query);
//connects results to assigned variables
$stmt->bind_result($title,$BookID, $isbn, $authorF, $authorL);
$stmt->execute();
?>

<!DOCTYPE html>
<html>

<body>
  <header>
    <?php
    include("header.php") ?>
    <h1>Browse</h1>
  </header>

  <div ID="browse_content">
    <p class="browse_instruction">Browse books by entering either authors name or title of the book and or both</p>
  <form method="post">
    Author<br>
    <input type="text" id="author" name="Author">
    <br>
    Title<br>
    <input type="text" id="title" name="Title" >
    <br><br>
    <button type="submit" value="Submit">Submit</button>
  </form>
  <?php
  while($stmt->fetch()){
    echo "<div class='search_div'>";
    echo "<b>Title: </b>";
    echo $title."</br>";
    echo "<b>ISBN: </b>";
    echo $isbn."</br>";
    echo "<b>Author: </b>";
    echo $authorF." ";
    echo $authorL."</br>";
    echo "<form method='GET'><button class='reserve_button' name='reserved' value='".$BookID."'>Reserve</button></form>";
    echo "</div>";

}
  ?>
  </div>



  <?php
  include("footer.php") ?>
</body>

</html>
