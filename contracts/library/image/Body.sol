// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Body {
    string constant internal PREFIX = "<path stroke=\"#";
    string constant internal SUFFIX = "\" d=\"M13 8h7M13 9h8M12 10h10M12 11h10M12 12h10M11 13h10M10 14h11M9 15h12M9 16h13M9 17h13M9 18h13M9 19h12M9 20h12M9 21h12M9 22h12M10 23h10\" />";
    
    string constant internal BODY = "000000\" d=\"M13 7h7M12 8h1M20 8h1M12 9h1M21 9h1M11 10h1M22 10h1M11 11h1M22 11h1M11 12h1M22 12h1M10 13h1M21 13h1M9 14h1M21 14h1M8 15h1M21 15h1M8 16h1M22 16h1M8 17h1M22 17h1M8 18h1M22 18h1M8 19h1M21 19h1M8 20h1M21 20h1M8 21h1M21 21h1M8 22h1M21 22h1M9 23h1M20 23h1M10 24h10M11 25h1M17 25h1M11 26h1M17 26h1M11 27h2M17 27h2\" />";
    string constant internal SHADOW = "7f7f7f\" opacity= \"0.5\" d=\"M13 26h3M9 27h2M13 27h4M19 27h2M9 28h14M12 29h15M19 30h9\" />";

    string constant internal NORMAL_0 = "efe4b0";
    string constant internal NORMAL_1 = "fff200";
    string constant internal NORMAL_2 = "ffffff";
    string constant internal NORMAL_3 = "ba9fbe";
    string constant internal NORMAL_4 = "c3c3c3";
    string constant internal NORMAL_5 = "756f0e";
    string constant internal NORMAL_6 = "b97a57";
    string constant internal NORMAL_7 = "ffaec9";
    string constant internal NORMAL_8 = "ff575a";
    string constant internal NORMAL_9 = "741b7c";

    string constant internal SPECIAL_0 = "ffffff";

    string constant internal SPECIAL_1 = "<path stroke=\"#c9ff20\" d=\"M13 8h4M18 8h2M13 9h1M15 9h6M13 10h7M21 10h1M12 11h10M12 12h3M16 12h6M11 13h7M19 13h2M10 14h1M12 14h9M9 15h12M9 16h3M13 16h7M21 16h1M9 17h6M16 17h1M18 17h4M9 18h1M11 18h11M9 19h12M9 20h3M13 20h3M17 20h1M19 20h2M9 21h12M10 22h8M19 22h2M10 23h2M13 23h7\" /><path stroke=\"#b5e61d\" d=\"M17 8h1M14 9h1M12 10h1M20 10h1M15 12h1M18 13h1M11 14h1M12 16h1M20 16h1M15 17h1M17 17h1M10 18h1M12 20h1M16 20h1M18 20h1M9 22h1M18 22h1M12 23h1\" />";
    
    string constant internal SP23_suffix = "\" d=\"M13 8h1M15 8h1M17 8h1M19 8h1M13 9h1M15 9h1M17 9h1M19 9h1M13 10h1M15 10h1M17 10h1M19 10h1M21 10h1M13 11h1M15 11h1M17 11h1M19 11h1M21 11h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M11 13h1M13 13h1M15 13h1M17 13h1M19 13h1M11 14h1M13 14h1M15 14h1M17 14h1M19 14h1M9 15h1M11 15h1M13 15h1M15 15h1M17 15h1M19 15h1M9 16h1M11 16h1M13 16h1M15 16h1M17 16h1M19 16h1M21 16h1M9 17h1M11 17h1M13 17h1M15 17h1M17 17h1M19 17h1M21 17h1M9 18h1M11 18h1M13 18h1M15 18h1M17 18h1M19 18h1M21 18h1M9 19h1M11 19h1M13 19h1M15 19h1M17 19h1M19 19h1M9 20h1M11 20h1M13 20h1M15 20h1M17 20h1M19 20h1M9 21h1M11 21h1M13 21h1M15 21h1M17 21h1M19 21h1M9 22h1M11 22h1M13 22h1M15 22h1M17 22h1M19 22h1M11 23h1M13 23h1M15 23h1M17 23h1M19 23h1\" />";

    string constant internal SPECIAL_2 = "c3c3c3";
    string constant internal SPECIAL_3 = "efe4b0";

    string constant internal SP23_gray = "<path stroke=\"#858585\" d=\"M14 8h1M16 8h1M18 8h1M14 9h1M16 9h1M18 9h1M20 9h1M12 10h1M14 10h1M16 10h1M18 10h1M20 10h1M12 11h1M14 11h1M16 11h1M18 11h1M20 11h1M12 12h1M14 12h1M16 12h1M18 12h1M20 12h1M12 13h1M14 13h1M16 13h1M18 13h1M20 13h1M10 14h1M12 14h1M14 14h1M16 14h1M18 14h1M20 14h1M10 15h1M12 15h1M14 15h1M16 15h1M18 15h1M20 15h1M10 16h1M12 16h1M14 16h1M16 16h1M18 16h1M20 16h1M10 17h1M12 17h1M14 17h1M16 17h1M18 17h1M20 17h1M10 18h1M12 18h1M14 18h1M16 18h1M18 18h1M20 18h1M10 19h1M12 19h1M14 19h1M16 19h1M18 19h1M20 19h1M10 20h1M12 20h1M14 20h1M16 20h1M18 20h1M20 20h1M10 21h1M12 21h1M14 21h1M16 21h1M18 21h1M20 21h1M10 22h1M12 22h1M14 22h1M16 22h1M18 22h1M20 22h1M10 23h1M12 23h1M14 23h1M16 23h1M18 23h1\" />";
    
    

    function constructBody(uint256 seed) internal pure returns (string memory) {
        uint40 _seed = uint40(seed << 8);
        _seed = _seed >> 8*4;
        string memory color;

        if (_seed >= 232) {
            color = NORMAL_0;
        } else if (_seed >= 208) {
            color = NORMAL_1;
        } else if (_seed >= 184) {
            color = NORMAL_2;
        } else if (_seed >= 160) {
            color = NORMAL_3;
        } else if (_seed >= 136) {
            color = NORMAL_4;
        } else if (_seed >= 112) {
            color = NORMAL_5;
        } else if (_seed >= 88) {
            color = NORMAL_6;
        } else if (_seed >= 64) {
            color = NORMAL_7;
        } else if (_seed >= 40) {
            color = NORMAL_8;
        } else if (_seed >= 16) {
            color = NORMAL_9;
        } else if (_seed >= 12) {
            color = SPECIAL_0;
        } else if (_seed >= 8) {
            return SPECIAL_1;
        } else if (_seed >= 4) {
            return string.concat(
                PREFIX,
                BODY,
                PREFIX,
                SHADOW,
                PREFIX,
                SPECIAL_2,
                SP23_suffix
            );
        } else {
            return string.concat(
                PREFIX,
                BODY,
                PREFIX,
                SHADOW,
                PREFIX,
                SPECIAL_3,
                SP23_suffix
            );
        }

        return string.concat(
            PREFIX,
            BODY,
            PREFIX,
            SHADOW,
            PREFIX,
            color,
            SUFFIX
        );
    }
}
