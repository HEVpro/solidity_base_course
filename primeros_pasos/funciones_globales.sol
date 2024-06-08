// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract globalFunctions{
    // funcion msg.sender
    function MsgSender() public view returns(address){
        return msg.sender;
    }

    function Now() public view returns(uint){
        return block.timestamp;
    }

    // function block.coinbaise
    function BlockCoinBase() public view returns(address){
        return block.coinbase;
    }

    // funciton block.difficulty
    function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }

    // function block.number
    function BlockNumber() public view returns(uint){
        return block.number;
    }

    // function msg sig
    function MsgSig() public view returns(bytes4){
        return msg.sig;
    }

    // function tx.gasprice
    function GasPrice() public view returns(uint){
        return tx.gasprice;
    }

}