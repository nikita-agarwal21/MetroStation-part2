<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Required Core stylesheet -->
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.core.min.css">

    <!-- Optional Theme stylesheet -->
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.theme.min.css">


    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/87609a89cc.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


        <script src="https://code.jquery.com/jquery-1.10.2.js">
        			</script>
              <script>
    $(function(){
      $('#header').load('navigator.html');
    });
    </script>
    <script>
    $(function(){
    $('#footer').load('footer.html');
    });
    </script>




</head>
  <title>METRO GUIDE</title>
<body style="background-color:lightblue">


  <div id='header'></div>
<br><br>
      <form name="resume form" action="ContactDemo.php" method='post' >
      <div class="container" style="background-color: aqua;">
        <div class="form-group">

   <br><br>

  <label for="name">name:</label>
    <input type="text" class="form-control"  name="name" placeholder="enter name"/>

</div>
<div class="form-group">

<br><br>

<label for="email">email:</label>
<input type="email" class="form-control" name="email" placeholder="enter email id"/>

</div>
<div class="form-group">
   <label for="gender">gender:</label>
   <div class=" form-check">
   <label class="form-check-label">
    <input type="radio"class="form-check-input" name="choice" value="m"/>male

   </label></div>
    <div class=" form-check">
        <label class="form-check-label"><input type ="radio"class="form-check-input" name="choice" value='f'/>female
</label>
</div></div>

<div class="form-group">
    <label for="city">city:</label>


    <select class="form-control-lg" name="city">
        <option vaue='bang'>bangalore</option>
        <option value='delhi'>delhi</option>
        <option value='mumbai'>mumbai</option>

    </select>

</div>
<br>
<div class="form-group">
    <label for="feedback">feedback:</label>
    <textarea class="form-control" rows="5" id="feedback" name='feedback'></textarea>
  </div>
    <button class="btn btn-primary" type="submit">submit</button>
    <br><br>
</div>
</div>
</form>
<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
  $name=$_POST['name'];
  $email=$_POST['email'];
  $gender=$_POST['choice'];
  $city=$_POST['city'];
  $feedback=$_POST['feedback'];

require_once 'DatabaseUtilities.php';

  $conn=DatabaseUtilities::getConnection();

  $sql="insert into `contacts`(`name`,`email`,`gender`,`city`,`message`,`time`) values ('$name','$email','$gender','$city','$feedback',current_timestamp())";
  $result=mysqli_query($conn,$sql);


if($result)
{?>

  <div class="container p-5">
     <div class="row no-gutters">
        <div class="col-lg-6 col-md-12 m-auto">
          <div class="alert alert-sucess fade show " role="alert" >

                 <button type="button" class="close" data-dismiss="alert" aria-label="close">
                 <span aria-hidden="true">&times;</span>
                 </button>
                  <div class='p-3 mb-2 bg-success text-white'>  <strong>Sucess</strong> submitted sucessfully</div>
          </div>
        </div>
      </div>
  </div>

<?php
}
else{
  echo 'error'.mysqli_error($conn);
}
}?>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
