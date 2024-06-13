// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract arrays{
    // arrays of uints fixed of 5
    uint[5] public array_enteros = [1, 2, 3, 4, 5];
    uint32[5] array_enteros_32;
    string[5] array_strings;


    // dynamic arays
    uint[] public arrays_enteros_dynamic;

    struct Persona{
        string nombre;
        uint edad;
    }
    Persona[] public personas;

    arrays_enteros_dynamic.push(2);

// to push an dynamic array we need a function
    function modificar_array(uint _numero) public{
        arrays_enteros_dynamic.push(_numero);
    }


}