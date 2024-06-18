// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract functions{
    // Add an address in an array of addresses
    address[] public direccions;

    function addDirecciones() public{
        direccions.push(msg.sender);
    }

    // calculate the hash of the parameters
    bytes32 public hash;

    function setHash(string memory _s) public {
        hash = keccak256(abi.encodePacked(_s));
    }

    // Function with complex data type 
    struct comida{
        string nombre;
        string ingredientes;
    }
    comida public hamburger;

    function crearHamburguesa(string memory _ingredientes) public {
        hamburger = comida('burguer', _ingredientes);
    }

    //
    struct alumno{
        string nombre;
        address direccion;
        uint edad;
    }

    bytes32 public hash_alumno;
    function hashIdAlumno(string memory _nombre, address _direccion, uint _edad) private{
        hash_alumno = keccak256(abi.encodePacked(_nombre, _direccion, _edad));
    }
    alumno[] public listaAlumnos;
    mapping(string => bytes32) alumnos;

    function nuevoAlumno(string memory _nombre, uint _edad) public {
        listaAlumnos.push(alumno(_nombre, msg.sender, _edad));
        hashIdAlumno(_nombre, msg.sender, _edad);
        alumnos[_nombre] = hash_alumno;
    }

}