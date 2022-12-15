// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "./library/Base64.sol";
import "./library/Metadata.sol";
import "./library/Seed.sol";

contract FDCC is ERC721Enumerable, Seed {
    address internal immutable deployer;
    address internal immutable FDCCStorage;

    constructor(bytes memory salt, address _storage) ERC721("test", "test") Seed(salt) {
        deployer = msg.sender;
        FDCCStorage = _storage;
        _initialize();
    }

    receive() external payable {
        payable(deployer).transfer(msg.value);
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        super._requireMinted(tokenId);
        uint256 seed = generateSeed(tokenId);
        return Metadata.constructMetadata(tokenId, seed, FDCCStorage);
    }

    function withdraw() public {
        require(msg.sender == deployer, "test");

        payable(deployer).transfer(address(this).balance);
    }

    function _initialize() internal {
        for(uint i = 0; i < 20; i++) {
            _mint(deployer, i);
        }
    }

    function claim() public payable {
        uint256 _tokenId = totalSupply();

        require(_tokenId < 10000, "test");
        require(msg.value == 0.1 ether, "test");

        _mint(msg.sender, _tokenId);
    }
}