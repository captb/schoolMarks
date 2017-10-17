<?php

class student 
{
    public $m_nStudentId;
    public $m_sStudentFirstname;
    public $m_sStudentLastname;

    public function getListStudent($cnx){
        try {
            $sql = 'select * from student';
            $qry = $cnx->query($sql);
            $data = array();
            if($qry->num_rows()>0){
                while($row=$qry->fetch_object()){
                    $data[]=$row;
                }
            } else {
                $data[]=null;
            }
            return json_encode($data);
        } 
        catch (Exception $e) {
            return '';
        }
    }
}

?>