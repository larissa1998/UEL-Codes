pragma solidity ^0.8.11;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

//estende o contrato ERC20 disponível na biblioteca OpenZeppelin
contract LdnaToken is ERC20 {
    
    //determina a quantidade inicial de tokens disponíveis
    uint constant _initial_supply = 100;

    //passa para o constr o valor das variáveis name e symbol do ERC20
    constructor() ERC20("Ldna Ethereum Token", "LdnaToken"){
        //transfere todos os tokens para o endereço do criador do contrato    
        _mint(msg.sender, _initial_supply);
    }

    
}