// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library TraitChecker {
    function seedToBackground(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 206) {
            return "NORMAL_0";
        } else if (_seed >= 190) {
            return "NORMAL_1";
        } else if (_seed >= 174) {
            return "NORMAL_2";
        } else if (_seed >= 158) {
            return "NORMAL_3";
        } else if (_seed >= 142) {
            return "NORMAL_4";
        } else if (_seed >= 126) {
            return "NORMAL_5";
        } else if (_seed >= 110) {
            return "NORMAL_6";
        } else if (_seed >= 94) {
            return "NORMAL_7";
        } else if (_seed >= 78) {
            return "NORMAL_8";
        } else if (_seed >= 62) {
            return "NORMAL_9";
        } else if (_seed >= 46) {
            return "NORMAL_A";
        } else if (_seed >= 30) {
            return "NORMAL_B";
        } else if (_seed >= 14) {
            return "NORMAL_C";
        } else if (_seed >= 10) {
            return "NORMAL_D";
        } else if (_seed >= 8) {
            return "NORMAL_E";
        } else if (_seed >= 6) {
            return "NORMAL_F";
        } else if (_seed >= 4) {
            return "SPECIAL_0";
        } else if (_seed >= 2) {
            return "SPECIAL_1";
        } else if (_seed >= 1) {
            return "SPECIAL_2";
        } else {
            return "SPECIAL_3";
        }
    }

    function seedToBody(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 240) {
            return "NORMAL_0";
        } else if (_seed >= 224) {
            return "NORMAL_1";
        } else if (_seed >= 208) {
            return "NORMAL_2";
        } else if (_seed >= 192) {
            return "NORMAL_3";
        } else if (_seed >= 176) {
            return "NORMAL_4";
        } else if (_seed >= 160) {
            return "NORMAL_5";
        } else if (_seed >= 144) {
            return "NORMAL_6";
        } else if (_seed >= 128) {
            return "NORMAL_7";
        } else if (_seed >= 112) {
            return "NORMAL_8";
        } else if (_seed >= 96) {
            return "NORMAL_9";
        } else if (_seed >= 80) {
            return "NORMAL_A";
        } else if (_seed >= 64) {
            return "NORMAL_B";
        } else if (_seed >= 48) {
            return "NORMAL_C";
        } else if (_seed >= 32) {
            return "NORMAL_D";
        } else if (_seed >= 16) {
            return "NORMAL_E";
        } else if (_seed >= 9) {
            return "SPECIAL_0";
        } else if (_seed >= 2) {
            return "SPECIAL_1";
        } else if (_seed >= 1) {
            return "SPECIAL_2";
        } else {
            return "SPECIAL_3";
        }
    }

    function seedToHead(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 240) {
            return "NORMAL_0";
        } else if (_seed >= 224) {
            return "NORMAL_1";
        } else if (_seed >= 208) {
            return "NORMAL_2";
        } else if (_seed >= 192) {
            return "NORMAL_3";
        } else if (_seed >= 176) {
            return "NORMAL_4";
        } else if (_seed >= 160) {
            return "NORMAL_5";
        } else if (_seed >= 144) {
            return "NORMAL_6";
        } else if (_seed >= 128) {
            return "NORMAL_7";
        } else if (_seed >= 112) {
            return "NORMAL_8";
        } else if (_seed >= 96) {
            return "NORMAL_9";
        } else if (_seed >= 80) {
            return "NORMAL_A";
        } else if (_seed >= 64) {
            return "NORMAL_B";
        } else if (_seed >= 48) {
            return "NORMAL_C";
        } else if (_seed >= 32) {
            return "NORMAL_D";
        } else if (_seed >= 16) {
            return "NORMAL_E";
        } else if (_seed >= 9) {
            return "SPECIAL_0";
        } else if (_seed >= 2) {
            return "SPECIAL_1";
        } else if (_seed >= 1) {
            return "SPECIAL_2";
        } else {
            return "SPECIAL_3";
        }
    }

    function seedToFace(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 240) {
            return "NORMAL_0";
        } else if (_seed >= 224) {
            return "NORMAL_1";
        } else if (_seed >= 208) {
            return "NORMAL_2";
        } else if (_seed >= 192) {
            return "NORMAL_3";
        } else if (_seed >= 176) {
            return "NORMAL_4";
        } else if (_seed >= 160) {
            return "NORMAL_5";
        } else if (_seed >= 144) {
            return "NORMAL_6";
        } else if (_seed >= 128) {
            return "NORMAL_7";
        } else if (_seed >= 112) {
            return "NORMAL_8";
        } else if (_seed >= 96) {
            return "NORMAL_9";
        } else if (_seed >= 80) {
            return "NORMAL_A";
        } else if (_seed >= 64) {
            return "NORMAL_B";
        } else if (_seed >= 48) {
            return "NORMAL_C";
        } else if (_seed >= 32) {
            return "NORMAL_D";
        } else if (_seed >= 16) {
            return "NORMAL_E";
        } else if (_seed >= 9) {
            return "SPECIAL_0";
        } else if (_seed >= 2) {
            return "SPECIAL_1";
        } else if (_seed >= 1) {
            return "SPECIAL_2";
        } else {
            return "SPECIAL_3";
        }
    }

    function seedToHands(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 240) {
            return "NORMAL_0";
        } else if (_seed >= 224) {
            return "NORMAL_1";
        } else if (_seed >= 208) {
            return "NORMAL_2";
        } else if (_seed >= 192) {
            return "NORMAL_3";
        } else if (_seed >= 176) {
            return "NORMAL_4";
        } else if (_seed >= 160) {
            return "NORMAL_5";
        } else if (_seed >= 144) {
            return "NORMAL_6";
        } else if (_seed >= 128) {
            return "NORMAL_7";
        } else if (_seed >= 112) {
            return "NORMAL_8";
        } else if (_seed >= 96) {
            return "NORMAL_9";
        } else if (_seed >= 80) {
            return "NORMAL_A";
        } else if (_seed >= 64) {
            return "NORMAL_B";
        } else if (_seed >= 48) {
            return "NORMAL_C";
        } else if (_seed >= 32) {
            return "NORMAL_D";
        } else if (_seed >= 16) {
            return "NORMAL_E";
        } else if (_seed >= 9) {
            return "SPECIAL_0";
        } else if (_seed >= 2) {
            return "SPECIAL_1";
        } else if (_seed >= 1) {
            return "SPECIAL_2";
        } else {
            return "SPECIAL_3";
        }
    }
}