//// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract cuasas_beneficas {
    struct Causa {
        uint256 Id;
        string nombre;
        uint256 precio_objetivo;
        uint256 cantidad_recaudada;
    }

    uint256 contador_causas = 0;
    mapping(string => Causa) causas;

    // Dar de alta una causa
    function nuevaCausa(string memory _nombre, uint256 _precio_objetivo)
        public
        payable
    {
        contador_causas = contador_causas++;
        Causa memory causa = Causa(
            contador_causas,
            _nombre,
            _precio_objetivo,
            0
        );
        causas[_nombre] = causa;
    }
    // Nos devuelve tu si podmeos donar a una causa
    function objetivo_cumplido(string memory _nombre, uint _donar) private view returns(bool){
        bool flag = false;
        Causa memory causa = causas[_nombre];
        if(causa.precio_objetivo >= (causa.cantidad_recaudada + _donar)){
            flag = true;
        }
        return flag;
    }
    // Donar a una causa
    function donar(string memory _nombre, uint _cantidad) public returns(bool){
        bool aceptar_donacion = true;

        if(objetivo_cumplido(_nombre, _cantidad)){
            causas[_nombre].cantidad_recaudada = causas[_nombre].cantidad_recaudada + _cantidad;
        }else{
            aceptar_donacion = false;
        }
        return aceptar_donacion;
    }

    // Si se ha llegado ya a la cantidad recaudada
    function comprobar_causa(string memory _nombre) public view returns(bool, uint){
        bool limite_alcanzado = false;
        Causa memory causa = causas[_nombre];

        if(causa.cantidad_recaudada >= causa.precio_objetivo){
            limite_alcanzado = true;
        }
        return (limite_alcanzado, causa.cantidad_recaudada);
    }
}
