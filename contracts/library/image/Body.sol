// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Prefix.sol";

library Body {
    string constant internal BODY = "000000\" d=\"M13 7h7M12 8h1M20 8h1M12 9h1M21 9h1M11 10h1M22 10h1M11 11h1M22 11h1M11 12h1M22 12h1M10 13h1M21 13h1M9 14h1M21 14h1M8 15h1M21 15h1M8 16h1M22 16h1M8 17h1M22 17h1M8 18h1M22 18h1M8 19h1M21 19h1M8 20h1M21 20h1M8 21h1M21 21h1M8 22h1M21 22h1M9 23h1M20 23h1M10 24h10M11 25h1M17 25h1M11 26h1M17 26h1M11 27h2M17 27h2\" />";
    string constant internal SHADOW = "7f7f7f\" opacity= \"0.5\" d=\"M13 26h3M9 27h2M13 27h4M19 27h2M9 28h14M12 29h15M19 30h9\" />";
    string constant internal BODY_SUFFIX = "\" d=\"M13 8h7M13 9h8M12 10h10M12 11h10M12 12h10M11 13h10M10 14h11M9 15h12M9 16h13M9 17h13M9 18h13M9 19h12M9 20h12M9 21h12M9 22h12M10 23h10\" />";

    string constant internal NORMAL_0 = "a7ecff";
    string constant internal NORMAL_1 = "B97A57";
    string constant internal NORMAL_2 = "756F0E";
    string constant internal NORMAL_3 = "C3C3C3";
    string constant internal NORMAL_4 = "FFAEC9";
    string constant internal NORMAL_5 = "BA9FBE";
    string constant internal NORMAL_6 = "FFFFFF";
    string constant internal NORMAL_7 = "FFF200";

    string constant internal NORMAL_8 = "FFF200";
    string constant internal NORMAL_9 = "FFF200";
    string constant internal NORMAL_A = "FFF200";
    string constant internal NORMAL_B = "FFF200";
    string constant internal NORMAL_C = "FFF200";
    string constant internal NORMAL_D = "FFF200";
    string constant internal NORMAL_E = "FFF200";

    string constant internal SPECIAL_0 = "FFF200";
    string constant internal SPECIAL_1 = "FFF200";
    string constant internal SPECIAL_2 = "FFF200";
    string constant internal SPECIAL_3 = "FFF200";

    function constructBody(uint256 seed) internal pure returns (string memory) {
        uint40 _seed = uint40(seed << 8);
        _seed = _seed >> 8*4;
        string memory color;

        if (_seed >= 240) {
            color = NORMAL_0;
        } else if (_seed >= 224) {
            color = NORMAL_1;
        } else if (_seed >= 208) {
            color = NORMAL_2;
        } else if (_seed >= 192) {
            color = NORMAL_3;
        } else if (_seed >= 176) {
            color = NORMAL_4;
        } else if (_seed >= 160) {
            color = NORMAL_5;
        } else if (_seed >= 144) {
            color = NORMAL_6;
        } else if (_seed >= 128) {
            color = NORMAL_7;
        } else if (_seed >= 112) {
            color = NORMAL_8;
        } else if (_seed >= 96) {
            color = NORMAL_9;
        } else if (_seed >= 80) {
            color = NORMAL_A;
        } else if (_seed >= 64) {
            color = NORMAL_B;
        } else if (_seed >= 48) {
            color = NORMAL_C;
        } else if (_seed >= 32) {
            color = NORMAL_D;
        } else if (_seed >= 16) {
            color = NORMAL_E;
        } else if (_seed >= 9) {
            color = SPECIAL_0;
        } else if (_seed >= 2) {
            color = SPECIAL_1;
        } else if (_seed >= 1) {
            color = SPECIAL_2;
        } else {
            color = SPECIAL_3;
        }

        return string.concat(
            Prefix.prefix(),
            BODY,
            Prefix.prefix(),
            SHADOW,
            Prefix.prefix(),
            color,
            BODY_SUFFIX
        );
    }
}
