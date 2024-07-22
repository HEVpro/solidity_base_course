// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract myEnums{

    // enums as flag
    enum estado {ON, OFF}

    // variable enum
    estado state;

    function turnOn() public{
        state = estado.ON;
    }

    function turnByParameter(uint _k) public{
        state = estado(_k);
    }

    function GetState() public view returns(estado){
        return state;
    }

}