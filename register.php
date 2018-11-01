<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Register</title>
    
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
      <div class="card card-register mx-auto mt-5">
        <div class="card-header">Registrar una carrera</div>
        <div class="card-body">
          <form enctype="multipart/form-data" method="POST">
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="firstName" name = "carrera" class="form-control" placeholder="Nombre de la carrera" required="required" autofocus="autofocus">
                    <label for="firstName">Carrera</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="lastName" name = "escuela" class="form-control" placeholder="Nombre de la escuela" required="required">
                    <label for="lastName">Escuela</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <label for="avatar">Imagen de la carrera:</label>
                <br><br>
                <input type="file"
               id="file" name="file"
               accept="image/png"/>



                <!--<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required">
                <label for="file">Subir imagen</label>-->
              </div>
            </div>
            <!--<div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                    <label for="inputPassword">Password</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                    <label for="confirmPassword">Confirm password</label>
                  </div>
                </div>
              </div>
            </div>-->
            <button class="btn btn-primary btn-block" name = "registrar" href="inicio.php">Registrar</button>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="inicio.php">Regresar</a>
            <!--<a class="d-block small" href="edit.php">Forgot Password?</a>-->
          </div>
        </div>
      </div>
    </div>

    <?php

    if (isset($_POST['registrar'])) {

      require_once("lib/db_connect.php");
      $db = Conectar::conexion();

      $carrera = $_POST['carrera'];
      $escuela = $_POST['escuela'];

      echo $carrera;
      echo $escuela;

      $direccion = "http://carrerastec-cr.herokuapp.com/web_services/AMCareer/Images/" . $carrera."/";
      $url = $direccion . $_FILES['file']['name'];

      echo "-";
      echo $direccion;
      echo "-";
      echo $url;

      if (move_uploaded_file($_FILES['file']['name'], $url)){
          $sql = 'CALL agregarCarrera(?,?,?)';
          $stmt = $db->prepare($sql);
          $stmt->bindParam(1, $carrera, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
          $stmt->bindParam(2, $escuela, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
          $stmt->bindParam(3, $url, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
          $stmt->execute();

          /*echo ' <script language="javascript">
                             alert("La carrera se agregó con éxito.");
                             window.location="register.php";
                        </script>';*/

      } else {
          /*echo ' <script language="javascript">
                             alert("Error en la imagen.");
                             window.location="register.php";
                        </script>';*/
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
