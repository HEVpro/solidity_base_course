//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Modifier{
    //Ejemplo de solo el propietario del contrato puede ejecutar una funcion

    address public owner;

    constructor()public{
        owner = msg.sender;
    }

    modifier soloPropietario(){
        require(msg.sender == owner, "No tienes permisos para ejecutar la funcion");
        _;
    }

    function ejemplo1() public soloPropietario(){
        // Codigo de la funcion para el propietario del contrato
    }

    struct Cliente{
        address direccion;
        string nombre;
    }

    mapping(string => address) clientes;

    function altaCliente(string memory _nombre) public {
        clientes[_nombre] = msg.sender;
    }

    modifier soloClientes(string memory _nombre){
        require(clientes[_nombre] == msg.sender);
        _;
    }

    function ejemplo2(string memory _nombre) public soloClientes(_nombre){
        //logica de la funcion para los clientes
    }
}