//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;
// import "./Banco.sol";
import { Banco } from "./Banco.sol";

contract Cliente is Banco{
    function altaCliente(string memory _nombre) public{
        nuevoCliente(_nombre);
    }

    function ingresarDinero(string memory _nombre, uint _cantidad) public{
        clientes[_nombre].dinero = clientes[_nombre].dinero + _cantidad;
    }
    function retirarDinero(string memory _nombre, uint _cantidad) public returns(bool){
        bool flag = true;

        if(int(clientes[_nombre].dinero) - int(_cantidad) >= 0){
            clientes[_nombre].dinero = clientes[_nombre].dinero - _cantidad;
        }else{
            flag = false;
        }
        return flag;
    }

    function consultarSaldo(string memory _nombre) public view returns(uint){
        return clientes[_nombre].dinero;
    }
}