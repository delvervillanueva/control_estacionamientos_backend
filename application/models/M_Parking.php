<?php

if(!defined('BASEPATH')) exit('No direct script access allowed!');

class M_Parking extends CI_Model {

    function __construct() {
        parent::__construct();
    }


    public function get() {
        return $this->db->get('parking')->result();
    }

    public function add($placa, $fech_input, $fec_output, $time, $amount) {
        $data = array(
            'placa'     => $placa,
            'fech_input'      => $fech_input,
            'fec_output'         => $fec_output,
            'time'    => $time,
            'amount'    => $amount

        );

        return $this->db->insert('parking', $data);
    }


    public function delete($id) {
        $this->db->where('id', $id);
        return $this->db->delete('parking');
    }

    public function edit($id, $placa, $fech_input, $fec_output, $time, $amount) {
        $this->db->where('id', $id);
        return $this->db->update('parking', array(
            'placa'     => $placa,
            'fech_input'      => $fech_input,
            'fec_output'         => $fec_output,
            'time'    => $time,
            'amount'    => $amount
        ));
    } 


}