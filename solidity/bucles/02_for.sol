//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract bucleFor{
    // suma de los 100 primeros numeros a partir del numero introducido

    function suma(uint _numero) public pure returns(uint){
        uint resultado = 0;

        for(uint i = _numero; i < (100 + _numero); i++){
            resultado = resultado +i;
        }
        return resultado;
    }
}