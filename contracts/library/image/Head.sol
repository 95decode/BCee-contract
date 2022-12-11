// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Head {
    string constant HEAD_01 = "<path stroke=\"#000000\" d=\"M15 0h1M10 1h2M15 1h1M20 1h2M11 2h2M15 2h2M19 2h2M12 3h2M16 3h1M19 3h1M24 3h1M7 4h4M22 4h3M10 5h2M21 5h2M11 6h1\" />";
    string constant HEAD_02 = "<path stroke=\"#000000\" d=\"M13 3h8M12 4h10M12 5h11M8 6h15M8 7h15\" />";

    function constructHead(uint256 seed) internal pure returns (string memory) {
        if(seed > 5) {
            return string.concat(
                HEAD_01
            );
        } else {
            return string.concat(
                HEAD_02
            );
        }
    }
}