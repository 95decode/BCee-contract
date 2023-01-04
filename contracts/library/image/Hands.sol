// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Hands {
    string constant internal NONE = "<path stroke=\"#000000\" d=\"M11 17h1M14 17h1M11 18h1M14 18h1M11 19h1M14 19h1M12 20h2\" />";
    string constant internal BAR = "<path stroke=\"#47080b\" d=\"M8 18h3M15 18h10M8 19h3M15 19h10\" />";
    string constant internal YELLOW_CARD = "<path stroke=\"#fff200\" d=\"M15 19h1M14 20h3M13 21h5M14 22h3M15 23h1\" />";
    string constant internal RED_CARD = "<path stroke=\"#ed1c24\" d=\"M15 19h1M14 20h3M13 21h5M14 22h3M15 23h1\" />";
    string constant internal FLAG = "<path stroke=\"#000000\" d=\"M13 12h3M13 13h1M16 13h1M13 14h3M13 15h1M12 16h3M15 17h1M15 18h1M12 19h3\" /><path stroke=\"#b5e61d\" d=\"M14 13h2\" />";
    string constant internal GOOD = "<path stroke=\"#000000\" d=\"M14 15h1M12 16h2M15 16h1M15 17h1M15 18h1M12 19h3\" />";
    string constant internal SICKLE = "<path stroke=\"#000000\" d=\"M11 17h1M14 17h1M4 18h8M14 18h15M4 19h8M14 19h13M28 19h1M12 20h2M28 20h1M28 21h1M27 22h2M27 23h1M26 24h2M25 25h2M23 26h3\" /><path stroke=\"#7f7f7f\" d=\"M27 19h1M27 20h1M26 21h2M26 22h1M25 23h2M24 24h2M23 25h2M22 26h1\" />";
    string constant internal MATCH = "<path stroke=\"#ed1c24\" d=\"M14 14h2\" /><path stroke=\"#b97a57\" d=\"M14 15h2M15 16h1M15 19h1M14 20h2\" /><path stroke=\"#000000\" d=\"M12 16h3M15 17h1M15 18h1M12 19h3\" />";
    string constant internal BRIEFCASE= "<path stroke=\"#000000\" d=\"M11 17h1M14 17h1M11 18h1M14 18h1M11 19h1M14 19h1M10 20h6M10 21h2M14 21h2M8 22h10M8 23h1M11 23h1M14 23h1M17 23h1M8 24h1M11 24h4M17 24h1M8 25h1M17 25h1M8 26h10\" /><path stroke=\"#7f7f7f\" d=\"M9 23h2M15 23h2M9 24h2M15 24h2M9 25h8\" /><path stroke=\"#c3c3c3\" d=\"M12 23h2\" />";
    string constant internal DAGGER = "<path stroke=\"#000000\" d=\"M11 17h1M14 17h1M16 17h1M9 18h3M14 18h3M9 19h3M14 19h3M12 20h2M16 20h1\" /><path stroke=\"#7f7f7f\" d=\"M17 18h8M17 19h6\" />";
    string constant internal HAMMER = "<path stroke=\"#000000\" d=\"M21 15h3M20 16h1M24 16h1M4 17h8M14 17h7M24 17h1M4 18h1M11 18h1M14 18h1M24 18h1M4 19h8M14 19h7M24 19h1M12 20h2M20 20h1M24 20h1M21 21h3\" /><path stroke=\"#ed1c24\" d=\"M21 16h3M21 17h3M20 18h4M21 19h3M21 20h3\" /><path stroke=\"#b97a57\" d=\"M5 18h6M15 18h5\" />";
    string constant internal HEART = "<path stroke=\"#ed1c24\" d=\"M14 14h2M17 14h2M14 15h5M15 16h3M16 17h1\" /><path stroke=\"#000000\" d=\"M12 16h3M15 17h1M15 18h1M12 19h3\" />";
    string constant internal GUN = "<path stroke=\"#000000\" d=\"M19 13h1M13 14h7M13 15h1M19 15h1M12 16h3M16 16h4M15 17h2M15 18h1M12 19h3\" /><path stroke=\"#7f7f7f\" d=\"M14 15h5M15 16h1\" />";

    function constructHands(uint256 seed) internal pure returns (string memory) {
        uint40 _seed = uint40(seed << 8*4);
        _seed = _seed >> 8*4;

        if (_seed >= 206) {
            return NONE;
        } else if (_seed >= 181) {
            return string.concat(
                NONE,
                BAR
            );
        } else if (_seed >= 156) {
            return string.concat(
                NONE,
                YELLOW_CARD
            );
        } else if (_seed >= 131) {
            return string.concat(
                NONE,
                RED_CARD
            );
        } else if (_seed >= 106) {
            return FLAG;
        } else if (_seed >= 81) {
            return GOOD;
        } else if (_seed >= 61) {
            return SICKLE;
        } else if (_seed >= 41) {
            return MATCH;
        } else if (_seed >= 31) {
            return BRIEFCASE;
        } else if (_seed >= 21) {
            return DAGGER;
        } else if (_seed >= 11) {
            return HAMMER;
        } else if (_seed >= 5) {
            return HEART;
        } else {
            return GUN;
        }
    }
}
