    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <meta name="author" content="Khalil SLEIMI">
        <meta name="description" content="Secure-TT employee login and registration">
        <title>Secure-TT Admin login and registration</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">

        <!-- Responsive -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap-responsive.css" rel="stylesheet">

        <!--Custom Styles-->
        <link href="css/style.css" rel="stylesheet">

        <!--Icon home Screen Touch -->
        <link rel="apple-touch-icon-precomposed" href="icon.png">


    </head>


    <body>



        <div class="container-fluid" id="mainwrapper">
            <div class="container-fluid" id="content">
                <h1>Secure-TT Admin login - Incomplete!!!!!!!!!!!!! Work in Progress</h1>
                <h4>This is a secure login and registration form for Tunisie Telecom Admin</h4>
                <p>This Project is for stock management of TT-FiberOptics.</p>
                <p>Make sure you setup your database correct as written in the settings page:</p>
                <p>/TunisieTelecom/SignInAndSignUp/secure/db_connect.php and set the correct host, username and password of the DB.</p>
                <p><a href="../index.php">User?! (The Username and password are saved in a DB) </a><br>
                    <a href="https://google.com">Tunisie Telecom</a>
                  <p>Login Form</p>

                  <!--LoginForm-->

     

                  

                <div class="row-fluid">
                    <div class="span4 offset3">

                      <form action="secure/process_login.php" method="post" name="login_form" class="form-horizontal">
                          <div class="control-group">
                            <label class="control-label" for="inputEmail">Email</label>
                            <div class="controls">
                              <input type="text" id="email" name="email"placeholder="Email">
                          </div>
                      </div>
                      <div class="control-group">
                        <label class="control-label" for="inputPassword">Password</label>
                        <div class="controls">
                          <input type="password" name="password" id="password" placeholder="Password">
                      </div>
                  </div>
                  <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn" onclick="formhash(this.form, this.form.password);">Sign in</button>
                            <!-- if login failed show this -->
                            <?php if(isset($_GET['error'])) {?>
                              <div class="alert alert-error fade in error">
                            <button type="button" class="close" data-dismiss="alert">x</button>
                            <strong>Ups! That wasn't correct...</strong>
                            </div>
                          <?php }?>   
                    </div>
                </div>
            </form>
        </div><!--/span4-->
    </div><!--/row-fluid-->






<p>Thank you wiki-how for the scripts! <a href="http://www.wikihow.com/Create-a-Secure-Login-Script-in-PHP-and-MySQL">Article</a><p>


    <p>
<ul id="circles">
                <li class="circle"></li>
                <li class="circle"></li>
                <li class="circle"></li>
                <br><a href="http://www.google.com">TunisieTelecom</a>
            </ul>
    </p>


</div><!--/container-fluid-->
</div><!--/container-fluid-->

<!--Scripts-->
<script src="js/jquery-1.8.2.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="secure/sha512.js"></script>
<script src="secure/forms.js"></script>

     
   <script>
   //FADE IN MESSAGES
             
        $(document).ready(function () {
      $(".error").fadeIn("slow");
      $("#success").fadeIn("slow");
    });
    </script>

      <!--GOOGLE ANALYTICS-->
    <script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-38301376-1']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

    </script>

</body>
</html>