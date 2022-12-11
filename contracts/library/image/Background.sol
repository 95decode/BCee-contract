// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Background {
    string constant internal BACKGROUND_PREFIX = "<path stroke=\"#";
    string constant internal BACKGROUND_SUFFIX = "\" d=\"M0 0h32M0 1h32M0 2h32M0 3h32M0 4h32M0 5h32M0 6h32M0 7h32M0 8h32M0 9h32M0 10h32M0 11h32M0 12h32M0 13h32M0 14h32M0 15h32M0 16h32M0 17h32M0 18h32M0 19h32M0 20h32M0 21h32M0 22h32M0 23h32M0 24h32M0 25h32M0 26h32M0 27h32M0 28h32M0 29h32M0 30h32M0 31h32\" />";

    string constant internal BACKGROUND_COLOR_GRAY = "c3c3c3";
    string constant internal BACKGROUND_COLOR_PINK = "ffaec9";

    function constructBackgorund(uint256 seed) internal pure returns (string memory) {
        if(seed > 5) {
            return string.concat(
                BACKGROUND_PREFIX,
                BACKGROUND_COLOR_GRAY,
                BACKGROUND_SUFFIX
            );
        } else {
            return string.concat(
                BACKGROUND_PREFIX,
                BACKGROUND_COLOR_PINK,
                BACKGROUND_SUFFIX
            );
        }
    }
}