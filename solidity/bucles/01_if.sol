//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract bucleIf{
    // Numero ganador

    function probarSuerte(uint _numero) public pure returns(bool){
        bool ganador;

        if(_numero == 100){
            ganador = true;
        }else{
            ganador = false;
        }
        return ganador;
    }
}