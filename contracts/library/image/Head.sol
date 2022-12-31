// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Prefix.sol";

library Head {
    string constant internal NORMAL_0 = "";
    string constant internal NORMAL_1 = "000000\" d=\"M15 3h1M10 4h2M15 4h1M20 4h2M11 5h2M15 5h2M19 5h2M12 6h2M16 6h1M19 6h1M24 6h1M7 7h4M22 7h3M10 8h2M21 8h2M11 9h1\" />";
    string constant internal NORMAL_2 = "000000\" d=\"M13 2h8M11 3h12M9 4h15M8 5h16M8 6h17M8 7h5M20 7h5M8 8h4M21 8h4M8 9h4M22 9h3M8 10h3M23 10h2M8 11h3M23 11h2M9 12h2M23 12h1\" />";
    string constant internal NORMAL_3 = "000000\" d=\"M13 6h8M12 7h10M12 8h11M8 9h15M8 10h15\" />";
    string constant internal NORMAL_4 = "7092be\" d=\"M13 6h8M12 7h10M12 8h11M8 9h15M8 10h15\" />";
    string constant internal NORMAL_5 = "000000\" d=\"M6 0h1M6 1h3M7 2h1M9 2h2M7 3h1M11 3h2M8 4h1M13 4h2M8 5h1M15 5h2M8 6h1M17 6h2M9 7h1M9 8h1M10 9h1M10 10h1\" /><path stroke=\"#ed1c24\" d=\"M8 2h1M8 3h3M9 4h4M9 5h6M9 6h8M10 7h3M10 8h2M11 9h1\" />";
    string constant internal NORMAL_6 = "000000\" d=\"M13 3h1M16 3h1M19 3h1M13 4h2M16 4h1M18 4h2M13 5h1M15 5h1M17 5h1M19 5h1M13 6h1M19 6h1\" /><path stroke=\"#fff200\" d=\"M14 5h1M16 5h1M18 5h1M14 6h5\" />";
    string constant internal NORMAL_7 = "000000\" d=\"M17 0h2M20 0h2M16 1h1M19 1h1M22 1h1M17 2h3M21 2h2M18 3h4M17 4h2M21 4h1M16 5h1M19 5h2M16 6h1\" /><path stroke=\"#22b14c\" d=\"M17 1h2M20 1h2M20 2h1M19 4h2\" />";

    string constant internal NORMAL_8 = "";
    string constant internal NORMAL_9 = "";
    string constant internal NORMAL_A = "";
    string constant internal NORMAL_B = "";
    string constant internal NORMAL_C = "";
    string constant internal NORMAL_D = "";
    string constant internal NORMAL_E = "";

    string constant internal SPECIAL_0 = "";
    string constant internal SPECIAL_1 = "";
    string constant internal SPECIAL_2 = "";
    string constant internal SPECIAL_3 = "";

    function constructHead(uint256 seed) internal pure returns (string memory) {
        uint40 _seed = uint40(seed << 8*2);
        _seed = _seed >> 8*4;

        if (_seed >= 240) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 224) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 208) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_2
            );
        } else if (_seed >= 192) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_3
            );
        } else if (_seed >= 176) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_4
            );
        } else if (_seed >= 160) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_5
            );
        } else if (_seed >= 144) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_6
            );
        } else if (_seed >= 128) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_7
            );
        } else if (_seed >= 112) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 96) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 80) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 64) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 48) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 32) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 16) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 9) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 2) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else if (_seed >= 1) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        } else {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_1
            );
        }
    }
}

