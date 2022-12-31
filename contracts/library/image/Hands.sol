// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Prefix.sol";

library Hands {
    string constant internal NORMAL_0 = "000000\" d=\"M11 17h1M14 17h1M11 18h1M14 18h1M11 19h1M14 19h1M12 20h2\" />";
    string constant internal NORMAL_1 = "000000\" d=\"M11 17h1M14 17h1M11 18h1M14 18h1M11 19h1M14 19h1M12 20h2\" /><path stroke=\"#880015\" d=\"M8 18h3M15 18h10M8 19h3M15 19h10\" />";
    string constant internal NORMAL_2 = "000000\" d=\"M11 17h1M14 17h1M16 17h1M9 18h3M14 18h3M9 19h3M14 19h3M12 20h2M16 20h1\" /><path stroke=\"#7f7f7f\" d=\"M17 18h8M17 19h6\" />";
    string constant internal NORMAL_3 = "000000\" d=\"M19 13h1M13 14h7M13 15h1M19 15h1M12 16h3M16 16h4M15 17h2M15 18h1M12 19h3\" /><path stroke=\"#7f7f7f\" d=\"M14 15h5M15 16h1\" />";
    string constant internal NORMAL_4 = "ed1c24\" d=\"M19 10h1M18 11h3M17 12h3M16 13h3M15 14h3M16 15h1M10 19h1M9 20h3M8 21h3M7 22h3M6 23h3M7 24h1\" /><path stroke=\"#7f7f7f\" d=\"M14 14h1M14 15h2M15 16h2M16 17h1M10 18h2M11 19h2M12 20h2\" /><path stroke=\"#000000\" d=\"M13 15h1M14 16h1M11 17h1M15 17h1M12 18h1M15 18h1M13 19h2\" />";
    string constant internal NORMAL_5 = "000000\" d=\"M13 12h3M13 13h1M16 13h1M13 14h3M13 15h1M12 16h3M15 17h1M15 18h1M12 19h3\" /><path stroke=\"#b5e61d\" d=\"M14 13h2\" />";
    string constant internal NORMAL_6 = "000000\" d=\"M11 17h1M14 17h1M11 18h1M14 18h1M11 19h1M14 19h1M12 20h2\" /><path stroke=\"#3f48cc\" d=\"M15 19h1M14 20h3M13 21h5M14 22h3M15 23h1\" />";
    string constant internal NORMAL_7 = "f8acaf\" d=\"M21 16h1\" /><path stroke=\"#f9b5b8\" d=\"M22 16h1M24 16h1\" /><path stroke=\"#f9aeb1\" d=\"M23 16h1M22 17h1\" /><path stroke=\"#000000\" d=\"M4 17h8M14 17h7M4 18h1M11 18h1M14 18h1M4 19h8M14 19h6M12 20h2\" /><path stroke=\"#f8a7aa\" d=\"M21 17h1\" /><path stroke=\"#f9b2b5\" d=\"M23 17h1\" /><path stroke=\"#f9NORMAL_b3\" d=\"M24 17h1\" /><path stroke=\"#fbc9cb\" d=\"M25 17h1\" /><path stroke=\"#b97a57\" d=\"M5 18h6M15 18h5\" /><path stroke=\"#f9b2b4\" d=\"M20 18h1\" /><path stroke=\"#fabcbf\" d=\"M21 18h1\" /><path stroke=\"#fbd2d4\" d=\"M22 18h1\" /><path stroke=\"#f58b8f\" d=\"M23 18h1\" /><path stroke=\"#f5858a\" d=\"M24 18h1\" /><path stroke=\"#f79b9f\" d=\"M25 18h1M21 19h1\" /><path stroke=\"#4a090b\" d=\"M20 19h1\" /><path stroke=\"#f8abae\" d=\"M22 19h1\" /><path stroke=\"#f8a2a6\" d=\"M23 19h1\" /><path stroke=\"#fcd6d7\" d=\"M24 19h1\" /><path stroke=\"#f8a8ab\" d=\"M25 19h1\" /><path stroke=\"#f9afb2\" d=\"M21 20h1\" /><path stroke=\"#f9b6b9\" d=\"M22 20h1\" /><path stroke=\"#f9b9bb\" d=\"M23 20h1\" /><path stroke=\"#fcd3d5\" d=\"M24 20h1\" />";

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

    function constructHands(uint256 seed) internal pure returns (string memory) {
        uint40 _seed = uint40(seed << 8*4);
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
                NORMAL_0
            );
        } else if (_seed >= 96) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        } else if (_seed >= 80) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        } else if (_seed >= 64) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        } else if (_seed >= 48) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        } else if (_seed >= 32) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        } else if (_seed >= 16) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        } else if (_seed >= 9) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        } else if (_seed >= 2) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        } else if (_seed >= 1) {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        } else {
            return string.concat(
                Prefix.prefix(), 
                NORMAL_0
            );
        }
    }
}