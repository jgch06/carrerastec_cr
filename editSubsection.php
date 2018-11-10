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
        <div class="card-header">Editar: <?php echo $nameSub = $_GET["nameSubsection"]?></div>
        <div class="card-body">
            <form enctype="multipart/form-data" method="POST">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12">
                            <div class="form-label-group">
                                <input type="text" id="subseccion" name = "subseccion" class="form-control" placeholder="Texto de la subsección">
                                <label for="subseccion">Texto de la subsección</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">

                </div>
                <div class="form-group">

                </div>
                <button class="btn btn-primary btn-block" name = "editar" href="subsections.php?id=<?php echo $fila["idSection"]?>&name=<?php echo $fila["name"]?>">Aceptar</button>
            </form>
            <div class="text-center">
                <a class="d-block small mt-3" href="subsections.php?id=<?php echo $_GET["id"]?>&idSection=<?php echo $_GET["idSection"]?>&name=<?php echo $_GET["name"]?>&nameSection=<?php echo $_GET["nameSection"]?>">Regresar</a>
            </div>
        </div>
    </div>
</div>

<?php

if (isset($_POST['editar'])) {

    require_once("lib/db_connect.php");
    $db = Conectar::conexion();


    $id = $_GET["id"];
    $idSubsection = $_GET["idSubsection"];

    $subseccion = $_POST['subseccion'];
    $nameSubsection = $_GET["nameSubsection"];

    $sql = 'CALL editarSubSeccion(?,?)';
    $stmt = $db->prepare($sql);
    $stmt->bindParam(1, $idSubsection, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 11);
    $stmt->bindParam(2, $subseccion, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 1000);
    $stmt->execute();

    
    $name = $_GET['name'];
    $idSection = $_GET['idSection'];
    $nameSection = $_GET['nameSection'];

    echo ' <script language="javascript">
                             alert("La carrera se editó con éxito.");
                        </script>';

    header('location: editSubsection.php?id='.$id.'&name='.$name.'&idSection='.$idSection.'&nameSection='.$nameSection.'&idSubsection='.$idSubsection.'&nameSubsection='.$nameSubsection);
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
