// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FirstToken is ERC20 {
    constructor (string memory _name, string memory _symbol, uint256 tokensToDeployer) ERC20(_name, _symbol) {
        _mint(msg.sender, tokensToDeployer * (10 ** 18));
    }

    function getTokens(uint256 amount) public {
        _mint(msg.sender, amount * (10 ** 18));
    }
}