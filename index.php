<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

  <script type="text/javascript" src="assets/js/jquery-2.2.3.min.js"></script>
  <style type="text/css">
    body{
      background-color: #ddd;>                                                                                          
    }
    .judul{
      margin: 100px 0 20px 0;
      color: black;
      text-shadow: 2px 2px 2px black;
      font-family: serif;
      font-size: 50px;
    }
    .bungkus{
      min-height: 350px;
      width: 80%;
      margin: 0 auto 0 auto;
      background: linear-gradient(45deg, #d8cd0e,#fff);
      border-radius: 5px;
      padding: 20px;
      box-shadow: 0px 0px 10px 2px white;
    }
    .img-login{
      margin: 20px 0;
      border: 2px solid gray;
    }
    .login{
      padding: 0px 20px;
    }
    label{
      color: black;
    }
    .vcenter {
      margin-top:100px;
      display: inline-block;
      vertical-align: middle;
      float: none;
    }
    .bg{
    /* background-image: url('assets/img/bg.jpg'); */
    background-size: cover;
    background-repeat: no-repeat;

    }
  </style>
</head>
<body class="bg">
  <div class="row text-center">
    <div class="col-md-3 col-sm-12 vcenter">
      <div class="bungkus text-center">
        <center><img src="assets/img/logo.png" width="150px" height="150px" style="color:black" class="img-login img-thumbnail"></center>        
        <form action="proses_login.php" method="POST" class="login">
          <div class="form-group">
            <label for="username">USERNAME</label>
            <input type="text" name="username" id="username" class="form-control";>
          </div>
          <div class="form-group">
            <label for="password">PASSWORD</label>
            <input type="password" name="password" id="password" class="form-control">
          </div>
          <div class="form-group">
            <input type="submit" name="submit" value="Login" class="btn btn-info">
          </div>
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="assets/js/jquery-2.2.3.min.js"></script>
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
</body>
</html>
