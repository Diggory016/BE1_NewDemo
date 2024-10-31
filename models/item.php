<?php
class item extends Db{
    public function getAllItems(){
        $sql = self::$connection->prepare("SELECT * FROM `Items`");
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_assoc();
        return $items;
    }
}