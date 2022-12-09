// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Seed {
    bytes private _salt;
    uint256 internal _traitNum;

    constructor(bytes memory salt, uint256 traitNum) {
        _salt = salt;
        _traitNum = traitNum;
    }

    function generateSeed(uint256 value) internal view returns (uint256) {
        return uint256(
            keccak256(
                abi.encodePacked(
                    value,
                    _salt
                )
            )
        ) >> (
            2 ** 8 - 2 * (_traitNum * 2 ** 2)
        );
    }
}