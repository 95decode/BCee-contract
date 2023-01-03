// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../IBCeeRenderer.sol";
import "./Converter.sol";
import "./TraitChecker.sol";

library Metadata {
    struct Trait {
        string value;
        string traitType;
    }

    function constructMetadata(uint256 tokenId, uint256 seed, address renderer) internal pure returns (string memory) {
        string memory name = string.concat(
            "BCee #",
            Converter.toString(tokenId)
        );

        string memory description = string.concat(
            "seed : ",
            Converter.toString(seed)
        );

        Trait[] memory trait = new Trait[](5);
        trait = seedToTrait(seed);

        return string.concat(
            "data:application/json;base64,",
            Converter.encode(
                string.concat(
                    "{\"name\":\"",
                    name,
                    "\",\"description\":\"",
                    description,
                    "\",\"attributes\":",
                    constructAttributes(trait),
                    ",\"image\":\"",
                    "data:image/svg+xml;base64,",
                    Converter.encode(
                        constructSvg(seed, renderer)
                    ),
                    "\"}"
                )
            )
        );
    }

    function constructSvg(uint256 seed, address renderer) internal pure returns (string memory) {
        string memory SVG_PREFIX = "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 32 32\" shape-rendering=\"crispEdges\">";
        string memory SVG_SUFFIX = "</svg>";
        return string.concat(
            SVG_PREFIX,
            IBCeeRenderer(renderer).constructImage(seed),
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

    function separateSeed(uint256 seed) internal pure returns (uint40, uint40, uint40, uint40, uint40) {
        return (
            uint40(seed >> 8*4),
            uint40(seed << 8) >> 8*4,
            uint40(seed << 8*2) >> 8*4,
            uint40(seed << 8*3) >> 8*4,
            uint40(seed << 8*4) >> 8*4
        );
    }

    function seedToTrait(uint256 seed) internal pure returns (Trait[] memory) {
        uint40 background;
        uint40 body;
        uint40 head;
        uint40 face;
        uint40 hands;
        
        Trait[] memory trait = new Trait[](5);

        (background, body, head, face, hands) = separateSeed(seed);
        trait[0] = Trait(TraitChecker.seedToBackground(background), "Background");
        trait[1] = Trait(TraitChecker.seedToBody(body), "Body");
        trait[2] = Trait(TraitChecker.seedToHead(head), "Head");
        trait[3] = Trait(TraitChecker.seedToFace(face), "Face");
        trait[4] = Trait(TraitChecker.seedToHands(hands), "Hands");

        return trait;
    }
}