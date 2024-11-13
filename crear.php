<?php
include 'conexion.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fecha_hora = date("Y-m-d H:i:s");
    $tipo_vehiculo = $_POST['tipo_vehiculo'];
    $monto = $_POST['monto'];
    $placa = $_POST['placa'];
    $metodo_pago = $_POST['metodo_pago'];

    $sql = "INSERT INTO `transacciones`( `fecha_hora`, `tipo_vehiculo`, `monto`, `numero_placa`, `metodo_pago`) 
            VALUES ('$fecha_hora', '$tipo_vehiculo', '$monto', '$placa', '$metodo_pago')";
mysqli_query($conexion, $sql);

/*echo"
    <script>
        window.location.replace('index.php');
    <script>
";*/
}
?>

<form method="post" action="crear.php">
    Tipo de Vehículo: <input type="text" name="tipo_vehiculo" required><br>
    Monto: <input type="text" name="monto" required><br>
    Placa: <input type="text" name="placa" required><br>
    Método de Pago: <input type="text" name="metodo_pago" required><br>
    <input type="submit" value="Registrar">
</form>