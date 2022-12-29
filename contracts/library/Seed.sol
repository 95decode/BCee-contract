// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Seed {
    bytes32 private _salt;

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