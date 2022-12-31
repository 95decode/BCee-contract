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

    string constant internal SPECIAL_GRAY = "<path stroke=\"#d9d9d9\" d=\"M0 0h1M3 0h1M6 0h1M9 0h1M12 0h1M15 0h2M19 0h1M22 0h1M25 0h1M28 0h1M31 0h1M1 1h1M4 1h1M7 1h1M9 1h1M12 1h1M15 1h2M19 1h1M22 1h1M24 1h1M27 1h1M30 1h1M2 2h1M5 2h1M7 2h1M10 2h1M12 2h1M15 2h2M19 2h1M21 2h1M24 2h1M26 2h1M29 2h1M0 3h1M3 3h1M5 3h1M8 3h1M10 3h1M13 3h1M15 3h2M18 3h1M21 3h1M23 3h1M26 3h1M28 3h1M31 3h1M1 4h1M4 4h1M6 4h1M8 4h1M11 4h1M13 4h1M15 4h2M18 4h1M20 4h1M23 4h1M25 4h1M27 4h1M30 4h1M2 5h2M5 5h1M7 5h1M9 5h1M11 5h1M13 5h1M15 5h2M18 5h1M20 5h1M22 5h1M24 5h1M26 5h1M28 5h2M0 6h1M4 6h1M6 6h1M8 6h1M10 6h1M12 6h2M15 6h2M18 6h2M21 6h1M23 6h1M25 6h1M27 6h1M31 6h1M1 7h2M5 7h1M7 7h1M9 7h2M12 7h1M14 7h4M19 7h1M21 7h2M24 7h1M26 7h1M29 7h2M3 8h2M6 8h1M8 8h2M11 8h2M14 8h4M19 8h2M22 8h2M25 8h1M27 8h2M0 9h2M5 9h1M7 9h4M12 9h8M21 9h4M26 9h1M30 9h2M2 10h2M6 10h2M9 10h14M24 10h2M28 10h2M4 11h2M8 11h1M10 11h12M23 11h1M26 11h2M0 12h3M6 12h20M29 12h3M3 13h4M9 13h14M25 13h4M7 14h18M0 15h32M0 16h32M7 17h18M3 18h4M9 18h14M25 18h4M0 19h3M6 19h20M29 19h3M4 20h2M8 20h1M10 20h12M23 20h1M26 20h2M2 21h2M6 21h2M9 21h14M24 21h2M28 21h2M0 22h2M5 22h1M7 22h4M12 22h8M21 22h4M26 22h1M30 22h2M3 23h2M6 23h1M8 23h2M11 23h2M14 23h4M19 23h2M22 23h2M25 23h1M27 23h2M1 24h2M5 24h1M7 24h1M9 24h2M12 24h1M14 24h4M19 24h1M21 24h2M24 24h1M26 24h1M29 24h2M0 25h1M4 25h1M6 25h1M8 25h1M10 25h1M12 25h2M15 25h2M18 25h2M21 25h1M23 25h1M25 25h1M27 25h1M31 25h1M2 26h2M5 26h1M7 26h1M9 26h1M11 26h1M13 26h1M15 26h2M18 26h1M20 26h1M22 26h1M24 26h1M26 26h1M28 26h2M1 27h1M4 27h1M6 27h1M8 27h1M11 27h1M13 27h1M15 27h2M18 27h1M20 27h1M23 27h1M25 27h1M27 27h1M30 27h1M0 28h1M3 28h1M5 28h1M8 28h1M10 28h1M13 28h1M15 28h2M18 28h1M21 28h1M23 28h1M26 28h1M28 28h1M31 28h1M2 29h1M5 29h1M7 29h1M10 29h1M12 29h1M15 29h2M19 29h1M21 29h1M24 29h1M26 29h1M29 29h1M1 30h1M4 30h1M7 30h1M9 30h1M12 30h1M15 30h2M19 30h1M22 30h1M24 30h1M27 30h1M30 30h1M0 31h1M3 31h1M6 31h1M9 31h1M12 31h1M15 31h2M19 31h1M22 31h1M25 31h1M28 31h1M31 31h1\" />";

    string constant internal SPIRAL_RED = "<path stroke=\"#ff8f91\" d=\"M1 1h31M1 2h1M31 2h1M1 3h1M3 3h27M31 3h1M1 4h1M3 4h1M29 4h1M31 4h1M1 5h1M3 5h1M5 5h23M29 5h1M31 5h1M1 6h1M3 6h1M5 6h1M27 6h1M29 6h1M31 6h1M1 7h1M3 7h1M5 7h1M7 7h19M27 7h1M29 7h1M31 7h1M1 8h1M3 8h1M5 8h1M7 8h1M25 8h1M27 8h1M29 8h1M31 8h1M1 9h1M3 9h1M5 9h1M7 9h1M9 9h15M25 9h1M27 9h1M29 9h1M31 9h1M1 10h1M3 10h1M5 10h1M7 10h1M9 10h1M23 10h1M25 10h1M27 10h1M29 10h1M31 10h1M1 11h1M3 11h1M5 11h1M7 11h1M9 11h1M11 11h11M23 11h1M25 11h1M27 11h1M29 11h1M31 11h1M1 12h1M3 12h1M5 12h1M7 12h1M9 12h1M11 12h1M21 12h1M23 12h1M25 12h1M27 12h1M29 12h1M31 12h1M1 13h1M3 13h1M5 13h1M7 13h1M9 13h1M11 13h1M13 13h7M21 13h1M23 13h1M25 13h1M27 13h1M29 13h1M31 13h1M1 14h1M3 14h1M5 14h1M7 14h1M9 14h1M11 14h1M13 14h1M19 14h1M21 14h1M23 14h1M25 14h1M27 14h1M29 14h1M31 14h1M1 15h1M3 15h1M5 15h1M7 15h1M9 15h1M11 15h1M13 15h1M15 15h3M19 15h1M21 15h1M23 15h1M25 15h1M27 15h1M29 15h1M31 15h1M1 16h1M3 16h1M5 16h1M7 16h1M9 16h1M11 16h1M13 16h1M15 16h1M17 16h1M19 16h1M21 16h1M23 16h1M25 16h1M27 16h1M29 16h1M31 16h1M1 17h1M3 17h1M5 17h1M7 17h1M9 17h1M11 17h1M13 17h1M17 17h1M19 17h1M21 17h1M23 17h1M25 17h1M27 17h1M29 17h1M31 17h1M1 18h1M3 18h1M5 18h1M7 18h1M9 18h1M11 18h1M13 18h5M19 18h1M21 18h1M23 18h1M25 18h1M27 18h1M29 18h1M31 18h1M1 19h1M3 19h1M5 19h1M7 19h1M9 19h1M11 19h1M19 19h1M21 19h1M23 19h1M25 19h1M27 19h1M29 19h1M31 19h1M1 20h1M3 20h1M5 20h1M7 20h1M9 20h1M11 20h9M21 20h1M23 20h1M25 20h1M27 20h1M29 20h1M31 20h1M1 21h1M3 21h1M5 21h1M7 21h1M9 21h1M21 21h1M23 21h1M25 21h1M27 21h1M29 21h1M31 21h1M1 22h1M3 22h1M5 22h1M7 22h1M9 22h13M23 22h1M25 22h1M27 22h1M29 22h1M31 22h1M1 23h1M3 23h1M5 23h1M7 23h1M23 23h1M25 23h1M27 23h1M29 23h1M31 23h1M1 24h1M3 24h1M5 24h1M7 24h17M25 24h1M27 24h1M29 24h1M31 24h1M1 25h1M3 25h1M5 25h1M25 25h1M27 25h1M29 25h1M31 25h1M1 26h1M3 26h1M5 26h21M27 26h1M29 26h1M31 26h1M1 27h1M3 27h1M27 27h1M29 27h1M31 27h1M1 28h1M3 28h25M29 28h1M31 28h1M1 29h1M29 29h1M31 29h1M1 30h29M31 30h1M31 31h1\" />";
    string constant internal SPIRAL_VIOLET = "<path stroke=\"#ebd6ff\" d=\"M1 1h31M1 2h1M31 2h1M1 3h1M3 3h27M31 3h1M1 4h1M3 4h1M29 4h1M31 4h1M1 5h1M3 5h1M5 5h23M29 5h1M31 5h1M1 6h1M3 6h1M5 6h1M27 6h1M29 6h1M31 6h1M1 7h1M3 7h1M5 7h1M7 7h19M27 7h1M29 7h1M31 7h1M1 8h1M3 8h1M5 8h1M7 8h1M25 8h1M27 8h1M29 8h1M31 8h1M1 9h1M3 9h1M5 9h1M7 9h1M9 9h15M25 9h1M27 9h1M29 9h1M31 9h1M1 10h1M3 10h1M5 10h1M7 10h1M9 10h1M23 10h1M25 10h1M27 10h1M29 10h1M31 10h1M1 11h1M3 11h1M5 11h1M7 11h1M9 11h1M11 11h11M23 11h1M25 11h1M27 11h1M29 11h1M31 11h1M1 12h1M3 12h1M5 12h1M7 12h1M9 12h1M11 12h1M21 12h1M23 12h1M25 12h1M27 12h1M29 12h1M31 12h1M1 13h1M3 13h1M5 13h1M7 13h1M9 13h1M11 13h1M13 13h7M21 13h1M23 13h1M25 13h1M27 13h1M29 13h1M31 13h1M1 14h1M3 14h1M5 14h1M7 14h1M9 14h1M11 14h1M13 14h1M19 14h1M21 14h1M23 14h1M25 14h1M27 14h1M29 14h1M31 14h1M1 15h1M3 15h1M5 15h1M7 15h1M9 15h1M11 15h1M13 15h1M15 15h3M19 15h1M21 15h1M23 15h1M25 15h1M27 15h1M29 15h1M31 15h1M1 16h1M3 16h1M5 16h1M7 16h1M9 16h1M11 16h1M13 16h1M15 16h1M17 16h1M19 16h1M21 16h1M23 16h1M25 16h1M27 16h1M29 16h1M31 16h1M1 17h1M3 17h1M5 17h1M7 17h1M9 17h1M11 17h1M13 17h1M17 17h1M19 17h1M21 17h1M23 17h1M25 17h1M27 17h1M29 17h1M31 17h1M1 18h1M3 18h1M5 18h1M7 18h1M9 18h1M11 18h1M13 18h5M19 18h1M21 18h1M23 18h1M25 18h1M27 18h1M29 18h1M31 18h1M1 19h1M3 19h1M5 19h1M7 19h1M9 19h1M11 19h1M19 19h1M21 19h1M23 19h1M25 19h1M27 19h1M29 19h1M31 19h1M1 20h1M3 20h1M5 20h1M7 20h1M9 20h1M11 20h9M21 20h1M23 20h1M25 20h1M27 20h1M29 20h1M31 20h1M1 21h1M3 21h1M5 21h1M7 21h1M9 21h1M21 21h1M23 21h1M25 21h1M27 21h1M29 21h1M31 21h1M1 22h1M3 22h1M5 22h1M7 22h1M9 22h13M23 22h1M25 22h1M27 22h1M29 22h1M31 22h1M1 23h1M3 23h1M5 23h1M7 23h1M23 23h1M25 23h1M27 23h1M29 23h1M31 23h1M1 24h1M3 24h1M5 24h1M7 24h17M25 24h1M27 24h1M29 24h1M31 24h1M1 25h1M3 25h1M5 25h1M25 25h1M27 25h1M29 25h1M31 25h1M1 26h1M3 26h1M5 26h21M27 26h1M29 26h1M31 26h1M1 27h1M3 27h1M27 27h1M29 27h1M31 27h1M1 28h1M3 28h25M29 28h1M31 28h1M1 29h1M29 29h1M31 29h1M1 30h29M31 30h1M31 31h1\" />";

    string constant internal POLKADOT_GREEN = "<path stroke=\"#e0ebe0\" d=\"M2 0h1M6 0h1M10 0h1M14 0h1M18 0h1M22 0h1M26 0h1M30 0h1M0 3h1M4 3h1M8 3h1M12 3h1M16 3h1M20 3h1M24 3h1M28 3h1M2 6h1M6 6h1M10 6h1M14 6h1M18 6h1M22 6h1M26 6h1M30 6h1M0 9h1M4 9h1M8 9h1M12 9h1M16 9h1M20 9h1M24 9h1M28 9h1M2 12h1M6 12h1M10 12h1M14 12h1M18 12h1M22 12h1M26 12h1M30 12h1M0 15h1M4 15h1M8 15h1M12 15h1M16 15h1M20 15h1M24 15h1M28 15h1M2 18h1M6 18h1M10 18h1M14 18h1M18 18h1M22 18h1M26 18h1M30 18h1M0 21h1M4 21h1M8 21h1M12 21h1M16 21h1M20 21h1M24 21h1M28 21h1M2 24h1M6 24h1M10 24h1M14 24h1M18 24h1M22 24h1M26 24h1M30 24h1M0 27h1M4 27h1M8 27h1M12 27h1M16 27h1M20 27h1M24 27h1M28 27h1M2 30h1M6 30h1M10 30h1M14 30h1M18 30h1M22 30h1M26 30h1M30 30h1\" /><path stroke=\"#d4e2d3\" d=\"M3 0h1M7 0h1M11 0h1M15 0h1M19 0h1M23 0h1M27 0h1M31 0h1M2 1h1M6 1h1M10 1h1M14 1h1M18 1h1M22 1h1M26 1h1M30 1h1M1 3h1M5 3h1M9 3h1M13 3h1M17 3h1M21 3h1M25 3h1M29 3h1M0 4h1M4 4h1M8 4h1M12 4h1M16 4h1M20 4h1M24 4h1M28 4h1M3 6h1M7 6h1M11 6h1M15 6h1M19 6h1M23 6h1M27 6h1M31 6h1M2 7h1M6 7h1M10 7h1M14 7h1M18 7h1M22 7h1M26 7h1M30 7h1M1 9h1M5 9h1M9 9h1M13 9h1M17 9h1M21 9h1M25 9h1M29 9h1M0 10h1M4 10h1M8 10h1M12 10h1M16 10h1M20 10h1M24 10h1M28 10h1M3 12h1M7 12h1M11 12h1M15 12h1M19 12h1M23 12h1M27 12h1M31 12h1M2 13h1M6 13h1M10 13h1M14 13h1M18 13h1M22 13h1M26 13h1M30 13h1M1 15h1M5 15h1M9 15h1M13 15h1M17 15h1M21 15h1M25 15h1M29 15h1M0 16h1M4 16h1M8 16h1M12 16h1M16 16h1M20 16h1M24 16h1M28 16h1M3 18h1M7 18h1M11 18h1M15 18h1M19 18h1M23 18h1M27 18h1M31 18h1M2 19h1M6 19h1M10 19h1M14 19h1M18 19h1M22 19h1M26 19h1M30 19h1M1 21h1M5 21h1M9 21h1M13 21h1M17 21h1M21 21h1M25 21h1M29 21h1M0 22h1M4 22h1M8 22h1M12 22h1M16 22h1M20 22h1M24 22h1M28 22h1M3 24h1M7 24h1M11 24h1M15 24h1M19 24h1M23 24h1M27 24h1M31 24h1M2 25h1M6 25h1M10 25h1M14 25h1M18 25h1M22 25h1M26 25h1M30 25h1M1 27h1M5 27h1M9 27h1M13 27h1M17 27h1M21 27h1M25 27h1M29 27h1M0 28h1M4 28h1M8 28h1M12 28h1M16 28h1M20 28h1M24 28h1M28 28h1M3 30h1M7 30h1M11 30h1M15 30h1M19 30h1M23 30h1M27 30h1M31 30h1M2 31h1M6 31h1M10 31h1M14 31h1M18 31h1M22 31h1M26 31h1M30 31h1\" /><path stroke=\"#a5c3a4\" d=\"M3 1h1M7 1h1M11 1h1M15 1h1M19 1h1M23 1h1M27 1h1M31 1h1M1 4h1M5 4h1M9 4h1M13 4h1M17 4h1M21 4h1M25 4h1M29 4h1M3 7h1M7 7h1M11 7h1M15 7h1M19 7h1M23 7h1M27 7h1M31 7h1M1 10h1M5 10h1M9 10h1M13 10h1M17 10h1M21 10h1M25 10h1M29 10h1M3 13h1M7 13h1M11 13h1M15 13h1M19 13h1M23 13h1M27 13h1M31 13h1M1 16h1M5 16h1M9 16h1M13 16h1M17 16h1M21 16h1M25 16h1M29 16h1M3 19h1M7 19h1M11 19h1M15 19h1M19 19h1M23 19h1M27 19h1M31 19h1M1 22h1M5 22h1M9 22h1M13 22h1M17 22h1M21 22h1M25 22h1M29 22h1M3 25h1M7 25h1M11 25h1M15 25h1M19 25h1M23 25h1M27 25h1M31 25h1M1 28h1M5 28h1M9 28h1M13 28h1M17 28h1M21 28h1M25 28h1M29 28h1M3 31h1M7 31h1M11 31h1M15 31h1M19 31h1M23 31h1M27 31h1M31 31h1\" />";
    string constant internal POLKADOT_BLUE = "<path stroke=\"#99d9ea\" d=\"M2 0h2M7 0h2M12 0h2M17 0h2M22 0h2M27 0h2M1 1h1M4 1h1M6 1h1M9 1h1M11 1h1M14 1h1M16 1h1M19 1h1M21 1h1M24 1h1M26 1h1M29 1h1M31 1h1M1 2h1M4 2h1M6 2h1M9 2h1M11 2h1M14 2h1M16 2h1M19 2h1M21 2h1M24 2h1M26 2h1M29 2h1M31 2h1M2 3h2M7 3h2M12 3h2M17 3h2M22 3h2M27 3h2M1 5h2M6 5h2M11 5h2M16 5h2M21 5h2M26 5h2M31 5h1M0 6h1M3 6h1M5 6h1M8 6h1M10 6h1M13 6h1M15 6h1M18 6h1M20 6h1M23 6h1M25 6h1M28 6h1M30 6h1M0 7h1M3 7h1M5 7h1M8 7h1M10 7h1M13 7h1M15 7h1M18 7h1M20 7h1M23 7h1M25 7h1M28 7h1M30 7h1M1 8h2M6 8h2M11 8h2M16 8h2M21 8h2M26 8h2M31 8h1M0 10h2M5 10h2M10 10h2M15 10h2M20 10h2M25 10h2M30 10h2M2 11h1M4 11h1M7 11h1M9 11h1M12 11h1M14 11h1M17 11h1M19 11h1M22 11h1M24 11h1M27 11h1M29 11h1M2 12h1M4 12h1M7 12h1M9 12h1M12 12h1M14 12h1M17 12h1M19 12h1M22 12h1M24 12h1M27 12h1M29 12h1M0 13h2M5 13h2M10 13h2M15 13h2M20 13h2M25 13h2M30 13h2M0 15h1M4 15h2M9 15h2M14 15h2M19 15h2M24 15h2M29 15h2M1 16h1M3 16h1M6 16h1M8 16h1M11 16h1M13 16h1M16 16h1M18 16h1M21 16h1M23 16h1M26 16h1M28 16h1M31 16h1M1 17h1M3 17h1M6 17h1M8 17h1M11 17h1M13 17h1M16 17h1M18 17h1M21 17h1M23 17h1M26 17h1M28 17h1M31 17h1M0 18h1M4 18h2M9 18h2M14 18h2M19 18h2M24 18h2M29 18h2M3 20h2M8 20h2M13 20h2M18 20h2M23 20h2M28 20h2M0 21h1M2 21h1M5 21h1M7 21h1M10 21h1M12 21h1M15 21h1M17 21h1M20 21h1M22 21h1M25 21h1M27 21h1M30 21h1M0 22h1M2 22h1M5 22h1M7 22h1M10 22h1M12 22h1M15 22h1M17 22h1M20 22h1M22 22h1M25 22h1M27 22h1M30 22h1M3 23h2M8 23h2M13 23h2M18 23h2M23 23h2M28 23h2M2 25h2M7 25h2M12 25h2M17 25h2M22 25h2M27 25h2M1 26h1M4 26h1M6 26h1M9 26h1M11 26h1M14 26h1M16 26h1M19 26h1M21 26h1M24 26h1M26 26h1M29 26h1M31 26h1M1 27h1M4 27h1M6 27h1M9 27h1M11 27h1M14 27h1M16 27h1M19 27h1M21 27h1M24 27h1M26 27h1M29 27h1M31 27h1M2 28h2M7 28h2M12 28h2M17 28h2M22 28h2M27 28h2M1 30h2M6 30h2M11 30h2M16 30h2M21 30h2M26 30h2M31 30h1M0 31h1M3 31h1M5 31h1M8 31h1M10 31h1M13 31h1M15 31h1M18 31h1M20 31h1M23 31h1M25 31h1M28 31h1M30 31h1\" /><path stroke=\"#8ec9d9\" d=\"M2 1h2M7 1h2M12 1h2M17 1h2M22 1h2M27 1h2M2 2h2M7 2h2M12 2h2M17 2h2M22 2h2M27 2h2M1 6h2M6 6h2M11 6h2M16 6h2M21 6h2M26 6h2M31 6h1M1 7h2M6 7h2M11 7h2M16 7h2M21 7h2M26 7h2M31 7h1M0 11h2M5 11h2M10 11h2M15 11h2M20 11h2M25 11h2M30 11h2M0 12h2M5 12h2M10 12h2M15 12h2M20 12h2M25 12h2M30 12h2M0 16h1M4 16h2M9 16h2M14 16h2M19 16h2M24 16h2M29 16h2M0 17h1M4 17h2M9 17h2M14 17h2M19 17h2M24 17h2M29 17h2M3 21h2M8 21h2M13 21h2M18 21h2M23 21h2M28 21h2M3 22h2M8 22h2M13 22h2M18 22h2M23 22h2M28 22h2M2 26h2M7 26h2M12 26h2M17 26h2M22 26h2M27 26h2M2 27h2M7 27h2M12 27h2M17 27h2M22 27h2M27 27h2M1 31h2M6 31h2M11 31h2M16 31h2M21 31h2M26 31h2M31 31h1\" />";

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
        } else if (_seed >= 30) {
            return GRADIENT_PINK;
        } else if (_seed >= 14) {
            return GRADIENT_BLUE;
        } else if (_seed >= 10) {
            return SPECIAL_GRAY;
        } else if (_seed >= 8) {
            return SPIRAL_RED;
        } else if (_seed >= 6) {
            return SPIRAL_VIOLET;
        } else if (_seed >= 4) {
            return POLKADOT_GREEN;
        } else if (_seed >= 2) {
            return POLKADOT_BLUE;
        } else if (_seed >= 1) {
            return GALAXY;
        } else {
            return CONFETTI;
        }

        return string.concat(
            PREFIX,
            color,
            SUFFIX
        );
    }
}

