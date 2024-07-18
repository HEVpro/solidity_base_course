//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract bucleWhile{
    // Suma de los numeros impares menores o iguales a 100

    function sumaImpares() public pure returns(uint){
      uint suma = 0;
      uint contador = 1;

      while(contador < 100){
        if(contador %2 != 0){
            suma = suma + contador;
        }
        contador ++;
      }
      return suma;
    }
}