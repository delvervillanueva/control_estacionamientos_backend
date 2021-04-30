<?php

if(!defined('BASEPATH')) exit('No direct script access allowed!');

class M_Car extends CI_Model {

    function __construct() {
        parent::__construct();
    }


    public function get() {
        return $this->db->get('cars')->result();
    }

    public function add($placa, $colour, $brand, $class_car) {
        $data = array(
            'placa'     => $placa,
            'brand'      => $brand,
            'class_car'         => $class_car,
            'colour'    => $colour
        );

        return $this->db->insert('cars', $data);
    }


    public function delete($id) {
        $this->db->where('id', $id);
        return $this->db->delete('cars');
    }

    public function edit($id, $placa, $colour, $brand, $class_car) {
        $this->db->where('id', $id);
        return $this->db->update('cars', array(
            'placa'     => $placa,
            'brand'      => $brand,
            'class_car'         => $class_car,
            'colour'    => $colour
        ));
    } 


}