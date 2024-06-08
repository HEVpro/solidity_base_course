// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract myCast{

    // Ejemplo de casteo de variables
    uint8 entero_bits = 80;
    uint enterotenero_256_bits = 130000;
    int16 entero_16_bits = 156;
    int entero_256_bits = 150000;

    uint64 public casteo_1 = uint64(entero_bits);
    uint64 public casteo_2 = uint64(enterotenero_256_bits);
    int public casteo_3 = int(enterotenero_256_bits);

    function caster(uint8 _k) public view returns(uint64){
        return uint64(_k);
    }


}