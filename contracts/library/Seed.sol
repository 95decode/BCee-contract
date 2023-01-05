// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Seed {
    bytes32 private _salt;

    // BCee creates a random seed using salt and tokenId, but this is 
    // not truly random and can be predicted by anyone.
    // And it doesn't really matter. This is because if all NFTs limited 
    // to 1000 are minted, they will not be used after that.
    // In addition, values such as block.timestamp and block.number 
    // can be used as seeds at the time each NFT is minted, 
    // but even this is sufficiently predictable, and a new seed is 
    // stored at that time, so the user's gas fee increases.
    constructor(bytes32 salt) {
        _salt = salt;
    }

    function generateSeed(uint256 value) internal view returns (uint256) {
        return uint256(
            keccak256(
                abi.encodePacked(
                    value,
                    _salt
                )
            )
        ) >> 216;
    }
}