// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract retornos{
    // UNICO VALOR DE RETORNO
    // funcion que devuelva saludo
    function saludos() pure public returns(string memory){
        return "Hola majo";
    }

    // calcula el resultado de la multiplicacion
    function multiplicacion(uint _a, uint _b) pure public returns(uint) {
        return _a * _b;
    }

    // funciton es par o impar
    function esPar(uint _a) pure public returns(bool){
        return _a % 2 == 0;
    }

    //VARIOS VALORES DE RETORNO
    function division(uint _a, uint _b) pure public returns(uint, uint, bool){
        uint q = _a / _b;
        uint r = _a % _b;
        bool multiplo = false;

        if(r == 0){
            multiplo=true;
        }
        return (q, r, multiplo);
    }
}