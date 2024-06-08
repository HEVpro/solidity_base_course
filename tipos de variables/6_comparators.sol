// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract operators{
    // operadores
    uint a = 10;
    uint b = 5;

    uint public suma = a + b;
    uint public resta = a - b;
    uint public division = a / b;
    uint public multiplica = a * b;
    uint public modulo = a % b;
    uint public potencia = a**b;


    // comparar enteros
    bool test_a_b = a == b;
    bool bool_test = a >= b;


    // comprar booleanos
    function divisibilidad(uint _k) public pure returns(bool){
        uint ultima_cifra = _k % 10;
        if((ultima_cifra == 0) || (ultima_cifra == 5)){
            return true;
        }else{
            return false;
        }
    }

    function divisibilidad_v2(uint _k) public pure returns(bool){
        uint ultima_cifra = _k % 10;
        if((ultima_cifra != 0) || (ultima_cifra != 5)){
            return false;
        }else{
            return true;
        }
    }

}