<?php
error_reporting(E_ALL);
defined('BASEPATH') OR exit('No direct script access allowed!');

class Parking extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('M_Parking', 'parking');
    }


    public function add() {
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Headers: *');

        $placa  = $this->input->post('placa');
        $fech_input   = $this->input->post('fech_input');
        $fec_output      = $this->input->post('fec_output');
        $time = $this->input->post('time');
        $amount = $this->input->post('amount');


        if($this->parking->add($placa, $fech_input, $fec_output, $time, $amount)) {
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

        $data = $this->parking->get();

        header('Content-Type: application/json');
        echo json_encode($data);
    }


public function delete() {
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Headers: *');

        $id = $this->input->post('id');

        if($this->parking->delete($id)) {
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
        $fech_input   = $this->input->post('fech_input');
        $fec_output      = $this->input->post('fec_output');
        $time = $this->input->post('time'); 
        $amount = $this->input->post('amount'); 

        $this->parking->edit($id, $placa, $fech_input, $fec_output, $time, $amount);
}

}