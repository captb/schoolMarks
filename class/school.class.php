<?php

class school
{
    public $m_nSchoolId;
    public $m_sSchoolName;
    public $m_sSchoolCity;
    public $m_sSchoolDirector;

    public function getListSchool($cnx){
        try {
            $sql    = "select *  from school";
            $qry    = $cnx->query($sql);
            $data   = array();
            if($qry->num_rows>0){
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