// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Head {
    string constant internal NONE = " ";
    string constant internal THIN = "<path stroke=\"#000000\" d=\"M15 3h1M10 4h2M15 4h1M20 4h2M11 5h2M15 5h2M19 5h2M12 6h2M16 6h1M19 6h1M24 6h1M7 7h4M22 7h3M10 8h2M21 8h2M11 9h1\" />";
    string constant internal PERM = "<path stroke=\"#000000\" d=\"M13 2h8M11 3h12M9 4h15M8 5h16M8 6h17M8 7h5M20 7h5M8 8h4M21 8h4M8 9h4M22 9h3M8 10h3M23 10h2M8 11h3M23 11h2M9 12h2M23 12h1\" />";
    string constant internal CAP = "<path stroke=\"#000000\" d=\"M13 6h8M12 7h2M20 7h2M8 8h5M21 8h2M8 9h1M22 9h1M8 10h15\" /><path stroke=\"#7f7f7f\" d=\"M14 7h6M13 8h8M9 9h13\" />";
    string constant internal BANG = "<path stroke=\"#000000\" d=\"M23 1h1M25 1h1M23 2h1M25 2h1M23 3h1M25 3h1M23 4h1M25 4h1M23 6h1M25 6h1\" />";
    string constant internal PERM_YELLOW = "<path stroke=\"#000000\" d=\"M13 2h8M11 3h2M21 3h2M9 4h2M23 4h1M8 5h1M23 5h1M8 6h1M24 6h1M8 7h1M24 7h1M8 8h1M24 8h1M8 9h1M24 9h1M8 10h1M24 10h1M8 11h1M24 11h1M9 12h2M23 12h1\" /><path stroke=\"#fff200\" d=\"M13 3h8M11 4h12M9 5h14M9 6h15M9 7h4M20 7h4M9 8h3M21 8h3M9 9h3M22 9h2M9 10h2M23 10h1M9 11h2M23 11h1\" />";
    string constant internal RECTANGLE= "<path stroke=\"#000000\" d=\"M12 4h9M12 5h9M12 6h9M12 7h9\" />";
    string constant internal ANGEL_RING = "<path stroke=\"#fff200\" d=\"M12 3h9M11 4h2M20 4h2M12 5h9\" />";
    string constant internal CONE = "<path stroke=\"#000000\" d=\"M6 0h1M6 1h3M7 2h1M9 2h2M7 3h1M11 3h2M8 4h1M13 4h2M8 5h1M15 5h2M8 6h1M17 6h2M9 7h1M9 8h1M10 9h1M10 10h1\" /><path stroke=\"#ed1c24\" d=\"M8 2h1M8 3h2M9 4h4M10 5h3M14 5h1M9 6h2M12 6h5M10 7h3M10 8h2\" /><path stroke=\"#fff200\" d=\"M10 3h1M9 5h1M13 5h1M11 6h1M11 9h1\" />";
    string constant internal FEDORA = "<path stroke=\"#000000\" d=\"M14 3h6M13 4h4M20 4h1M13 5h3M20 5h1M10 6h6M21 6h3M10 7h8M23 7h1M10 8h14\" /><path stroke=\"#7f7f7f\" d=\"M17 4h3M16 5h4M16 6h5M18 7h5\" />";
    string constant internal HEART = "<path stroke=\"#ed1c24\" d=\"M14 0h2M17 0h2M13 1h1M16 1h1M19 1h1M13 2h1M19 2h1M14 3h1M18 3h1M15 4h1M17 4h1M16 5h1\" /><path stroke=\"#ffaec9\" d=\"M14 1h2M17 1h2M14 2h5M15 3h3M16 4h1\" />";
    string constant internal CROWN = "<path stroke=\"#000000\" d=\"M13 3h1M16 3h1M19 3h1M13 4h2M16 4h1M18 4h2M13 5h1M15 5h1M17 5h1M19 5h1M13 6h1M19 6h1\" /><path stroke=\"#fff200\" d=\"M14 5h1M16 5h1M18 5h1M14 6h5\" />";
    string constant internal CLOVER = "<path stroke=\"#000000\" d=\"M17 0h2M20 0h2M16 1h1M19 1h1M22 1h1M17 2h3M21 2h2M18 3h4M17 4h2M21 4h1M16 5h1M19 5h2M16 6h1\" /><path stroke=\"#22b14c\" d=\"M17 1h2M20 1h2M20 2h1M19 4h2\" />";

    function constructHead(uint256 seed) internal pure returns (string memory) {
        uint40 _seed = uint40(seed << 8*2);
        _seed = _seed >> 8*4;

        if (_seed >= 206) {
            return NONE;
        } else if (_seed >= 181) {
            return THIN;
        } else if (_seed >= 156) {
            return PERM;
        } else if (_seed >= 131) {
            return CAP;
        } else if (_seed >= 106) {
            return BANG;
        } else if (_seed >= 81) {
            return PERM_YELLOW;
        } else if (_seed >= 56) {
            return RECTANGLE;
        } else if (_seed >= 46) {
            return ANGEL_RING;
        } else if (_seed >= 36) {
            return CONE;
        } else if (_seed >= 26) {
            return FEDORA;
        } else if (_seed >= 16) {
            return HEART;
        } else if (_seed >= 6) {
            return CROWN;
        } else {
            return CLOVER;
        }
    }
}
