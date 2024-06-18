// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract modifiers{
    // modificador de view
    string[] lista_alumnos;

    function nuevo_alumno(string memory _nombre) public {
        lista_alumnos.push(_nombre);
    }

    function ver_alumno(uint _position) public view returns(string memory){
        return lista_alumnos[_position];
    }

    uint x = 10;
    function sumarX(uint _a) public view returns(uint){
        return x + _a;
    }

    // modificador pure
    function exponenciacion(uint _a, uint _b) public pure returns(uint){
        return _a ** _b;
    }

    // modificador payable
    mapping (address => cartera) DineroCartera;

    struct cartera{
        string nombre;
        address direccion;
        uint cantidad_dinero;
    }

    function pagar(string memory _nombre, uint _cantidad) public payable{
        cartera memory mi_cartera;
        mi_cartera = cartera(_nombre, msg.sender, _cantidad);
        DineroCartera[msg.sender] = mi_cartera;
    }

    function verSaldo() public view returns(cartera memory){
        return DineroCartera[msg.sender];
    }



}