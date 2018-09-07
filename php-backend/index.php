<?php

require_once 'vendor/autoload.php';

$app = new \Slim\Slim();

$db = new mysqli('localhost', 'root', '', 'db_docs');


$app ->get("/hola", function () use($app){
    echo "hola mundo";
});



$app->post("/products", function () use($app, $db){
   $json = $app->request->post('json');

   $data = json_decode($json, true);

    if(!isset($data['codigo'])){
        $data['codigo']=null;
    }
    if(!isset($data['version'])){
        $data['version']=null;
    }
    if(!isset($data['titulo'])){
        $data['titulo']=null;
    }
    if(!isset($data['proposito'])){
        $data['proposito']=null;
    }
    if(!isset($data['alcance'])){
        $data['alcance']=null;
    }
    if(!isset($data['respon_funcion'])){
        $data['respon_funcion']=null;
    }
    if(!isset($data['regis_x_actividad'])){
        $data['regis_x_actividad']=null;
    }
    if(!isset($data['identi_cambios'])){
        $data['identi_cambios']=null;
    }
    if(!isset($data['fecha_revi'])){
        $data['fecha_revi']=null;
    }
    if(!isset($data['aprobacion'])){
        $data['aprobacion']=null;
    }
    if(!isset($data['descri_actividades'])){
        $data['descri_actividades']=null;
    }
    if(!isset($data['anexos'])){
        $data['anexos']=null;
    }

    $query = "INSERT INTO tab_document VALUES (".
        "'{$data['codigo']}',".
        "'{$data['version']}',".
        "'{$data['titulo']}',".
        "'{$data['proposito']}',".
        "'{$data['alcance']}',".
        "'{$data['respon_funcion']}',".
        "'{$data['regis_x_actividad']}',".
        "'{$data['identi_cambios']}',".
        "'{$data['fecha_revi']}',".
        "'{$data['aprobacion']}',".
        "'{$data['descri_actividades']}',".
        "'{$data['anexos']}'".
        ");";


    $insert = $db->query($query);

    $result = array(
        'status' => 'error',
        'code' => 404,
        'message' => 'no ingresado correctamente'
    );

    if($insert){
        $result = array(
            'status' => 'success',
            'code' => 200,
            'message' => 'producto insertado'
        );
    }

    echo json_encode($result);
    var_dump($insert);

});

$app->run();