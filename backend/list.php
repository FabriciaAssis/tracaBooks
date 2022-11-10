<?php

    require ('database.php');

    try {
        $stmt = $conn->prepare("SELECT id, titulo, categoria, capa FROM producoes;");
        $stmt->execute();

        $producoes = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $result["success"]["message"] = "Cadastrado com sucesso!";
        $result["data"] = $producoes;

        header('Content-ype: text/json');
        echo json_encode($result);

    } catch (\PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
        }
?>