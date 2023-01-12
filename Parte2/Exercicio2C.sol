// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*Desenvolva um contrato com apenas uma função, denominada payTheOwner(). 
Toda vez que um usuário invocar esta função, 
1 wei será transferido do usuário que fez a invocação para o dono do contrato. 
É necessário verificar se o chamador realmente transferiu este 1 wei na transação.*/


contract Contract {
    
    address owner;

    constructor(){
        owner = msg.sender;
    }

    fallback() external payable {}

    receive() external payable {}

    function payTheOwner() public payable {
        address payee = msg.sender;

        require(msg.value>=1 wei, "O valor transferido deve ser pelo menos 1 wei");

        bool sent = payable(owner).send(1);
        require(sent, "Falha ao enviar wei para o owner");

        sent = payable(payee).send(msg.value-1);
        require(sent, "Falha ao enviar wei para o payee");
    }
}
