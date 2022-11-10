<?php

    require ('database.php');

    $id = $_POST["id"];
    $titulo = $_POST["titulo"];
    $descricao = $_POST["descricao"];
    $categoria = $_POST["categoria"];
    $capa = $_POST["capa"];
    $classificacao = $_POST["classificacao"];

    try {
        $stmt = $conn->prepare("UPDATE INTO producoes SET titulo = :titulo, descricao = :descricao, categoria = :categoria, capa = :capa, classificacao = :classificacao WHERE id = :id");
        
        $stmt->bindParam(':id', $id);
        $stmt->bindParam(':titulo', $titulo);
        $stmt->bindParam(':descricao', $descricao);
        $stmt->bindParam(':categoria', $categoria);
        $stmt->bindParam(':capa', $capa);
        $stmt->bindParam(':classificacao', $classificacao);

        $stmt->execute();

        $count = $stmt->rowCount();

        if($count == 1){
            $result["success"]["message"] = "Cadastrado com sucesso!";

            $result["data"]["id"] = $id;
            $result["data"]["titulo"] = $titulo;
            $result["data"]["descricao"] = $descricao;
            $result["data"]["categoria"] = $categoria;
            $result["data"]["capa"] = $capa;
            $result["data"]["classificacao"] = $classificacao;

            header('Content-ype: text/json');
            echo json_encode($result);
        }else{
            $result["error"]["message"] = "ID: $id não encontrado!";
        }

        header('Content-Type: text/json');
        echo json_encode($result);

    } catch (\PDOException $e) {
        echo "Conection failed: " . $e->getMessage();
        }
?>