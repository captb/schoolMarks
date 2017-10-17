<?php
/**
 * Created by PhpStorm.
 * User: lmirabile
 * Date: 28/04/2017
 * Time: 10:24
 */
class AdaptateurPDO
//blackbox reuse, adaptateur de PDO, cet adaptateur est un singleton. Garanti l'unicité de la connexion
{
    // Instance de la classe PDO
    private $PDOInstance = null;
    //Instance de la classe AdaptateurPDO
    private static $instance = null;
    const DEFAULT_SQL_DTB  = 'captbfrbphdev';
    const DEFAULT_SQL_HOST = 'captbfrbphdev.mysql.db';
    const DEFAULT_SQL_USER = 'captbfrbphdev';
    const DEFAULT_SQL_PASS = 'KisJH28971th';
    private function __construct()
    {
        try {
            $this->PDOInstance = new PDO('mysql:dbname=' . self::DEFAULT_SQL_DTB . ';host=' . self::DEFAULT_SQL_HOST,
                self::DEFAULT_SQL_USER, self::DEFAULT_SQL_PASS, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        }
        catch (Exception $e)
        {
            die('Erreur : ' . $e->getMessage());
        }
    }
    public static function getInstance()
    {
        if(is_null(self::$instance))
        {
            self::$instance = new AdaptateurPDO();
        }
        return self::$instance;
    }
    public function prepare($req)//preparer une requete
    {
        return $this->PDOInstance->prepare($req);
    }
    public function query($req)//executer une requete, retourne un objet PDOStatement itérable qui contient les données
    {
        return $this->PDOInstance->query($req);
    }
    public function exec($req)//executer une requete, retourne le nombre de modifications, de "lignes" ajoutés/...
    {
        return $this->PDOInstance->exec($req);
    }
    public function lastInsertId()
    {
        return $this->PDOInstance->lastInsertId();
    }
    public function beginTransaction()
    {
        return $this->PDOInstance->beginTransaction();
    }
    public function commit()
    {
        return $this->PDOInstance->commit();
    }
    public function rollback()
    {
        return $this->PDOInstance->rollback();
    }
}