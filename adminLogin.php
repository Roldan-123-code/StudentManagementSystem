<?php

    session_start();
    error_reporting(0);
    include('includes/dbconnection.php');

    if(isset($_POST['login']))
    {
        $adminId=$_POST['adminId'];
        // $password=md5($_POST['password']);
        $password=$_POST['password'];
        $password = md5($password);
        $query = mysqli_query($con,"select * from tbladmin where  adminId='$adminId' && password='$password'");
        $count = mysqli_num_rows($query);
        $row = mysqli_fetch_array($query);

        if($count > 0)
        {
            $_SESSION['adminId']=$row['adminId'];
            $_SESSION['emailAddress']=$row['emailAddress'];
            $_SESSION['firstName']=$row['firstName'];
            $_SESSION['lastName']=$row['lastName'];
            $_SESSION['adminTypeId']=$row['adminTypeId'];

            if($_SESSION['adminTypeId'] == 1) // SuperAdministrator
            {
                echo "<script type = \"text/javascript\">
                window.location = (\"superAdmin/index.php\")
                </script>";  
            }

            else if($_SESSION['adminTypeId'] == 2) // Administrator
            {
                echo "<script type = \"text/javascript\">
                window.location = (\"admin/index.php\")
                </script>";  
            }
        }
        else
        {
            $errorMsg = "<div class='alert alert-danger' role='alert'>Invalid Username/Password!</div>";
        }
    }
  ?>

<!doctype html>
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style2.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

</head>
<body class="bg-light">

    <div class="sufee-login d-flex align-content-center flex-wrap">
        
        <div class="container">

            <div class="login-content">
                
                <div class="login-logo">
                    <a href="index.html">
                    </a>
                </div>
                <div class="login-form">
                    <form method="Post" Action="">
                            <?php echo $errorMsg; ?>
                               <strong><h2 align="center">Administrator Login</h2></strong><hr>
                        <div class="form-group">
                            <label>Admin ID</label>
                            <input type="text" name="adminId" Required class="form-control" placeholder="Admin ID">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" Required class="form-control" placeholder="Password">
                        </div>
                        <div class="checkbox">
                           <label class="pull-left">
                                <a href="index.php">Go Back</a>
                            </label>
                            <label class="pull-right">
                                <a href="#">Forgot Password?</a>
                            </label>
                        </div>
                        <br>
						
                        <button type="submit" name="login" class="btn btn-success btn-flat m-b-30 m-t-30">Log in</button>
                    </form>
                </div>
            </div>
        </div>
        
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>
