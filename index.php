<?php
/* Se inicia la sesión */
session_start();

/* Se selecciona uno u otro según sea el caso */
if (empty($_SESSION['k_username'])) {
        
    include('login.php');
    


} elseif (!empty($_SESSION['k_username'])) {
  
    /* luego de iniciar la sesión */
    include('inicio.php');
}
?>