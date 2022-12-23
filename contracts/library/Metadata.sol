// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Base64.sol";
import "./Strings2.sol";
import "../IFDCCStorage.sol";
import "./Seed.sol";

library Metadata {
    struct Trait {
        string value;
        string traitType;
    }

    function constructMetadata(uint256 tokenId, uint256 seed, address _storage) internal pure returns (string memory) {
        string memory name = string.concat(
            "Foo #",
            Strings2.toString(tokenId)
        );

        string memory description = string.concat(
            "seed : ",
            Strings2.toString(seed)
        );

        Trait[] memory trait = new Trait[](5);
        trait = seedToTrait(seed);

        return string.concat(
            "data:application/json;base64,",
            Base64.encode(
                string.concat(
                    "{\"name\":\"",
                    name,
                    "\",\"description\":\"",
                    description,
                    "\",\"attributes\":",
                    constructAttributes(trait),
                    ",\"image\":\"",
                    "data:image/svg+xml;base64,",
                    Base64.encode(
                        constructSvg(seed, _storage)
                    ),
                    "\"}"
                )
            )
        );
    }

    function constructSvg(uint256 seed, address _storage) internal pure returns (string memory) {
        string memory SVG_PREFIX = "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 32 32\" shape-rendering=\"crispEdges\">";
        string memory SVG_SUFFIX = "</svg>";
        return string.concat(
            SVG_PREFIX,
            IFDCCStorage(_storage).constructImage(seed),
            SVG_SUFFIX
        );
    }

    function constructAttributes(Trait[] memory traits) internal pure returns (string memory) {
        string memory attributes = constructTrait(traits[0]);

        for(uint256 i = 1; i < traits.length; i++) {
            attributes = string.concat(
                attributes,
                ",",
                constructTrait(traits[i])
            );
        }

        return string.concat(
            "[",
            attributes,
            "]"
        );
    }

    function constructTrait(Trait memory trait) internal pure returns (string memory) {
        return string.concat(
            "{\"value\":\"",
            trait.value,
            "\",\"trait_type\":\"",
            trait.traitType,
            "\"}"
        );
    }

    function separateSeed(uint256 seed) internal pure returns (
        uint40, 
        uint40, 
        uint40, 
        uint40, 
        uint40) 
    {
        return (
            uint40(seed >> 8*4),
            uint40(seed << 8) >> 8*4,
            uint40(seed << 8*2) >> 8*4,
            uint40(seed << 8*3) >> 8*4,
            uint40(seed << 8*4) >> 8*4
        );
    }

    function seedToTrait(uint256 seed) internal pure returns (Trait[] memory) {
        uint40 a;
        uint40 b;
        uint40 c;
        uint40 d;
        uint40 e;

        (a, b, c, d, e) = separateSeed(seed);

        Trait[] memory trait = new Trait[](5);

        trait[0] = Trait(seedToValue(a), "Background");
        trait[1] = Trait(seedToValue(b), "Body");
        trait[2] = Trait(seedToValue(c), "Head");
        trait[3] = Trait(seedToValue(d), "Face");
        trait[4] = Trait(seedToValue(e), "Hand");

        return trait;
    }

    function seedToValue(uint40 _seed) internal pure returns (string memory) {
        string memory color;

        if (_seed >= 240) {
            color = "NORMAL_0";
        } else if (_seed >= 224) {
            color = "NORMAL_1";
        } else if (_seed >= 208) {
            color = "NORMAL_2";
        } else if (_seed >= 192) {
            color = "NORMAL_3";
        } else if (_seed >= 176) {
            color = "NORMAL_4";
        } else if (_seed >= 160) {
            color = "NORMAL_5";
        } else if (_seed >= 144) {
            color = "NORMAL_6";
        } else if (_seed >= 128) {
            color = "NORMAL_7";
        } else if (_seed >= 112) {
            color = "NORMAL_8";
        } else if (_seed >= 96) {
            color = "NORMAL_9";
        } else if (_seed >= 80) {
            color = "NORMAL_A";
        } else if (_seed >= 64) {
            color = "NORMAL_B";
        } else if (_seed >= 48) {
            color = "NORMAL_C";
        } else if (_seed >= 32) {
            color = "NORMAL_D";
        } else if (_seed >= 16) {
            color = "NORMAL_E";
        } else if (_seed >= 9) {
            color = "SPECIAL_0";
        } else if (_seed >= 2) {
            color = "SPECIAL_1";
        } else if (_seed >= 1) {
            color = "SPECIAL_2";
        } else {
            color = "SPECIAL_3";
        }

        return color;
    }
}