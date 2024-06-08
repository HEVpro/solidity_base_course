// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract MyDates {
    // variables
    uint256 public ahora = block.timestamp;
    uint256 public un_minuto = 1 minutes;
    uint256 public dos_horas = 2 hours;
    uint256 public una_semana = 1 weeks;
    uint256 public dos_dias = 2 days;

    function masMinutos() public view returns (uint256) {
        return block.timestamp + 3 minutes;
    }

    function masHoras() public view returns (uint256) {
        return block.timestamp + 4 hours;
    }

    function masDias() public view returns (uint256) {
        return block.timestamp + 3 days;
    }
}
