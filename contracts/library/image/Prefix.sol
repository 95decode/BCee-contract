// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Prefix {
    function prefix() internal pure returns (string memory) {
        return "<path stroke=\"#";
    }
}