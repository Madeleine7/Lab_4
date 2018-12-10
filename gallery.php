<!DOCTYPE html>
<html>
<body>
  <header>
    <?php
    include("header.php") ?>
    <h1>Gallery</h1>
  </header>

  <div ID="index_content">
<h3>Introduction</h3>
<p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus, quam vel interdum varius.Maecenas in rhoncus leo. Maecenas ut sapien euismod, aliquam neque nec,
  ultricies arcu.</p>


    <?php
    echo "<div class='grid_container'>";
    #link to code for displaying images https://bit.ly/2BhuCqQ
    $files = glob("uploads/*.*");
    #goes through folder uploads and takes each file and stops when the number is =i which is files
    for ($i=0; $i<count($files); $i++){
    	$num = $files[$i];

    	echo '<div class="images"><img src="'.$num.'" alt="random image">'."&nbsp;&nbsp;</div>";

    	}
      echo "</div>";
    ?>


  <?php
  include("footer.php") ?>
</body>

</html>
