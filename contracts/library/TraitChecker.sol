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
            return "Spiral Green";
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
            return "Beige";
        } else if (_seed >= 208) {
            return "Yellow";
        } else if (_seed >= 184) {
            return "White";
        } else if (_seed >= 160) {
            return "Violet";
        } else if (_seed >= 136) {
            return "Gray";
        } else if (_seed >= 112) {
            return "Green";
        } else if (_seed >= 88) {
            return "Brown";
        } else if (_seed >= 64) {
            return "Pink";
        } else if (_seed >= 40) {
            return "Red";
        } else if (_seed >= 16) {
            return "Purple";
        } else if (_seed >= 12) {
            return "Mutant";
        } else if (_seed >= 8) {
            return "Gray Stripes";
        } else if (_seed >= 4) {
            return "Yellow Stripes";
        } else {
            return "Dark";
        }
    }

    function seedToHead(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 206) {
            return "None";
        } else if (_seed >= 181) {
            return "Thin";
        } else if (_seed >= 156) {
            return "Perm";
        } else if (_seed >= 131) {
            return "Cap";
        } else if (_seed >= 106) {
            return "Bang";
        } else if (_seed >= 81) {
            return "Yellow perm";
        } else if (_seed >= 56) {
            return "Rectangle";
        } else if (_seed >= 46) {
            return "Angel ring";
        } else if (_seed >= 36) {
            return "Cone";
        } else if (_seed >= 26) {
            return "Fedora";
        } else if (_seed >= 16) {
            return "Heart";
        } else if (_seed >= 6) {
            return "Crown";
        } else {
            return "Clover";
        }
    }

    function seedToFace(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 226) {
            return "Normal eyes #0";
        } else if (_seed >= 196) {
            return "Normal eyes #1";
        } else if (_seed >= 166) {
            return "Normal eyes #2";
        } else if (_seed >= 136) {
            return "Blue eyes";
        } else if (_seed >= 106) {
            return "Injured eyes";
        } else if (_seed >= 86) {
            return "Mismatched eyes";
        } else if (_seed >= 66) {
            return "Gray sunglasses";
        } else if (_seed >= 46) {
            return "3D sunglasses";
        } else if (_seed >= 26) {
            return "Goggles";
        } else if (_seed >= 16) {
            return "Error";
        } else if (_seed >= 6) {
            return "Blue sunglasses";
        } else {
            return "Black eyes";
        }
    }

    function seedToHands(uint40 _seed) internal pure returns (string memory) {
        if (_seed >= 206) {
            return "None";
        } else if (_seed >= 181) {
            return "Bar";
        } else if (_seed >= 156) {
            return "Yellow card";
        } else if (_seed >= 131) {
            return "Red card";
        } else if (_seed >= 106) {
            return "Flag";
        } else if (_seed >= 81) {
            return "Good";
        } else if (_seed >= 61) {
            return "Sickle";
        } else if (_seed >= 41) {
            return "Match";
        } else if (_seed >= 31) {
            return "Briefcase";
        } else if (_seed >= 21) {
            return "Dagger";
        } else if (_seed >= 11) {
            return "Hammer";
        } else if (_seed >= 5) {
            return "Heart";
        } else {
            return "Gun";
        }
    }
}
