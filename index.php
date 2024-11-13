<?php
include 'conexion.php';

$sql = "SELECT * FROM transacciones ORDER BY fecha_hora DESC";
$result = $conexion->query($sql);
?>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Fecha y Hora</th>
        <th>Tipo de Vehículo</th>
        <th>Monto</th>
        <th>Placa</th>
        <th>Método de Pago</th>
        <th>Acciones</th>
    </tr>
    <?php while ($row = $result->fetch_assoc()) { ?>
    <tr>
        <td><?php echo $row['id']; ?></td>
        <td><?php echo $row['fecha_hora']; ?></td>
        <td><?php echo $row['tipo_vehiculo']; ?></td>
        <td><?php echo $row['monto']; ?></td>
        <td><?php echo $row['numero_placa']; ?></td>
        <td><?php echo $row['metodo_pago']; ?></td>
        <td>
            <a href="editar.php?id=<?php echo $row['id']; ?>">Editar</a> | 
            <a href="eliminar.php?id=<?php echo $row['id']; ?>">Eliminar</a>
        </td>
    </tr>
    <?php } ?>
</table>

<table></table>

