// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*Desenvolva um contrato que guarde em uma variável o endereço do criador do contrato. 
Crie neste contrato uma função que retorne o endereço do dono quando invocada (1,0 ponto).*/


contract Contract {
    
    address owner;

    constructor(){
        owner = msg.sender;
    }

    function getEnderecoOwner() public view returns (address) {
        return owner;
    }
}
