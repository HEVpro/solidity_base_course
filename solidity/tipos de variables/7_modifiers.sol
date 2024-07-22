// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract myModifiers{
    // public
    uint public mi_entero = 10;
    string public mi_string = "hola mundo";
    address public owner; 

    constructor() public{
        owner = msg.sender;
    } 

    // private
    uint private mi_entero_privado = 20;
    bool private flag = true;

    function myPrivates(uint _k) public{
        mi_entero_privado = _k;
    }

    // internal
    bytes32 internal hash = keccak256(abi.encodePacked("hash"));

}