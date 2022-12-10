// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract GameItems is ERC1155 {
    uint256 public constant GOLD = 0;
    uint256 public constant CRAFTING_MATERIAL = 1;
    uint256 public constant SANDEEP_SHIELD = 2;

    constructor() ERC1155("https://game.example/api/item/{id}.json") {
        _mint(msg.sender, GOLD, 10**18, "");
        _mint(msg.sender, CRAFTING_MATERIAL, 10**3, "");
        _mint(msg.sender, SANDEEP_SHIELD, 1, "");
    }
}