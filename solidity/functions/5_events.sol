//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract events{
    // Declaramos eventos
    event nombre_evento(string _nombre_persona);
    event nombre_evento1(string _nombre_persona, uint _edad);
    event nombre_evento2(string, uint, address, bytes32);
    event abort();


    function EmitirEvento1( string memory _nombre_persona) public{
        emit nombre_evento(_nombre_persona);
    }

    function EmitirEvento2(string memory _nombre_persona, uint _edad) public{
        emit nombre_evento1(_nombre_persona, _edad);
    }

    function EmitirEvento3(string memory _nombre_persona, uint _edad ) public{
        bytes32  hash_id = keccak256(abi.encodePacked(_nombre_persona, _edad));
        emit nombre_evento2(_nombre_persona, _edad, msg.sender , hash_id);
    }

    function AbortarMision() public{
        emit abort();
    }
}