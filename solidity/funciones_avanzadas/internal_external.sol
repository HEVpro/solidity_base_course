//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Comida{
    struct Plato{
        string nombre;
        string ingredientes;
        uint tiempo_coccion;
    }
    // Array dinamico de platos
    Plato [] platos;

    //RElaciones de mapping del nombre con el plato con sus ingredientes
    mapping(string => string) ingredientes;

    //Funcion que nos permite dar de alta un nuevo plato
    function NuevoPlato(string memory _nombre, string memory _ingredientes, uint _tiempo) internal{
        platos.push(Plato(_nombre, _ingredientes, _tiempo));

        ingredientes[_nombre] = _ingredientes;
    }

    function Ingredientes(string memory _nombre) internal view returns(string memory){
        return ingredientes[_nombre];
    }

}

contract Sandwich is Comida{
    function sandwitch(string memory _ingredientes, uint _tiempo) external{
        NuevoPlato("Sandwich", _ingredientes, _tiempo);
    }
    function verIngredientes() external view returns(string memory){
        return Ingredientes("Sandwich");
    }
}