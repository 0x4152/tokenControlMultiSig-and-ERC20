pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YEAHToken is ERC20 {
    constructor() public ERC20("Yeah", "YEAH") {
        _mint(msg.sender, 1000);
    }

    modifier onlyOwner() {
        require(isOwner[msg.sender], "not owner");
        _;
    }

    function mintTokensTo(address mintRecipient, uint256 tokensToMint) public {}
}
