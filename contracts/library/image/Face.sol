// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Face {
    string constant Face_01 = "<path stroke=\"#000000\" d=\"M13 7h4M18 7h4M10 8h4M16 8h3M21 8h1M10 9h1M13 9h1M16 9h1M18 9h1M21 9h1M13 10h4M18 10h4\" /><path stroke=\"#7f7f7f\" d=\"M14 8h2M19 8h2M14 9h2M19 9h2\" />";
    string constant Face_02 = "<path stroke=\"#ed1c24\" d=\"M13 7h4M18 7h4M10 8h4M16 8h3M21 8h1M10 9h1M13 9h1M16 9h1M18 9h1M21 9h1M13 10h4M18 10h4\" /><path stroke=\"#ff7f27\" d=\"M14 8h2M19 8h2M14 9h2M19 9h2\" />";

    string constant internal B00 = "<path stroke=\"#000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" />";
    string constant internal B01 = "<path stroke=\"#000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M17 12h1M19 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#ed1c24\" d=\"M14 11h3M20 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" /><path stroke=\"#730e11\" d=\"M15 12h1M21 12h1\" />";
    string constant internal B02 = "<path stroke=\"#000000\" d=\"M12 7h1M24 7h1M13 8h2M22 8h2M15 9h2M20 9h2M14 10h9M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" />";
    string constant internal B03 = "<path stroke=\"#000000\" d=\"M12 11h5M18 11h5M12 12h1M14 12h1M16 12h1M18 12h1M20 12h1M22 12h1M12 13h1M16 13h1M18 13h1M22 13h1M13 14h3M19 14h3\" /><path stroke=\"#f2f2f2\" d=\"M13 12h1M15 12h1M19 12h1M21 12h1M13 13h3M19 13h3\" />";
    string constant internal B04 = "<path stroke=\"#000000\" d=\"M13 10h4M18 10h4M10 11h4M16 11h3M21 11h1M10 12h1M13 12h1M16 12h1M18 12h1M21 12h1M13 13h4M18 13h4\" /><path stroke=\"#7f7f7f\" d=\"M14 11h2M19 11h2M14 12h2M19 12h2\" />";
    string constant internal B05 = "<path stroke=\"#f7d3ff\" d=\"M13 10h4M18 10h4M10 11h4M16 11h3M21 11h1M10 12h1M13 12h1M16 12h1M18 12h1M21 12h1M13 13h4M18 13h4\" /><path stroke=\"#bba0c2\" d=\"M14 11h1M19 11h1\" /><path stroke=\"#debee6\" d=\"M15 11h1M20 11h1M14 12h2M19 12h2\" />";
    string constant internal B06 = "<path stroke=\"#000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M15 12h3M19 12h1M21 12h3M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 12h1M20 12h1M14 13h3M20 13h3\" />";
    string constant internal B07 = "<path stroke=\"#000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h5M19 12h5M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 13h3M20 13h3\" />";

    string constant internal S00 = "<path stroke=\"#cee7ff\" d=\"M10 10h14M10 11h1M13 11h1M16 11h2M20 11h1M23 11h1M10 12h1M12 12h2M15 12h1M17 12h1M19 12h2M22 12h2M10 13h1M13 13h1M15 13h1M17 13h1M19 13h2M22 13h2M10 14h1M12 14h2M16 14h2M20 14h1M23 14h1M10 15h14\" /><path stroke=\"#b3c9de\" d=\"M11 11h2M14 11h2M18 11h2M21 11h2M11 12h1M14 12h1M16 12h1M18 12h1M21 12h1M11 13h2M14 13h1M16 13h1M18 13h1M21 13h1M11 14h1M14 14h2M18 14h2M21 14h2\" />";
    string constant internal S01 = "<path stroke=\"#000000\" d=\"M10 10h1M12 10h1M14 10h1M16 10h1M18 10h1M20 10h1M22 10h1M11 11h1M13 11h1M15 11h1M17 11h1M19 11h1M21 11h1M23 11h1M10 12h1M12 12h1M14 12h1M16 12h1M18 12h1M20 12h1M22 12h1M11 13h1M13 13h1M15 13h1M17 13h1M19 13h1M21 13h1M23 13h1M10 14h1M12 14h1M14 14h1M16 14h1M18 14h1M20 14h1M22 14h1M11 15h1M13 15h1M15 15h1M17 15h1M19 15h1M21 15h1M23 15h1\" /><path stroke=\"#c3c3c3\" d=\"M11 10h1M13 10h1M15 10h1M17 10h1M19 10h1M21 10h1M23 10h1M10 11h1M12 11h1M14 11h1M16 11h1M18 11h1M20 11h1M22 11h1M11 12h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M10 13h1M12 13h1M14 13h1M16 13h1M18 13h1M20 13h1M22 13h1M11 14h1M13 14h1M15 14h1M17 14h1M19 14h1M21 14h1M23 14h1M10 15h1M12 15h1M14 15h1M16 15h1M18 15h1M20 15h1M22 15h1\" />";
    string constant internal S02 = "<path stroke=\"#000000\" d=\"M12 9h5M18 9h5M12 10h1M16 10h1M18 10h1M22 10h1M10 11h3M16 11h3M22 11h1M10 12h1M12 12h1M16 12h1M18 12h1M22 12h1M13 13h3M19 13h3\" /><path stroke=\"#1f388f\" d=\"M13 10h3M19 10h3\" /><path stroke=\"#294bbf\" d=\"M13 11h3M19 11h3\" /><path stroke=\"#325be8\" d=\"M13 12h3M19 12h3\" />";
    string constant internal S03 = "<path stroke=\"#000000\" d=\"M12 9h11M11 10h1M23 10h1M11 11h1M13 11h9M23 11h1M11 12h1M23 12h1M12 13h11\" /><path stroke=\"#7f7f7f\" d=\"M12 10h11M12 11h1M22 11h1M12 12h11\" />";

    string constant internal S03opt = "<path stroke=\"#00a2e8\" opacity= \"0.5\" d=\"M13 11h10M15 12h10M17 13h10M19 14h10M21 15h10M23 16h9M25 17h7M27 18h5M29 19h3M31 20h1\" />";

    function constructFace(uint256 seed) internal pure returns (string memory) {
        uint40 backgroundSeed = uint40(seed << 8*3);
        backgroundSeed = backgroundSeed >> 8*4;
        string memory color;

        if (backgroundSeed > 250) {
            color = B00;
        } else if (backgroundSeed > 220) {
            color = B01;
        } else if (backgroundSeed > 180) {
            color = B02;
        } else if (backgroundSeed > 140) {
            color = B03;
        } else if (backgroundSeed > 100) {
            color = B04;
        } else if (backgroundSeed > 80) {
            color = B05;
        } else if (backgroundSeed > 60) {
            color = B06;
        } else if (backgroundSeed > 40) {
            color = B07;
        } else if (backgroundSeed > 25) {
            color = S00;
        } else if (backgroundSeed > 10) {
            color = S01;
        } else {
            color = string.concat(
                S03,
                S03opt
            );
        }

        return string.concat(
            color
        );
    }
}