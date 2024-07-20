//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract Require{
     // Funcion que verifica la contraseña
     function password(string memory _pass) public pure returns(bool){
        require(keccak256(abi.encodePacked(_pass)) == keccak256(abi.encodePacked("12345")), "Wrong password");

        return true;
     }

    uint tiempo = 0;
    uint public cartera = 0;
     // Funcion que permita pagar
     function pagar(uint _cantidad) public returns(uint){
        require(block.timestamp > tiempo + 5 seconds, "Tienes que esperar 5 segundos");
        tiempo = block.timestamp;
        cartera = cartera + _cantidad;

        return cartera;

     }
}