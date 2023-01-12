// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*Desenvolva um contrato no qual o usuário pode passar textos como entrada para uma função. 
Esta função gerará um código hash usando como entrada este texto. 
O código hash será retornado ao usuário pela própria função. 
A função hash keccak256 deve ser utilizada. 
Ela recebe como parâmetro uma variável do tipo bytes e retorna um valor no formato bytes32. 
Para converter uma string em bytes, basta fazer casting: bytes(<nome da variável contendo a string>) (1,0 ponto*/


contract Contract {
    
    function hash (string memory _texto) public pure returns (bytes32){
        return keccak256(bytes(_texto));
    }
}
