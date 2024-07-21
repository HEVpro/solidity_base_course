//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
import "./safemath.sol";

contract calculosSeguros{

    // Declarar para que datos usamos la libreria
    using SafeMath for uint;

    // funcion suma segura
    function suma(uint _a, uint _b) public pure returns(uint){
        return _a.add(_b);
    }

    // funcion resta segura
    function resta(uint _a, uint _b) public pure returns(uint){
        return _a.sub(_b);
    }

    // funcion multi segura
    function multiplicar(uint _a, uint _b) public pure returns(uint){
        return _a.mul(_b);
    }

}