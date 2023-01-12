// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*Desenvolva uma calculadora que realize as 4 operações básicas sobre dois números inteiros positivos. 
Considerando que estas operações simplesmente vão receber argumentos e retornar os resultados, 
utilize  a palavra reservada pure para estas funções (1,0 ponto).*/


contract Contract {
    
    function somar (uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function subtrair (uint a, uint b) public pure returns(uint) {
        return a - b;
    }

    function dividir (uint a, uint b) public pure returns(uint) {
        return a / b;
    }

    function multiplicar (uint a, uint b) public pure returns(uint) {
        return a * b;
    }
}
