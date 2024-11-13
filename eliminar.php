<?php include 'conexion.php'; ?>

<?php
$id = $_REQUEST['id'];
$conexion->query("DELETE FROM transacciones WHERE id=$id");
header("Location: index.php");
?>
