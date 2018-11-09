<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Gestor Carreras-TEC</title>
    
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
                        <div class="col-md-12">
                            <div class="form-label-group">
                                <input type="text" id="carrera" name = "carrera" class="form-control" placeholder="Nombre de la carrera" required = "true">
                                <label for="carrera">Nombre de la Carrera</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="imagen" name = "imagen" class="form-control" placeholder="URL de la imagen">
                                <label for="imagen">URL de la imagen</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="escuela" name = "escuela" class="form-control" placeholder="Escuela de la Carrera" required = "true">
                                <label for="escuela">Escuela de la Carrera</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="descripcion" name = "descripcion" class="form-control" placeholder="Descripción de la carrera">
                                <label for="descripcion">Descripción de la carrera</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="video" name = "video" class="form-control" placeholder="URL del vídeo">
                                <label for="video">URL del vídeo</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="mision" name = "mision" class="form-control" placeholder="Misión de la carrera">
                                <label for="mision">Misión de la carrera</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="vision" name = "vision" class="form-control" placeholder="Visión de la carrera">
                                <label for="vision">Visión de la carrera</label>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="btn btn-primary btn-block" name = "registrar" href="inicio.php">Registrar</button>
            </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="inicio.php">Regresar</a>
          </div>
        </div>
      </div>
    </div>

    <?php

    if (isset($_POST['registrar'])) {

      require_once("lib/db_connect.php");
      $db = Conectar::conexion();

      $carrera = $_POST['carrera'];
      $imagen = $_POST['imagen'];
      $escuela = $_POST['escuela'];

      $descripcion = $_POST['descripcion'];
      $video = $_POST['video'];
      $vision = $_POST['vision'];
      $mision = $_POST['mision'];

      $sql = 'CALL agregarCarrera(?,?,?)';
      $stmt = $db->prepare($sql);
      $stmt->bindParam(1, $carrera, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(2, $escuela, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(3, $imagen, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->execute();
        
      
      /*$seccionBienvenida = "Bienvenida";
      $vacio = "";
      $sql = 'CALL crearSeccion(?,?,?,?)';
      $stmt = $db->prepare($sql);
      $stmt->bindParam(1, $carrera, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(2, $seccionBienvenida, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(3, $vacio, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 1000);
      $stmt->bindParam(4, $imagen, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->execute();
     
      $seccionDescripcion = "Descripción de la carrera";
      $imagenDescripcion ="";
      $sql = 'CALL crearSeccion(?,?,?,?)';
      $stmt = $db->prepare($sql);
      $stmt->bindParam(1, $carrera, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(2, $seccionDescripcion, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(3, $descripcion, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 1000);
      $stmt->bindParam(4, $imagenDescripcion, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->execute();
      
      $sql = 'CALL crearSubSeccionVideo(?,?,?)';
      $stmt = $db->prepare($sql);
      $stmt->bindParam(1, $carrera, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(2, $seccionBienvenida, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(3, $video, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->execute();
      
      $seccionMision = "Misión";
      $sql = 'CALL crearSubSeccion(?,?,?,?)';
      $stmt = $db->prepare($sql);
      $stmt->bindParam(1, $carrera, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(2, $seccionBienvenida, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(3, $seccionMision, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(4, $mision, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 1000);
      $stmt->execute();
      
      $seccionVision = "Visión";
      $sql = 'CALL crearSubSeccion(?,?,?,?)';
      $stmt = $db->prepare($sql);
      $stmt->bindParam(1, $carrera, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(2, $seccionBienvenida, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(3, $seccionVision, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
      $stmt->bindParam(4, $vision, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 1000);
      $stmt->execute();*/
        

      echo ' <script language="javascript">
                             alert("La carrera se agregó con éxito.");
                             window.location="register.php";
                        </script>';
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
