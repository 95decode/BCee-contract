// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Hands {
    string constant Hands_01 = "<path stroke=\"#000000\" d=\"M11 14h1M14 14h1M11 15h1M14 15h1M11 16h1M14 16h1M12 17h2\" /><path stroke=\"#880015\" d=\"M8 15h3M15 15h10M8 16h3M15 16h10\" />";

    function constructHands(uint256 seed) internal pure returns (string memory) {
        if(seed > 5) {
            return string.concat(
                Hands_01
            );
        } else {
            return string.concat(
                Hands_01
            );
        }
    }
}

