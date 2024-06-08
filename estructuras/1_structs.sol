// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract estructuras{
    // cliente pagina web de pago
    struct cliente{
        uint id;
        string nombre;
        string dni;
        string email;
    }
    cliente cliente_1;
    cliente cliente_init = cliente(1, "Steven", "38888888A", "test@test.com");
}