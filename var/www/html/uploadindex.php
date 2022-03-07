<?php
session_start(); 
?>
<!DOCTYPE html>
<title>Green Anarchy Portal</title>
 <style>
body {
  background-image: url("granaback.png");

  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;

  background-size: cover;
}

</style>


<h1>
<p style="text-align:center;"><font size="10" color="ffffff">
Bem-Vindo a central GRANA
</h1></font>
<body>
  <?php
    if (isset($_SESSION['message']) && $_SESSION['message'])
    {
      printf('<b>%s</b>', $_SESSION['message']);
      unset($_SESSION['message']);
    }
  ?>
  <form method="POST" action="upload.php" enctype="multipart/form-data">
    <div>
<p style="text-align:center;"><font size="10" color="ffffff">
      <span>Upload a File:</span>
      <input type="file" name="uploadedFile" />
    </div>

    <input type="submit" name="uploadBtn" value="Upload" />
  </form>
<br>
<br>
<br>
<br>
<a href="javascript:history.back()">Go Back</a>
</body>
</html>
