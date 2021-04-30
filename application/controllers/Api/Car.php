<?php
error_reporting(E_ALL);
defined('BASEPATH') OR exit('No direct script access allowed!');

class Car extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('M_Car', 'car');
    }


    public function add() {
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Headers: *');

        $placa  = $this->input->post('placa');
        $brand   = $this->input->post('brand');
        $class_car      = $this->input->post('class_car');
        $colour = $this->input->post('colour');

        if($this->car->add($placa, $colour, $brand, $class_car)) {
            $inserted = true;
        } else {
            $inserted = false;
        }

        $data = array('inserted' => $inserted);

        header('Content-Type: application/json');
        echo json_encode($data);
    }

public function get() {
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Headers: *');

        $data = $this->car->get();

        header('Content-Type: application/json');
        echo json_encode($data);
    }


public function delete() {
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Headers: *');

        $id = $this->input->post('id');

        if($this->car->delete($id)) {
            $deleted = true;
        } else {
            $deleted = false;
        }

        $data = array('deleted' => $deleted);

        header('Content-Type: application/json');
        echo json_encode($data);
}

public function edit() {
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Headers: *');

        $id         = $this->input->post('id');
        $placa  = $this->input->post('placa');
        $brand   = $this->input->post('brand');
        $class_car      = $this->input->post('class_car');
        $colour = $this->input->post('colour'); 

        $this->car->edit($id, $placa, $colour, $brand, $class_car);
}

}