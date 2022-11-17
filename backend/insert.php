<?php

    require ('database.php');

    $titulo = $_POST["titulo"];
    $descricao = $_POST["descricao"];
    $categoria = $_POST["categoria"];
    $capa = $_POST["capa"];
    $classificacao = $_POST["classificacao"];



    try {
        $stmt = $conn->prepare("INSERT INTO producoes (titulo, descricao, categoria, capa, classificacao)
        VALUES (:titulo, :descricao, :categoria, :capa, :classificacao)");
        $stmt->bindParam(':titulo', $titulo);
        $stmt->bindParam(':descricao', $descricao);
        $stmt->bindParam(':categoria', $categoria);
        $stmt->bindParam(':capa', $capa);
        $stmt->bindParam(':classificacao', $classificacao);

        $stmt->execute();
        $id = $conn->lastInsertId();

        $result["success"]["message"] = "Cadastrado com sucesso!";

        $result["data"]["id"] = $id;
        $result["data"]["titulo"] = $titulo;
        $result["data"]["descricao"] = $descricao;
        $result["data"]["categoria"] = $categoria;
        $result["data"]["capa"] = $capa;
        $result["data"]["classificacao"] = $classificacao;

        header('Content-ype: text/json');
        echo json_encode($result);

    } catch (\PDOException $e) {
        echo "Conection failed: " . $e->getMessage();
        }
?>