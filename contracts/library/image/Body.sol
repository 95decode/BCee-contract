// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Body {
    string constant internal BODY = "<path stroke=\"#000000\" d=\"M13 7h7M12 8h1M20 8h1M12 9h1M21 9h1M11 10h1M22 10h1M11 11h1M22 11h1M11 12h1M22 12h1M10 13h1M21 13h1M9 14h1M21 14h1M8 15h1M21 15h1M8 16h1M22 16h1M8 17h1M22 17h1M8 18h1M22 18h1M8 19h1M21 19h1M8 20h1M21 20h1M8 21h1M21 21h1M8 22h1M21 22h1M9 23h1M20 23h1M10 24h10M11 25h1M17 25h1M11 26h1M17 26h1M11 27h2M17 27h2\" />";
    string constant internal SHADOW = "<path stroke=\"#7f7f7f\" opacity= \"0.5\" d=\"M13 26h3M9 27h2M13 27h4M19 27h2M9 28h14M12 29h15M19 30h9\" />";

    string constant internal BODY_PREFIX = "<path stroke=\"#";
    string constant internal BODY_SUFFIX = "\" d=\"M13 8h7M13 9h8M12 10h10M12 11h10M12 12h10M11 13h10M10 14h11M9 15h12M9 16h13M9 17h13M9 18h13M9 19h12M9 20h12M9 21h12M9 22h12M10 23h10\" />";

    string constant internal B00 = "a7ecff";
    string constant internal B01 = "B97A57";
    string constant internal B02 = "756F0E";
    string constant internal B03 = "C3C3C3";
    string constant internal B04 = "FFAEC9";
    string constant internal B05 = "BA9FBE";
    string constant internal B06 = "FFFFFF";
    string constant internal B07 = "FFF200";

    function constructBody(uint256 seed) internal pure returns (string memory) {
        uint40 backgroundSeed = uint40(seed << 8);
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
            BODY,
            SHADOW,
            BODY_PREFIX,
            color,
            BODY_SUFFIX
        );
    }
}
