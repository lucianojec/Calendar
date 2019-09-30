<?php
session_start();
include_once './conexao.php';

$id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
if(!empty($id)){
    $qry_delete = "DELETE FROM events WHERE id='$id'";    
    $delete_event = $conn->prepare($qry_delete);

    if($delete_event->execute()){
        $_SESSION['msg'] = "<div class='alert alert-success' role='alert'>Evento excluído com sucesso $id!<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
        header("Location: index.php");
    }else{

        $_SESSION['msg'] = "<div class='alert alert-danger' role='alert'>Erro ao excluír evento $id $qry_delete !<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
        header("Location: index.php");
    }
}else{  
    $_SESSION['msg'] = "<div class='alert alert-danger' role='alert'>É necessário selecionar um evento $id!<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
    header("Location: index.php");
}