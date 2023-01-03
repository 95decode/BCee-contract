// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface IBCeeRenderer {
    function constructImage(uint256 seed) external pure returns (string memory);
}