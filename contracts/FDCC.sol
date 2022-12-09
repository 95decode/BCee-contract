// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./library/Base64.sol";
import "./library/Metadata.sol";
import "./library/Seed.sol";

contract FDCC is ERC721, Seed {
    address internal immutable deployer;

    constructor(bytes memory salt, uint256 traitNum) ERC721("test", "test") Seed(salt, traitNum) {
        deployer = msg.sender;
        _mint(msg.sender, 0);
    }

    receive() external payable {
        payable(deployer).transfer(msg.value);
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        super._requireMinted(tokenId);
        uint256 seed = generateSeed(tokenId);
        return Metadata.constructMetadata(tokenId, seed);
    }

    function withdraw() public {
        require(msg.sender == deployer, "test");

        payable(deployer).transfer(address(this).balance);
    }
}