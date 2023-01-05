// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library TraitChecker {
    function seedToBackground(uint40 seed) internal pure returns (string memory) {
        if (seed >= 206) {
            return "None";
        } else if (seed >= 190) {
            return "Gray";
        } else if (seed >= 174) {
            return "Orange";
        } else if (seed >= 158) {
            return "Green";
        } else if (seed >= 142) {
            return "Blue";
        } else if (seed >= 126) {
            return "Red";
        } else if (seed >= 110) {
            return "Sky Blue";
        } else if (seed >= 94) {
            return "Violet";
        } else if (seed >= 78) {
            return "Half Yellow";
        } else if (seed >= 62) {
            return "Half Pink";
        } else if (seed >= 46) {
            return "Half Violet";
        } else if (seed >= 32) {
            return "Gradient Pink";
        } else if (seed >= 22) {
            return "Gradient Blue";
        } else if (seed >= 12) {
            return "Spiral Gray";
        } else if (seed >= 10) {
            return "Spiral Red";
        } else if (seed >= 8) {
            return "Spiral Violet";
        } else if (seed >= 6) {
            return "Spiral Green";
        } else if (seed >= 4) {
            return "Polka Dot Blue";
        } else if (seed >= 2) {
            return "Galaxy";
        } else {
            return "Confetti";
        }
    }

    function seedToBody(uint40 seed) internal pure returns (string memory) {
        if (seed >= 232) {
            return "Beige";
        } else if (seed >= 208) {
            return "Yellow";
        } else if (seed >= 184) {
            return "White";
        } else if (seed >= 160) {
            return "Violet";
        } else if (seed >= 136) {
            return "Gray";
        } else if (seed >= 112) {
            return "Green";
        } else if (seed >= 88) {
            return "Brown";
        } else if (seed >= 64) {
            return "Pink";
        } else if (seed >= 40) {
            return "Red";
        } else if (seed >= 16) {
            return "Purple";
        } else if (seed >= 12) {
            return "Mutant";
        } else if (seed >= 8) {
            return "Gray Stripes";
        } else if (seed >= 4) {
            return "Yellow Stripes";
        } else {
            return "Dark";
        }
    }

    function seedToHead(uint40 seed) internal pure returns (string memory) {
        if (seed >= 206) {
            return "None";
        } else if (seed >= 181) {
            return "Thin";
        } else if (seed >= 156) {
            return "Perm";
        } else if (seed >= 131) {
            return "Cap";
        } else if (seed >= 106) {
            return "Bang";
        } else if (seed >= 81) {
            return "Yellow perm";
        } else if (seed >= 56) {
            return "Rectangle";
        } else if (seed >= 46) {
            return "Angel ring";
        } else if (seed >= 36) {
            return "Cone";
        } else if (seed >= 26) {
            return "Fedora";
        } else if (seed >= 16) {
            return "Heart";
        } else if (seed >= 6) {
            return "Crown";
        } else {
            return "Clover";
        }
    }

    function seedToFace(uint40 seed) internal pure returns (string memory) {
        if (seed >= 226) {
            return "Normal eyes #0";
        } else if (seed >= 196) {
            return "Normal eyes #1";
        } else if (seed >= 166) {
            return "Normal eyes #2";
        } else if (seed >= 136) {
            return "Blue eyes";
        } else if (seed >= 106) {
            return "Injured eyes";
        } else if (seed >= 86) {
            return "Mismatched eyes";
        } else if (seed >= 66) {
            return "Gray sunglasses";
        } else if (seed >= 46) {
            return "3D sunglasses";
        } else if (seed >= 26) {
            return "Goggles";
        } else if (seed >= 16) {
            return "Error";
        } else if (seed >= 6) {
            return "Blue sunglasses";
        } else {
            return "Black eyes";
        }
    }

    function seedToHands(uint40 seed) internal pure returns (string memory) {
        if (seed >= 206) {
            return "None";
        } else if (seed >= 181) {
            return "Bar";
        } else if (seed >= 156) {
            return "Yellow card";
        } else if (seed >= 131) {
            return "Red card";
        } else if (seed >= 106) {
            return "Flag";
        } else if (seed >= 81) {
            return "Good";
        } else if (seed >= 61) {
            return "Sickle";
        } else if (seed >= 41) {
            return "Match";
        } else if (seed >= 31) {
            return "Briefcase";
        } else if (seed >= 21) {
            return "Dagger";
        } else if (seed >= 11) {
            return "Hammer";
        } else if (seed >= 5) {
            return "Heart";
        } else {
            return "Gun";
        }
    }
}
