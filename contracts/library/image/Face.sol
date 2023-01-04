// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Face {
    string constant internal NORMAL_EYES_0 = "<path stroke=\"#000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" />";
    string constant internal NORMAL_EYES_1 = "<path stroke=\"#000000\" d=\"M12 11h5M18 11h5M12 12h1M14 12h1M16 12h1M18 12h1M20 12h1M22 12h1M12 13h1M16 13h1M18 13h1M22 13h1M13 14h3M19 14h3\" /><path stroke=\"#f2f2f2\" d=\"M13 12h1M15 12h1M19 12h1M21 12h1M13 13h3M19 13h3\" />";
    string constant internal NORMAL_EYES_2 = "<path stroke=\"#000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M15 12h3M19 12h1M21 12h3M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M20 11h3M14 12h1M20 12h1M14 13h3M20 13h3\" />";
    string constant internal BLUE_EYES = "<path stroke=\"#000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#3f48cc\" d=\"M14 11h3M20 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" />";
    string constant internal INJURED_EYES = "<path stroke=\"#000000\" d=\"M14 10h3M20 10h3M13 11h1M17 11h1M19 11h1M23 11h1M13 12h1M17 12h1M19 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#ed1c24\" d=\"M14 11h3M20 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" /><path stroke=\"#730e11\" d=\"M15 12h1M21 12h1\" />";
    string constant internal MISMATCHED_EYES = "<path stroke=\"#000000\" d=\"M14 10h3M13 11h1M17 11h1M19 11h5M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M13 13h1M17 13h1M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M14 11h3M14 12h1M16 12h1M20 12h1M22 12h1M14 13h3M20 13h3\" />";
    string constant internal SUNGLASSES_GRAY = "<path stroke=\"#000000\" d=\"M13 10h4M18 10h4M10 11h4M16 11h3M21 11h1M10 12h1M13 12h1M16 12h1M18 12h1M21 12h1M13 13h4M18 13h4\" /><path stroke=\"#7f7f7f\" d=\"M14 11h2M19 11h2M14 12h2M19 12h2\" />";
    string constant internal SUNGLASSES_3D = "<path stroke=\"#000000\" d=\"M13 10h4M18 10h4M10 11h4M16 11h3M21 11h1M10 12h1M13 12h1M16 12h1M18 12h1M21 12h1M13 13h4M18 13h4\" /><path stroke=\"#ed1c24\" d=\"M14 11h2M14 12h2\" /><path stroke=\"#3f48cc\" d=\"M19 11h2M19 12h2\" />";
    string constant internal GOGGLES = "<path stroke=\"#000000\" d=\"M13 9h9M12 10h1M22 10h1M12 11h1M22 11h1M12 12h1M22 12h1M12 13h1M17 13h1M22 13h1M13 14h4M18 14h4\" /><path stroke=\"#7f7f7f\" d=\"M13 10h9M13 11h1M21 11h1M13 12h1M16 12h3M21 12h1M13 13h4M18 13h4\" /><path stroke=\"#c3c3c3\" d=\"M14 11h7M14 12h2M19 12h2\" />";
    string constant internal ERROR = "<path stroke=\"#000000\" opacity= \"0.3\" d=\"M10 10h1M12 10h1M14 10h1M16 10h1M18 10h1M20 10h1M22 10h1M11 11h1M13 11h1M15 11h1M17 11h1M19 11h1M21 11h1M23 11h1M10 12h1M12 12h1M14 12h1M16 12h1M18 12h1M20 12h1M22 12h1M11 13h1M13 13h1M15 13h1M17 13h1M19 13h1M21 13h1M23 13h1M10 14h1M12 14h1M14 14h1M16 14h1M18 14h1M20 14h1M22 14h1M11 15h1M13 15h1M15 15h1M17 15h1M19 15h1M21 15h1M23 15h1\" /><path stroke=\"#c3c3c3\" d=\"M11 10h1M13 10h1M15 10h1M17 10h1M19 10h1M21 10h1M23 10h1M10 11h1M12 11h1M14 11h1M16 11h1M18 11h1M20 11h1M22 11h1M11 12h1M13 12h1M15 12h1M17 12h1M19 12h1M21 12h1M23 12h1M10 13h1M12 13h1M14 13h1M16 13h1M18 13h1M20 13h1M22 13h1M11 14h1M13 14h1M15 14h1M17 14h1M19 14h1M21 14h1M23 14h1M10 15h1M12 15h1M14 15h1M16 15h1M18 15h1M20 15h1M22 15h1\" />";
    string constant internal SUNGLASSES_BLUE = "<path stroke=\"#000000\" d=\"M12 9h5M18 9h5M12 10h1M16 10h1M18 10h1M22 10h1M10 11h3M16 11h3M22 11h1M10 12h1M12 12h1M16 12h1M18 12h1M22 12h1M13 13h3M19 13h3\" /><path stroke=\"#1f388f\" d=\"M13 10h3M19 10h3\" /><path stroke=\"#294bbf\" d=\"M13 11h3M19 11h3\" /><path stroke=\"#325be8\" d=\"M13 12h3M19 12h3\" />";
    string constant internal BLACK_EYES = "<path stroke=\"#000000\" d=\"M20 10h3M13 11h5M19 11h1M23 11h1M13 12h2M16 12h2M19 12h1M21 12h1M23 12h1M13 13h5M19 13h1M23 13h1M14 14h3M20 14h3\" /><path stroke=\"#f2f2f2\" d=\"M20 11h3M15 12h1M20 12h1M22 12h1M20 13h3\" />";

    function constructFace(uint256 seed) internal pure returns (string memory) {
        uint40 _seed = uint40(seed << 8*3);
        _seed = _seed >> 8*4;

        if (_seed >= 226) {
            return NORMAL_EYES_0;
        } else if (_seed >= 196) {
            return NORMAL_EYES_1;
        } else if (_seed >= 166) {
            return NORMAL_EYES_2;
        } else if (_seed >= 136) {
            return BLUE_EYES;
        } else if (_seed >= 106) {
            return INJURED_EYES;
        } else if (_seed >= 86) {
            return MISMATCHED_EYES;
        } else if (_seed >= 66) {
            return SUNGLASSES_GRAY;
        } else if (_seed >= 46) {
            return SUNGLASSES_3D;
        } else if (_seed >= 26) {
            return GOGGLES;
        } else if (_seed >= 16) {
            return string.concat(
                NORMAL_EYES_0,
                ERROR
            );
        } else if (_seed >= 6) {
            return SUNGLASSES_BLUE;
        } else {
            return BLACK_EYES;
        }
    }
}
