<?php include 'adminheader.php';
extract($_GET);
$date=date("y/m/d");
if (isset($_POST['add']))
{
	extract($_POST);
	$dt=$dt;
	$q="update `service` set status='accept' where service_id='$service_id'";
	update($q);
	echo "$q";
	alert("accepted");


	$q1="SELECT *,CONCAT(`firstname`,'',`lastname`) AS cname,service.amount AS samount FROM  `service` INNER JOIN `user` USING(user_id) INNER JOIN `machine` USING(machine_id)";
	$res=select($q1);

		try{

	
	$email=$key['email'];
	$dt=$dt;

	
	 require("class.phpmailer.php");

$mail = new PHPMailer();
$mail->IsSMTP(); 
$mail->SMTPDebug = 1;
$mail->SMTPAuth = true;
$mail->SMTPSecure = 'tls'; 
$mail->Host = "smtp.gmail.com";
$mail->Port = 587;
$mail->Username = "projectsriss2020@gmail.com"; 
$mail->Password = "messageforall";


$mail->From = "Councillor App Account";
$mail->FromName = "projectsriss2020@gmail.com"; 
$mail->AddAddress($email);
$mail->Subject ="Request Accepted";
$mail->Body    = str_replace("<br />", "\n", nl2br("Details \r Pickup Date : $dt \r Request Accepted succesfully ....! We will contact you soon...!"));
$mail->AltBody = "";

if(!$mail->Send())
{
	
   ?>
    <script type="text/javascript">
	alert("mail not  send");
	// window.location="usercheckandverifyotp.php";
	</script>
   
   <?php
}
else
{
	echo ' send';
	?>
    <script type="text/javascript">
	alert("mail send succesfully!!!!!!!Check your email ");
		window.location="adminhome.php";
	</script>
   
   <?php
}
	}catch (Exception $e)
	
{
	echo $e;
}
// }
 
/////////////////////////////////////////////////////////mail////////////////////////////////////// 



        	    
        // else
        // {
        // 	alert("Time Occupied");
        // }
		// return redirect('adminmanageschedule.php');
return redirect("adminviewrequest.php");
}




?>


       <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
           

            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive" src="img/1920x1080/01.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h1 class="carousel-title"></h1>
                            </div>



          		<form method="post" style="margin-right: -10em;color: white;margin-top: -10em" >
       
<center>

	
		<br><br><br><br>
			<h1 style="color: white"> Select Date</h1>

		<table class="table" style="width: 500px;">
				<tr>
				<th>Date</th>
				<td><input type="date" name="dt"  min="<?php date("dd-mm-Y"); ?>" class="form-control" ></td>
			</tr>
			
			
			<tr>
				<td align="center" colspan="2"><input type="submit" name="add" class="btn btn-success" 	value="ADD"></td>
			</tr>
		</table>

	</form>

</center>
 

<?php include 'footer.php' ?>