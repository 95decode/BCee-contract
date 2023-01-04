// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Background {
    string constant internal PREFIX = "<path stroke=\"#";
    string constant internal SUFFIX = "\" d=\"M0 0h32M0 1h32M0 2h32M0 3h32M0 4h32M0 5h32M0 6h32M0 7h32M0 8h32M0 9h32M0 10h32M0 11h32M0 12h32M0 13h32M0 14h32M0 15h32M0 16h32M0 17h32M0 18h32M0 19h32M0 20h32M0 21h32M0 22h32M0 23h32M0 24h32M0 25h32M0 26h32M0 27h32M0 28h32M0 29h32M0 30h32M0 31h32\" />";
    string constant internal NONE = "ffffff";
    string constant internal GRAY = "d9d9d9";
    string constant internal ORANGE = "ffc983";
    string constant internal GREEN = "7dffa4";
    string constant internal BLUE = "93c0fa";
    string constant internal RED = "ff8e90";
    string constant internal SKYBLUE = "c6eaed";
    string constant internal VIOLET = "a99cff";
    string constant internal HALF_YELLOW = "<path stroke=\"#ffffe8\" d=\"M0 0h32M0 1h31M0 2h30M0 3h29M0 4h28M0 5h27M0 6h26M0 7h25M0 8h24M0 9h23M0 10h22M0 11h21M0 12h20M0 13h19M0 14h18M0 15h17M0 16h16M0 17h15M0 18h14M0 19h13M0 20h12M0 21h11M0 22h10M0 23h9M0 24h8M0 25h7M0 26h6M0 27h5M0 28h4M0 29h3M0 30h2M0 31h1\" /><path stroke=\"#faffd1\" d=\"M31 1h1M30 2h2M29 3h3M28 4h4M27 5h5M26 6h6M25 7h7M24 8h8M23 9h9M22 10h10M21 11h11M20 12h12M19 13h13M18 14h14M17 15h15M16 16h16M15 17h17M14 18h18M13 19h19M12 20h20M11 21h21M10 22h22M9 23h23M8 24h24M7 25h25M6 26h26M5 27h27M4 28h28M3 29h29M2 30h30M1 31h31\" />";
    string constant internal HALF_PINK = "<path stroke=\"#ffe7e7\" d=\"M0 0h32M0 1h31M0 2h30M0 3h29M0 4h28M0 5h27M0 6h26M0 7h25M0 8h24M0 9h23M0 10h22M0 11h21M0 12h20M0 13h19M0 14h18M0 15h17M0 16h16M0 17h15M0 18h14M0 19h13M0 20h12M0 21h11M0 22h10M0 23h9M0 24h8M0 25h7M0 26h6M0 27h5M0 28h4M0 29h3M0 30h2M0 31h1\" /><path stroke=\"#ffcbcc\" d=\"M31 1h1M30 2h2M29 3h3M28 4h4M27 5h5M26 6h6M25 7h7M24 8h8M23 9h9M22 10h10M21 11h11M20 12h12M19 13h13M18 14h14M17 15h15M16 16h16M15 17h17M14 18h18M13 19h19M12 20h20M11 21h21M10 22h22M9 23h23M8 24h24M7 25h25M6 26h26M5 27h27M4 28h28M3 29h29M2 30h30M1 31h31\" />";
    string constant internal HALF_VIOLET = "<path stroke=\"#ffd4ff\" d=\"M0 0h32M0 1h31M0 2h30M0 3h29M0 4h28M0 5h27M0 6h26M0 7h25M0 8h24M0 9h23M0 10h22M0 11h21M0 12h20M0 13h19M0 14h18M0 15h17M0 16h16M0 17h15M0 18h14M0 19h13M0 20h12M0 21h11M0 22h10M0 23h9M0 24h8M0 25h7M0 26h6M0 27h5M0 28h4M0 29h3M0 30h2M0 31h1\" /><path stroke=\"#f2c9f2\" d=\"M31 1h1M30 2h2M29 3h3M28 4h4M27 5h5M26 6h6M25 7h7M24 8h8M23 9h9M22 10h10M21 11h11M20 12h12M19 13h13M18 14h14M17 15h15M16 16h16M15 17h17M14 18h18M13 19h19M12 20h20M11 21h21M10 22h22M9 23h23M8 24h24M7 25h25M6 26h26M5 27h27M4 28h28M3 29h29M2 30h30M1 31h31\" />";
    string constant internal GRADIENT_PINK = "<path stroke=\"#ffaec9\" d=\"M0 0h32M0 1h32M0 2h32M0 3h32M0 4h32M0 5h32M0 6h32M0 7h32\" /><path stroke=\"#fcacc7\" d=\"M0 8h32M0 9h32M0 10h32M0 11h32\" /><path stroke=\"#faaac5\" d=\"M0 12h32M0 13h32M0 14h32M0 15h32\" /><path stroke=\"#f2a5bf\" d=\"M0 16h32M0 17h32M0 18h32M0 19h32\" /><path stroke=\"#eba0b9\" d=\"M0 20h32M0 21h32M0 22h32M0 23h32\" /><path stroke=\"#e39bb3\" d=\"M0 24h32M0 25h32M0 26h32M0 27h32\" /><path stroke=\"#d692a9\" d=\"M0 28h32M0 29h32M0 30h32M0 31h32\" />";
    string constant internal GRADIENT_BLUE = "<path stroke=\"#a5edff\" d=\"M0 0h32M0 1h32M0 2h32M0 3h32\" /><path stroke=\"#9fe4f5\" d=\"M0 4h32M0 5h32M0 6h32M0 7h32\" /><path stroke=\"#9added\" d=\"M0 8h32M0 9h32M0 10h32M0 11h32\" /><path stroke=\"#97d8e8\" d=\"M0 12h32M0 13h32M0 14h32M0 15h32\" /><path stroke=\"#94d3e3\" d=\"M0 16h32M0 17h32M0 18h32M0 19h32\" /><path stroke=\"#8fccdb\" d=\"M0 20h32M0 21h32M0 22h32M0 23h32\" /><path stroke=\"#8cc7d6\" d=\"M0 24h32M0 25h32M0 26h32M0 27h32\" /><path stroke=\"#87c0cf\" d=\"M0 28h32M0 29h32M0 30h32M0 31h32\" />";
    string constant internal SPIRAL_SUFFIX = "\" d=\"M1 1h31M1 2h1M31 2h1M1 3h1M31 3h1M1 4h1M4 4h25M31 4h1M1 5h1M4 5h1M28 5h1M31 5h1M1 6h1M4 6h1M28 6h1M31 6h1M1 7h1M4 7h1M7 7h19M28 7h1M31 7h1M1 8h1M4 8h1M7 8h1M25 8h1M28 8h1M31 8h1M1 9h1M4 9h1M7 9h1M25 9h1M28 9h1M31 9h1M1 10h1M4 10h1M7 10h1M10 10h13M25 10h1M28 10h1M31 10h1M1 11h1M4 11h1M7 11h1M10 11h1M22 11h1M25 11h1M28 11h1M31 11h1M1 12h1M4 12h1M7 12h1M10 12h1M22 12h1M25 12h1M28 12h1M31 12h1M1 13h1M4 13h1M7 13h1M10 13h1M13 13h7M22 13h1M25 13h1M28 13h1M31 13h1M1 14h1M4 14h1M7 14h1M10 14h1M13 14h1M19 14h1M22 14h1M25 14h1M28 14h1M31 14h1M1 15h1M4 15h1M7 15h1M10 15h1M13 15h1M19 15h1M22 15h1M25 15h1M28 15h1M31 15h1M1 16h1M4 16h1M7 16h1M10 16h1M13 16h1M16 16h1M19 16h1M22 16h1M25 16h1M28 16h1M31 16h1M1 17h1M4 17h1M7 17h1M10 17h1M13 17h1M16 17h1M19 17h1M22 17h1M25 17h1M28 17h1M31 17h1M1 18h1M4 18h1M7 18h1M10 18h1M13 18h4M19 18h1M22 18h1M25 18h1M28 18h1M31 18h1M1 19h1M4 19h1M7 19h1M10 19h1M19 19h1M22 19h1M25 19h1M28 19h1M31 19h1M1 20h1M4 20h1M7 20h1M10 20h1M19 20h1M22 20h1M25 20h1M28 20h1M31 20h1M1 21h1M4 21h1M7 21h1M10 21h10M22 21h1M25 21h1M28 21h1M31 21h1M1 22h1M4 22h1M7 22h1M22 22h1M25 22h1M28 22h1M31 22h1M1 23h1M4 23h1M7 23h1M22 23h1M25 23h1M28 23h1M31 23h1M1 24h1M4 24h1M7 24h16M25 24h1M28 24h1M31 24h1M1 25h1M4 25h1M25 25h1M28 25h1M31 25h1M1 26h1M4 26h1M25 26h1M28 26h1M31 26h1M1 27h1M4 27h22M28 27h1M31 27h1M1 28h1M28 28h1M31 28h1M1 29h1M28 29h1M31 29h1M1 30h28M31 30h1M31 31h1\" />";
    string constant internal SPIRAL_GRAY = "ff8f91";
    string constant internal SPIRAL_RED = "ff8f91";
    string constant internal SPIRAL_VIOLET ="ebd6ff";
    string constant internal SPIRAL_GREEN = "e0ebe0";
    string constant internal POLKADOT_BLUE = "<path stroke=\"#99d9ea\" d=\"M1 0h2M8 0h2M15 0h2M22 0h2M29 0h2M0 1h1M3 1h1M7 1h1M10 1h1M14 1h1M17 1h1M21 1h1M24 1h1M28 1h1M31 1h1M0 2h1M3 2h1M7 2h1M10 2h1M14 2h1M17 2h1M21 2h1M24 2h1M28 2h1M31 2h1M1 3h2M8 3h2M15 3h2M22 3h2M29 3h2M3 7h2M10 7h2M17 7h2M24 7h2M31 7h1M2 8h1M5 8h1M9 8h1M12 8h1M16 8h1M19 8h1M23 8h1M26 8h1M30 8h1M2 9h1M5 9h1M9 9h1M12 9h1M16 9h1M19 9h1M23 9h1M26 9h1M30 9h1M3 10h2M10 10h2M17 10h2M24 10h2M31 10h1M5 14h2M12 14h2M19 14h2M26 14h2M0 15h1M4 15h1M7 15h1M11 15h1M14 15h1M18 15h1M21 15h1M25 15h1M28 15h1M0 16h1M4 16h1M7 16h1M11 16h1M14 16h1M18 16h1M21 16h1M25 16h1M28 16h1M5 17h2M12 17h2M19 17h2M26 17h2M0 21h2M7 21h2M14 21h2M21 21h2M28 21h2M2 22h1M6 22h1M9 22h1M13 22h1M16 22h1M20 22h1M23 22h1M27 22h1M30 22h1M2 23h1M6 23h1M9 23h1M13 23h1M16 23h1M20 23h1M23 23h1M27 23h1M30 23h1M0 24h2M7 24h2M14 24h2M21 24h2M28 24h2M2 28h2M9 28h2M16 28h2M23 28h2M30 28h2M1 29h1M4 29h1M8 29h1M11 29h1M15 29h1M18 29h1M22 29h1M25 29h1M29 29h1M1 30h1M4 30h1M8 30h1M11 30h1M15 30h1M18 30h1M22 30h1M25 30h1M29 30h1M2 31h2M9 31h2M16 31h2M23 31h2M30 31h2\" /><path stroke=\"#8ec9d9\" d=\"M1 1h2M8 1h2M15 1h2M22 1h2M29 1h2M1 2h2M8 2h2M15 2h2M22 2h2M29 2h2M3 8h2M10 8h2M17 8h2M24 8h2M31 8h1M3 9h2M10 9h2M17 9h2M24 9h2M31 9h1M5 15h2M12 15h2M19 15h2M26 15h2M5 16h2M12 16h2M19 16h2M26 16h2M0 22h2M7 22h2M14 22h2M21 22h2M28 22h2M0 23h2M7 23h2M14 23h2M21 23h2M28 23h2M2 29h2M9 29h2M16 29h2M23 29h2M30 29h2M2 30h2M9 30h2M16 30h2M23 30h2M30 30h2\" />";
    string constant internal GALAXY = "<path stroke=\"#7f7f7f\" d=\"M0 0h7M0 1h6M0 2h3M22 2h3M29 2h1M0 3h2M12 3h1M19 3h7M28 3h4M0 4h1M12 4h1M16 4h10M28 4h4M0 5h1M11 5h3M17 5h15M11 6h3M19 6h13M9 7h5M15 7h1M21 7h9M7 8h7M15 8h3M21 8h10M9 9h4M22 9h8M6 10h1M11 10h2M18 10h1M23 10h4M11 11h1M18 11h2M24 11h3M6 12h2M18 12h2M24 12h3M0 13h1M6 13h1M18 13h2M0 14h1M5 14h2M8 14h1M17 14h4M24 14h1M0 15h2M3 15h3M9 15h2M15 15h8M25 15h1M0 16h2M5 16h1M13 16h13M28 16h3M0 17h2M15 17h9M27 17h4M0 18h3M17 18h4M24 18h7M0 19h7M18 19h3M26 19h6M0 20h9M12 20h2M18 20h3M28 20h3M0 21h7M12 21h2M18 21h2M29 21h1M0 22h3M11 22h4M18 22h1M29 22h1M0 23h2M10 23h6M0 24h2M5 24h2M8 24h13M30 24h1M0 25h2M6 25h1M8 25h12M0 26h1M10 26h6M0 27h1M11 27h4M12 28h2M30 28h2M12 29h2M24 29h2M30 29h2M12 30h1M25 30h2M29 30h3M29 31h3\" /><path stroke=\"#c3c3c3\" d=\"M19 0h13M22 1h9M5 2h1M25 2h4M5 3h2M26 3h2M1 4h10M26 4h2M2 5h8M0 6h1M5 6h2M0 7h2M5 7h1M14 7h1M0 8h2M14 8h1M0 9h3M13 9h3M31 9h1M0 10h6M13 10h3M31 10h1M0 11h8M12 11h5M31 11h1M0 12h5M9 12h9M28 12h4M1 13h2M7 13h1M10 13h8M24 13h8M1 14h1M7 14h1M12 14h5M25 14h7M6 15h3M13 15h2M28 15h4M6 16h3M31 16h1M6 17h3M14 17h1M31 17h1M3 18h9M14 18h1M21 18h3M31 18h1M7 19h7M21 19h3M9 20h3M21 20h3M27 20h1M7 21h2M20 21h6M27 21h2M6 22h3M17 22h1M19 22h10M6 23h3M19 23h11M7 24h1M21 24h3M26 24h4M7 25h1M21 25h11M1 26h1M20 26h12M1 27h2M22 27h10M0 28h4M18 28h1M22 28h1M26 28h4M0 29h9M18 29h2M26 29h4M0 30h8M17 30h4M27 30h2M0 31h4M14 31h10M27 31h2\" />";
    string constant internal CONFETTI = "<path stroke=\"#3f48cc\" d=\"M0 0h1M0 1h2M0 2h3M0 3h3M0 4h3M0 5h3M0 6h3M0 7h3M0 8h3M0 9h3M0 10h3M0 11h3M0 12h3M0 13h3M0 14h3M0 15h3\" /><path stroke=\"#7092be\" d=\"M20 1h1M20 2h3M20 3h5M20 4h7M20 5h9M20 6h11M20 7h12M20 8h12M20 9h12M20 10h12M20 11h12M20 12h12M20 13h12M20 14h12M20 15h12\" /><path stroke=\"#fff200\" d=\"M8 2h1M8 3h2M8 4h3M8 5h4M8 6h5M8 7h5M9 8h4M10 9h3M11 10h2M12 11h1M8 19h5M8 20h17M8 21h18M8 22h19\" /><path stroke=\"#ff7f27\" d=\"M3 3h1M3 4h2M3 5h3M3 6h4M3 7h5M3 8h6M3 9h7M3 10h8M3 11h9M3 12h10M3 13h11M3 14h12M3 15h13M3 16h14M3 17h15M3 18h16\" /><path stroke=\"#22b14c\" d=\"M13 4h1M13 5h2M13 6h4M13 7h5M13 8h6M13 9h7M13 10h7M13 11h7M13 12h7M14 13h6M15 14h5M16 15h4M17 16h12M18 17h12M19 18h12M13 19h19\" /><path stroke=\"#ffaec9\" d=\"M0 19h1M0 20h2M0 21h3M0 22h4M0 23h4M0 24h5M0 25h6M0 26h7M0 27h8M0 28h8M0 29h9M0 30h10\" /><path stroke=\"#ed1c24\" d=\"M4 19h4M4 20h4M4 21h4M4 22h4M4 23h12M5 24h13M6 25h14M7 26h15M8 27h14M8 28h14M9 29h13\" /><path stroke=\"#7f7f7f\" d=\"M16 23h7M18 24h6M20 25h2M23 25h2M25 26h1\" /><path stroke=\"#b97a57\" d=\"M22 25h1M22 26h3M22 27h5M22 28h7M22 29h9M22 30h10M22 31h10\" />";
    
    function constructBackground(uint256 seed) internal pure returns (string memory) {
        uint40 _seed = uint40(seed >> 8*4);
        string memory color;

        if (_seed >= 206) {
            color = NONE;
        } else if (_seed >= 190) {
            color = GRAY;
        } else if (_seed >= 174) {
            color = ORANGE;
        } else if (_seed >= 158) {
            color = GREEN;
        } else if (_seed >= 142) {
            color = BLUE;
        } else if (_seed >= 126) {
            color = RED;
        } else if (_seed >= 110) {
            color = SKYBLUE;
        } else if (_seed >= 94) {
            color = VIOLET;
        } else if (_seed >= 78) {
            return HALF_YELLOW;
        } else if (_seed >= 62) {
            return HALF_PINK;
        } else if (_seed >= 46) {
            return HALF_VIOLET;
        } else if (_seed >= 32) {
            return GRADIENT_PINK;
        } else if (_seed >= 22) {
            return GRADIENT_BLUE;
        } else if (_seed >= 12) {
            return string.concat(
                PREFIX,
                NONE,
                SUFFIX,
                PREFIX,
                SPIRAL_GRAY,
                SPIRAL_SUFFIX
            );
        } else if (_seed >= 10) {
            return string.concat(
                PREFIX,
                NONE,
                SUFFIX,
                PREFIX,
                SPIRAL_RED,
                SPIRAL_SUFFIX
            );
        } else if (_seed >= 8) {
            return string.concat(
                PREFIX,
                NONE,
                SUFFIX,
                PREFIX,
                SPIRAL_VIOLET,
                SPIRAL_SUFFIX
            );
        } else if (_seed >= 6) {
            return string.concat(
                PREFIX,
                NONE,
                SUFFIX,
                PREFIX,
                SPIRAL_GREEN,
                SPIRAL_SUFFIX
            );
        } else if (_seed >= 4) {
            return string.concat(
                PREFIX,
                NONE,
                SUFFIX,
                POLKADOT_BLUE
            );
        } else if (_seed >= 2) {
            return string.concat(
                PREFIX,
                NONE,
                SUFFIX,
                GALAXY
            );
        } else {
            return string.concat(
                PREFIX,
                NONE,
                SUFFIX,
                CONFETTI
            );
        }

        return string.concat(
            PREFIX,
            color,
            SUFFIX
        );
    }
}
