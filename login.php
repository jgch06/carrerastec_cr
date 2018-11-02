<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Inicio Sesión</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css"  rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Inicio Sesión</div>
        <div class="card-body">
          <form method="post">
            <div class="form-group">
              <div class="form-label-group">
                <input type="input" id="inputEmail" name = "usuario" class="form-control" placeholder="Nombre de usuario" required="required" autofocus="autofocus">
                <label for="inputEmail">Usuario</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" name = "password" class="form-control" placeholder="Contraseña" required="required">
                <label for="inputPassword">Contraseña</label>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Recordar Contraseña
                </label>
              </div>
            </div>
            
            <button class="btn btn-primary btn-block" name = "ingresar">Login</button>
          </form>
          <!--<div class="text-center">
            <a class="d-block small mt-3" href="register.php">Register an Account</a>
            <a class="d-block small" href="forgot-password.php">Forgot Password?</a>
          </div>-->
        </div>
      </div>
    </div>


    <?php

      if (isset($_POST['ingresar'])) {
        $nombreUsuario = $_POST['usuario'];
        $password = $_POST['password'];

        require_once("lib/db_connect.php");
        $db = Conectar::conexion();
        $resultado = array();

        $sql = 'CALL validarIngreso(?,?)';
        $stmt = $db->prepare($sql);
        $stmt->bindParam(1, $nombreUsuario, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
        $stmt->bindParam(2, $password,  PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
        $stmt->execute();
        
        $resultado = $stmt->fetchAll();
        
        if(count($resultado) == 1){
          $_SESSION['k_username'] = $nombreUsuario;
          header('location: index.php');

        }

        else{
          $_SESSION['k_username']  = "";
          echo ' <script language="javascript">
                             alert("El usuario o la contraseña está incorrecta.");
                             window.location="index.php";
                        </script>';
        }
        
      }

    ?>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.compatibility.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

  </body>

</html>
