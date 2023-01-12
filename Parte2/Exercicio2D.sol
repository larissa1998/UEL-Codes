// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/* Modifique o código da calculadora (exercício 1) 
de forma que o usuário chamador pague 1 wei por operação para o dono do contrato. 
Use um modifier para melhorar o código (1,0 ponto).*/


contract Contract {
    
    address owner;

    constructor(){
        owner = msg.sender;
    }


    modifier pagamento {
        address payee = msg.sender;

        require(msg.value>=1 wei, "O valor transferido deve ser pelo menos 1 wei");
        
        bool sent = payable(owner).send(1 wei);
            require(sent, "Falha ao enviar wei para o owner");

        sent = payable(payee).send(msg.value-1 wei);
            require(sent, "Falha ao enviar wei para o payee");

        _;
    }

      
    function somar (uint a, uint b) public payable pagamento returns(uint) {
        return a + b;
    }

    function subtrair (uint a, uint b) public payable pagamento returns(uint) {
        return a - b;
    }

    function dividir (uint a, uint b) public payable pagamento returns(uint) {
        return a / b;
    }

    function multiplicar (uint a, uint b) public payable pagamento returns(uint) {
        return a * b;
    }
}
