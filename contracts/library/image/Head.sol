// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Head {
    string constant internal B00 = "";
    string constant internal B01 = "<path stroke=\"#000000\" d=\"M15 3h1M10 4h2M15 4h1M20 4h2M11 5h2M15 5h2M19 5h2M12 6h2M16 6h1M19 6h1M24 6h1M7 7h4M22 7h3M10 8h2M21 8h2M11 9h1\" />";
    string constant internal B02 = "<path stroke=\"#000000\" d=\"M13 2h8M11 3h12M9 4h15M8 5h16M8 6h17M8 7h5M20 7h5M8 8h4M21 8h4M8 9h4M22 9h3M8 10h3M23 10h2M8 11h3M23 11h2M9 12h2M23 12h1\" />";
    string constant internal B03 = "<path stroke=\"#000000\" d=\"M13 6h8M12 7h10M12 8h11M8 9h15M8 10h15\" />";
    string constant internal B04 = "<path stroke=\"#7092be\" d=\"M13 6h8M12 7h10M12 8h11M8 9h15M8 10h15\" />";
    string constant internal B05 = "<path stroke=\"#000000\" d=\"M6 0h1M6 1h3M7 2h1M9 2h2M7 3h1M11 3h2M8 4h1M13 4h2M8 5h1M15 5h2M8 6h1M17 6h2M9 7h1M9 8h1M10 9h1M10 10h1\" /><path stroke=\"#ed1c24\" d=\"M8 2h1M8 3h3M9 4h4M9 5h6M9 6h8M10 7h3M10 8h2M11 9h1\" />";
    string constant internal B06 = "<path stroke=\"#000000\" d=\"M13 3h1M16 3h1M19 3h1M13 4h2M16 4h1M18 4h2M13 5h1M15 5h1M17 5h1M19 5h1M13 6h1M19 6h1\" /><path stroke=\"#fff200\" d=\"M14 5h1M16 5h1M18 5h1M14 6h5\" />";
    string constant internal B07 = "<path stroke=\"#000000\" d=\"M17 0h2M20 0h2M16 1h1M19 1h1M22 1h1M17 2h3M21 2h2M18 3h4M17 4h2M21 4h1M16 5h1M19 5h2M16 6h1\" /><path stroke=\"#22b14c\" d=\"M17 1h2M20 1h2M20 2h1M19 4h2\" />";


    function constructHead(uint256 seed) internal pure returns (string memory) {
        uint40 backgroundSeed = uint40(seed << 8*2);
        backgroundSeed = backgroundSeed >> 8*4;
        string memory color;

        if (backgroundSeed > 250) {
            color = B00;
        } else if (backgroundSeed > 210) {
            color = B01;
        } else if (backgroundSeed > 170) {
            color = B02;
        } else if (backgroundSeed > 130) {
            color = B03;
        } else if (backgroundSeed > 90) {
            color = B04;
        } else if (backgroundSeed > 70) {
            color = B05;
        } else if (backgroundSeed > 50) {
            color = B06;
        } else {
            color = B07;
        }

        return string.concat(
            color
        );
    }
}

