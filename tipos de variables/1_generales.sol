// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract variables{
    // strings
    string test;
    string public test_2= "hola mundo";
    string public test_3 = '';

    // bools
    bool isTrue;
    bool public isFalse = false;

    // bytes
    bytes32 bytesTest;
    bytes4 bytesTest_3;

    string public my_name = "Hola Mike";
    bytes32 public myBytes32 = keccak256(abi.encodePacked(my_name));

    bytes4 identifyer;

    function ejemploBytes4() public{
        identifyer = msg.sig;
    }

    // address
    address public myAddres;
    address local_address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


}