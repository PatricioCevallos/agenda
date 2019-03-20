<?php

    require('conector.php');

    $con = new ConectorBD();

    if($con->initConexion('agenda')=="OK")
    {
        $data['nombre']='"Milton"';
        $data['apellido']='"Cevallos"';

        $hash = password_hash('789456', PASSWORD_DEFAULT);

        $data['username']= '"MiltonC@gmail.com"';
        $data['password']= '"'.$hash.'"';
        $data['fecnac']='"1981-09-06"';

        if($con->insertData('usuarios', $data))
        {
            echo " El Usuario se a registrado con exito ";
        }
        else
            echo " Se a Producido un Error al intentar registrar usuario ";

        //////
        $data['nombre']='"Andres"';
        $data['apellido']='"Tito"';

        $hash = password_hash('12345', PASSWORD_DEFAULT);

        $data['username']= '"AndreT@gmail.com"';
        $data['password']= '"'.$hash.'"';
        $data['fecnac']='"1985-05-12"';

        if($con->insertData('usuarios', $data))
        {
            echo " El Usuario se a registrado con exito ";
        }
        else
            echo " Se a Producido un Error al intentar registrar usuario ";
        /////
        $data['nombre']='"Silvana"';
        $data['apellido']='"Cevallos"';

        $hash = password_hash('85213', PASSWORD_DEFAULT);

        $data['username']= '"SilviC@gmail"';
        $data['password']= '"'.$hash.'"';
        $data['fecnac']='"1987-10-10"';

        if($con->insertData('usuarios', $data))
        {
            echo " El Usuario se a registrado con exito ";
        }
        else
            echo " Se a Producido un Error al intentar registrar usuario ";
    }


 ?>
