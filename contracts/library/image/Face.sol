// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Prefix.sol";

library Face {
    string constant internal NORMAL_0 = "000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" />";
    string constant internal NORMAL_1 = "000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M17 12h1M19 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#ed1c24\" d=\"M14 11h3M20 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" /><path stroke=\"#730e11\" d=\"M15 12h1M21 12h1\" />";
    string constant internal NORMAL_2 = "000000\" d=\"M12 7h1M24 7h1M13 8h2M22 8h2M15 9h2M20 9h2M14 10h9M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" />";
    string constant internal NORMAL_3 = "000000\" d=\"M12 11h5M18 11h5M12 12h1M14 12h1M16 12h1M18 12h1M20 12h1M22 12h1M12 13h1M16 13h1M18 13h1M22 13h1M13 14h3M19 14h3\" /><path stroke=\"#f2f2f2\" d=\"M13 12h1M15 12h1M19 12h1M21 12h1M13 13h3M19 13h3\" />";
    string constant internal NORMAL_4 = "000000\" d=\"M13 10h4M18 10h4M10 11h4M16 11h3M21 11h1M10 12h1M13 12h1M16 12h1M18 12h1M21 12h1M13 13h4M18 13h4\" /><path stroke=\"#7f7f7f\" d=\"M14 11h2M19 11h2M14 12h2M19 12h2\" />";
    string constant internal NORMAL_5 = "f7d3ff\" d=\"M13 10h4M18 10h4M10 11h4M16 11h3M21 11h1M10 12h1M13 12h1M16 12h1M18 12h1M21 12h1M13 13h4M18 13h4\" /><path stroke=\"#bba0c2\" d=\"M14 11h1M19 11h1\" /><path stroke=\"#debee6\" d=\"M15 11h1M20 11h1M14 12h2M19 12h2\" />";
    string constant internal NORMAL_6 = "000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M15 12h3M19 12h1M21 12h3M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 12h1M20 12h1M14 13h3M20 13h3\" />";
    string constant internal NORMAL_7 = "000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h5M19 12h5M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 13h3M20 13h3\" />";

    string constant internal NORMAL_8 = "";
    string constant internal NORMAL_9 = "";
    string constant internal NORMAL_A = "";
    string constant internal NORMAL_B = "";
    string constant internal NORMAL_C = "";
    string constant internal NORMAL_D = "";
    string constant internal NORMAL_E = "";

    string constant internal SPECIAL_0 = "cee7ff\" d=\"M10 10h14M10 11h1M13 11h1M16 11h2M20 11h1M23 11h1M10 12h1M12 12h2M15 12h1M17 12h1M19 12h2M22 12h2M10 13h1M13 13h1M15 13h1M17 13h1M19 13h2M22 13h2M10 14h1M12 14h2M16 14h2M20 14h1M23 14h1M10 15h14\" /><path stroke=\"#b3c9de\" d=\"M11 11h2M14 11h2M18 11h2M21 11h2M11 12h1M14 12h1M16 12h1M18 12h1M21 12h1M11 13h2M14 13h1M16 13h1M18 13h1M21 13h1M11 14h1M14 14h2M18 14h2M21 14h2\" />";
    string constant internal SPECIAL_1 = "000000\" d=\"M10 10h1M12 10h1M14 10h1M16 10h1M18 10h1M20 10h1M22 10h1M11 11h1M13 11h1M15 11h1M17 11h1M19 11h1M21 11h1M23 11h1M10 12h1M12 12h1M14 12h1M16 12h1M18 12h1M20 12h1M22 12h1M11 13h1M13 13h1M15 13h1M17 13h1M19 13h1M21 13h1M23 13h1M10 14h1M12 14h1M14 14h1M16 14h1M18 14h1M20 14h1M22 14h1M11 15h1M13 15h1M15 15h1M17 15h1M19 15h1M21 15h1M23 15h1\" /><path stroke=\"#c3c3c3\" d=\"M11 10h1M13 10h1M15 10h1M17 10h1M19 10h1M21 10h1M23 10h1M10 11h1M12 11h1M14 11h1M16 11h1M18 11h1M20 11h1M22 11h1M11 12h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M10 13h1M12 13h1M14 13h1M16 13h1M18 13h1M20 13h1M22 13h1M11 14h1M13 14h1M15 14h1M17 14h1M19 14h1M21 14h1M23 14h1M10 15h1M12 15h1M14 15h1M16 15h1M18 15h1M20 15h1M22 15h1\" />";
    string constant internal SPECIAL_2 = "000000\" d=\"M12 9h5M18 9h5M12 10h1M16 10h1M18 10h1M22 10h1M10 11h3M16 11h3M22 11h1M10 12h1M12 12h1M16 12h1M18 12h1M22 12h1M13 13h3M19 13h3\" /><path stroke=\"#1f388f\" d=\"M13 10h3M19 10h3\" /><path stroke=\"#294bbf\" d=\"M13 11h3M19 11h3\" /><path stroke=\"#325be8\" d=\"M13 12h3M19 12h3\" />";
    string constant internal SPECIAL_3 = "000000\" d=\"M12 9h11M11 10h1M23 10h1M11 11h1M13 11h9M23 11h1M11 12h1M23 12h1M12 13h11\" /><path stroke=\"#7f7f7f\" d=\"M12 10h11M12 11h1M22 11h1M12 12h11\" />";

    string constant internal SPECIAL_3_OPT = "00a2e8\" opacity= \"0.5\" d=\"M13 11h10M15 12h10M17 13h10M19 14h10M21 15h10M23 16h9M25 17h7M27 18h5M29 19h3M31 20h1\" />";

    function constructFace(uint256 seed) internal pure returns (string memory) {
        uint40 _seed = uint40(seed << 8*3);
        _seed = _seed >> 8*4;

        if (_seed >= 240) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
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
                NORMAL_7
            );
        } else if (_seed >= 96) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_7
            );
        } else if (_seed >= 80) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_7
            );
        } else if (_seed >= 64) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_7
            );
        } else if (_seed >= 48) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_7
            );
        } else if (_seed >= 32) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_7
            );
        } else if (_seed >= 16) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_7
            );
        } else if (_seed >= 9) {
            return string.concat(
                Prefix.prefix(), 
                SPECIAL_0
            );
        } else if (_seed >= 2) {
            return string.concat(
                Prefix.prefix(), 
                SPECIAL_1
            );
        } else if (_seed >= 1) {
            return string.concat(
                Prefix.prefix(), 
                SPECIAL_2
            );
        } else {
            return string.concat(
                Prefix.prefix(),
                SPECIAL_3,
                Prefix.prefix(),
                SPECIAL_3_OPT
            );
        }
    }
}