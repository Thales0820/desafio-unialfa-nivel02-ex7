<!DOCTYPE html>
<html lang="pt_br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa</title>
    <link rel="shortcut icon" href="https://s4.static.brasilescola.uol.com.br/exercicios/2022/11/mapa-brasil.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<div class="container">
<h1 class="text-center">Listando as Regiões do Brasil</h1>
<table class="table">
    <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Região</th>
            <th scope="col">Descrição</th>
            <th scope="col">Status</th>
        </tr>   
    </thead>
    <tbody>
    <?php 
        require "./config.php";

        $sql = "select * from pesquisa";
        $consulta = $pdo->prepare($sql);
        $consulta->execute();

        while($dados = $consulta->fetch(PDO::FETCH_OBJ)){
    ?>
         <tr>
            <th scope="row"><?=$dados->ID?></th>
            <td><?=$dados->regiao?></td>
            <td><?=$dados->descricao?></td>
            <td><?=$dados->status?></td>
        </tr>
    <?php
        }
    ?>
    </tbody>
</table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</body>
</html>