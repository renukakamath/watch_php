<?php include 'connection.php';
  // Get the form data
  $qstnid = $_POST["opt"];

  $q="SELECT * FROM quiz_questions INNER JOIN quiz_options USING (question_id) where project='$qstnid'";
  $res=select($q);


  // Do something with the data
  // ...

  // Return a response
  echo json_encode($res) ;
?>