<?php

$db_host="localhost";
$db_name="test";
$db_user="root";
$db_pass="";

$options = array(
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
);

try {
    $db=new PDO("mysql:host={$db_host};dbname={$db_name}", $db_user, $db_pass, $options );
} catch (PDOException $e) {
     echo $db->debugDumpParams(); die();
}

if ($_GET['link']){
    $token = substr(md5(time()), 0, 6);
    $sql=$db->prepare("select id from link where token = ?");
    $sql->execute(array($token));
    if ($sql->rowCount == 0){
        $sql=$db->prepare(
            "INSERT INTO link SET
                    link = ?,
                    token = ?");
        $sql->execute(array($_GET['link'], $token));
    }
}



$sql=$db->prepare("select link, token from link");
try {
    $sql->execute();
} catch (PDOException $e) {
    echo $e->getMessage();
}

echo "<form>
<input type='text' name='link'>
<button>Добавить</button>
</form>";

while($res = $sql->fetch()) {
    echo $res['link']." - <a target = '_blank' href='".$res['link']."'>".$res['token']."</a><br>";
}








