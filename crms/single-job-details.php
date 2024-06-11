<?php
session_start();
error_reporting(0);
include 'connection.php';


if (isset($_POST['button'])) {
 extract($_POST);

 $q="insert into respondent values(null,'$name','$address','$phone','$income','$project')";
 insert($q);
 return redirect('single-job-details.php');
}







?>




<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>August Research || Quantitative & Qualitataive Research || Single Job</title>

    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style6.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
</head>


<body>
    <!-- banner-inner -->
    <div id="demo-1" class="page-content">
        <div class="dotts">
            <div class="header-top">
     <?php include_once('includes/header.php');?>
            </div>
            <!--/banner-info-w3layouts-->
            <div class="banner-info-w3layouts text-center">
            </div>
            <!--//banner-info-w3layouts-->
        </div>
    </div>
  <ol class="breadcrumb justify-content-left">
        <li class="breadcrumb-item">
            <a href="index.php">Home</a>
        </li>
        <li class="breadcrumb-item active">Job Details</li>
    </ol>
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
			<!---728x90--->
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span>Details of</span>Respondent</h3>



                     <fieldset class="formRow">
                      <form method="post">
            <div class="notice-error"></div>
            <div class="formRow--item">
              <label for="first_name" class="formRow--input-wrapper js-inputWrapper">
            Name : <input type="text" name="name" class="formRow--input js-input" id="first_name" required placeholder=" name *">
              </label>
            </div>
            <div class="formRow--item">
              <label for="last_name" class="formRow--input-wrapper js-inputWrapper">
                 Address  : <input type="text" name="address" class="formRow--input js-input" id="last_name" required placeholder="Address *">
              </label>
            </div>

            <div class="formRow--item">
              <label for="phone" class="formRow--input-wrapper js-inputWrapper">
              Phone Number :   <input type="text" name="phone" class="formRow--input js-input" id="phone" required placeholder="Phone number">
              </label>
            </div>
            <div class="formRow--item">
              <label for="preferred_time" class="formRow--input-wrapper js-inputWrapper">
                Income : <input type="text" name="income" class="formRow--input js-input" id="preferred_time" required placeholder="Preferred income (AEDT) *">
              </label>
            </div>

            <div class="formRow--item">
              <label for="company" class="formRow--input-wrapper js-inputWrapper">
                Project Name : 

                <select onchange="myFunction()" id="mySelect">
             
                  <option value="1">Group discussion</option>
                  <option value="2">Mystery Audit</option>
                  <option value="3">Opinion poll</option>
               
                </select>
              </label>
            </div>


                    <div id="showval"></div>

            
            
            <div class="formRow--item">
             <input type="submit" class="btn btn-success" name="button" >
              </label>
            </div>
            </form>
          </fieldset>

    

          <script type="text/javascript">
  // Get the select element
var select = document.getElementById("mySelect");
var div = document.getElementById("showval");

// Listen for the change event
select.addEventListener("change", function() {
  // Get the selected value
  var opt = this.value;


  // Use the Fetch API to send the data to the PHP script
  fetch("attendexam.php", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded"
    },
    body: "opt=" + opt
  })
    .then(response => response.text())
    .then(data => {

      arr = JSON.parse(data)
      div.innerText=""
      var sample = ""
      var i=1
      var j =1
      arr.forEach(e => {


        
          var id = e.question_id
        // var sample = e.question
          var heading = document.createElement("h5")
          var span = document.createElement("span")
          var inp = document.createElement("input")
      
          inp.setAttribute("type","radio")
          inp.setAttribute("name","correctopt"+i+j)


          var label = document.createElement("label")
          label.innerText=e.option_description
          span.appendChild(inp)
          span.appendChild(label)
    

          if (sample == e.question){

            j++
            console.log("worker");

          }else{
            j=1
            heading.innerText=e.question
            div.appendChild(heading)
            sample=e.question

          var hidden = document.createElement("input")
          hidden.setAttribute("type","text")
          hidden.setAttribute("name","valtxt"+i)
          hidden.value = id

          // span.appendChild(hidden)

            
          }

          console.log("Question.....",e.question);
          console.log("Question.....",typeof(e.question));
          console.log("sample.......",sample);
          console.log("Question.....",typeof(sample));
          i++
          
          div.appendChild(span)
          console.log(e);
      });


    })
    .catch(error => {
      console.error(error);
    });
});
</script>





					<!---728x90--->
         <!--  deleted -->
           <!-- <?php
 $jid=$_GET['viewid'];
$ret=mysqli_query($con,"select tblcompany.ID as cid,tblcompany.CompanyName,tblvacancy.ID as vid,tblvacancy.JobTitle,tblvacancy.JobpostingDate,tblvacancy.MonthlySalary,tblvacancy.JobDescriptions,tblvacancy.JobLocation,tblvacancy.NoofOpenings,tblvacancy.ApplyDate,tblvacancy.LastDate from tblcompany join  tblvacancy on tblcompany.ID=tblvacancy.CompanyID where tblvacancy.ID='$jid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {
?>
<table class="table table-bordered table-hover data-tables">
                                    <tr>
  <th>Job Title</th>
  <td><?php  echo $row['JobTitle'];?></td>
  </tr>
  <tr>
  <th>Company Name</th>
  <td><?php  echo $row['CompanyName'];?></td>
  </tr>
  <tr>
  <th>Monthly In-hand Salary</th>
  <td><?php  echo $row['MonthlySalary'];?></td>
  </tr>
   <tr>
  <th>Job Descriptions</th>
  <td><?php  echo $row['JobDescriptions'];?></td>
  </tr>
  <tr>
  <th>Job Location</th>
  <td><?php  echo $row['JobLocation'];?></td>
  </tr>

  <tr>
  <th>No of Opening</th>
  <td><?php  echo $row['NoofOpenings'];?></td>
  </tr>
  <tr>
  <th>Apply Date</th>
  <td><?php  echo $row['ApplyDate'];?></td>
  </tr>

  <tr>
  <th>Last Date</th>
  <td><?php  echo $row['LastDate'];?></td>
  </tr>

</table>

<?php } ?>
                                <?php if($_SESSION['crmsuid']==""){?>

<a href="user/login.php" class="aply-btn ">Appy Now</a>
                                                <?php } else { ?>
<a href="user/view-vacancy-details.php?viewid=<?php echo  $jid;?>" class="aply-btn ">Appy Now</a>
                                                <?php } ?>
            </div>
        </div>
    </section>
 --> <!-- deleted -->
    <!--footer -->
<?php include_once('includes/footer.php');?>
    <!-- //footer -->


    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!--//slider-->
    <!--search jQuery-->
    <script src="js/classie-search.js"></script>
    <script src="js/demo1-search.js"></script>
    <!--//search jQuery-->

    <script>
        $(document).ready(function() {
            $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->
    <!-- password-script -->
    <script>
        window.onload = function() {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- //password-script -->
    <!-- //js -->
    <script src="js/bootstrap.js"></script>
    <!--/ start-smoth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear'
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->


</body>

</html>
