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
        <div class="card-header">Agregar una subsección a <?php echo $nameSec = $_GET["nameSection"]?></div>
        <div class="card-body">
            <form enctype="multipart/form-data" method="POST">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12">
                            <div class="form-label-group">
                                <input type="text" id="seccion" name = "seccion" class="form-control" placeholder="Nombre de la Sección" required = "true">
                                <label for="seccion">Nombre de la Subsección</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12">
                            <div class="form-label-group">
                                <input type="text" id="descripcion" name = "descripcion" class="form-control" placeholder="Descripción de la Sección" required = "true">
                                <label for="descripcion">Descripción de la Subsección</label>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="btn btn-primary btn-block" name = "agregar" href="sections.php?id=<?php echo $id = $_GET["id"]?>&name=<?php echo $name = $_GET["name"]?>">Agregar Sección</button>
            </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="sections.php?id=<?php echo $id = $_GET["id"]?>&name=<?php echo $name = $_GET["name"]?>">Regresar</a>
          </div>
        </div>
      </div>
    </div>

    <?php

    if (isset($_POST['agregar'])) {

        require_once("lib/db_connect.php");
        $db = Conectar::conexion();

        $carrera = $_GET['name'];
        $id = $_GET['id'];
        $idSeccion = $_GET['idSection'];

        $seccion = $_POST['seccion'];
        $descripcion = $_POST['descripcion'];

        //$imagen= $_POST['imagen'];

        $sql = 'CALL crearSubSeccion(?,?,?)';
        $stmt = $db->prepare($sql);
        $stmt->bindParam(1, $idSeccion, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 11);
        $stmt->bindParam(2, $seccion, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
        $stmt->bindParam(3, $descripcion, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 1000);
        //$stmt->bindParam(4, $imagen, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 200);
        $stmt->execute();
        

      

      /*echo ' <script language="javascript">
                             alert("La sección se agregó con éxito.");
                             window.location="addSection.php";
                        </script>';*/


      echo  '<script language="javascript">
                             alert("La sección se agregó con éxito.");
                             </script>';
    
    header('location: addSubsection.php?id='.$id.'&idSection='.$idSeccion.'&name='.$carrera.'&nameSection='.$nameSec);
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
