<?php 

class data
{
    const HOST='localhost';
    const USER='root';
    const PASS='root';
    const DB='dbSchoolMark';
    const PORT='3306';
    public $m_cnx;

    public function __construct() {
            $this->$m_cnx = new mysqli(self::HOST,self::USER,self::PASS,self::DB,self::PORT);
            return true;
    }

    public function __destruct() {
        //$this->$m_cnx->close();
    }
}

?>