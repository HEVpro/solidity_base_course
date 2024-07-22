//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract Banco{
    // tipo de dato complejo del cliente
    struct cliente{
        string nombre;
        address direccion;
        uint dinero;
    }
    // tipo de dato que va a relacionar el cliente con el dato del cliente
    mapping(string => cliente) clientes;

    // Funcion que nos permita dar de alta cliente
    function nuevoCliente(string memory _nombre) internal {
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }
}
