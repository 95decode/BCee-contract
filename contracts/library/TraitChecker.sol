// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library TraitChecker {
    function seedToBackground(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 206) {
            return "None";
        } else if (_seed >= 190) {
            return "Gray";
        } else if (_seed >= 174) {
            return "Orange";
        } else if (_seed >= 158) {
            return "Green";
        } else if (_seed >= 142) {
            return "Blue";
        } else if (_seed >= 126) {
            return "Red";
        } else if (_seed >= 110) {
            return "Sky Blue";
        } else if (_seed >= 94) {
            return "Violet";
        } else if (_seed >= 78) {
            return "Half Yellow";
        } else if (_seed >= 62) {
            return "Half Pink";
        } else if (_seed >= 46) {
            return "Half Violet";
        } else if (_seed >= 30) {
            return "Gradient Pink";
        } else if (_seed >= 14) {
            return "Gradient Blue";
        } else if (_seed >= 10) {
            return "Spiral Gray";
        } else if (_seed >= 8) {
            return "Spiral Red";
        } else if (_seed >= 6) {
            return "Spiral Violet";
        } else if (_seed >= 4) {
            return "Polka Dot Green";
        } else if (_seed >= 2) {
            return "Polka Dot Blue";
        } else if (_seed >= 1) {
            return "Galaxy";
        } else {
            return "Confetti";
        }
    }

    function seedToBody(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 232) {
            return "";
        } else if (_seed >= 208) {
            return "";
        } else if (_seed >= 184) {
            return "";
        } else if (_seed >= 160) {
            return "";
        } else if (_seed >= 136) {
            return "";
        } else if (_seed >= 112) {
            return "";
        } else if (_seed >= 88) {
            return "";
        } else if (_seed >= 64) {
            return "";
        } else if (_seed >= 40) {
            return "";
        } else if (_seed >= 16) {
            return "";
        } else if (_seed >= 12) {
            return "";
        } else if (_seed >= 8) {
            return "";
        } else if (_seed >= 4) {
            return "";
        } else {
            return "";
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