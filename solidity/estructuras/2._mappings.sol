// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract mappings{
    // mappings de numeros
    mapping(address => uint) public numeroElegido;
    
    function elegirNumero(uint _k) public{
        numeroElegido[msg.sender] = _k;
    }
    
    function consultarNumero() public view returns(uint){
        return numeroElegido[msg.sender]; 
    }

    // mappping person with quantity of money
    mapping(bytes32 => uint) public verSaldo;
    
    function dinero(bytes32 _nombre, uint _cantidad) public {
        verSaldo[_nombre] = _cantidad;
    }
    
    function consultarDinero(bytes32 _nombre) public view returns(uint){
        return verSaldo[_nombre];
    }

    // mapping with struct or complex data type
    struct Persona{
        string nombre;
        uint edad;
    }
    mapping(uint => Persona) public personas;
    function dni_persona(uint _numero_dni, string memory _nombre, uint _edad) public{
        personas[_numero_dni] = Persona(_nombre, _edad);
    }
   function visualizarPersona(uint _dni ) public view returns(Persona memory){
        return personas[_dni];
    }
}