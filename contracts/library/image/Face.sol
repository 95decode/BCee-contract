// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Face {
    string constant Face_01 = "<path stroke=\"#000000\" d=\"M13 7h4M18 7h4M10 8h4M16 8h3M21 8h1M10 9h1M13 9h1M16 9h1M18 9h1M21 9h1M13 10h4M18 10h4\" /><path stroke=\"#7f7f7f\" d=\"M14 8h2M19 8h2M14 9h2M19 9h2\" />";
    string constant Face_02 = "<path stroke=\"#ed1c24\" d=\"M13 7h4M18 7h4M10 8h4M16 8h3M21 8h1M10 9h1M13 9h1M16 9h1M18 9h1M21 9h1M13 10h4M18 10h4\" /><path stroke=\"#ff7f27\" d=\"M14 8h2M19 8h2M14 9h2M19 9h2\" />";

    function constructFace(uint256 seed) internal pure returns (string memory) {
        if(seed > 5) {
            return string.concat(
                Face_01
            );
        } else {
            return string.concat(
                Face_02
            );
        }
    }
}