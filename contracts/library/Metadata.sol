// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Base64.sol";
import "./Strings2.sol";
import "./image/Background.sol";
import "./image/Body.sol";
import "./image/Head.sol";
import "./image/Face.sol";
import "./image/Hands.sol";

library Metadata {
    struct Trait {
        string value;
        string traitType;
    }

    function constructMetadata(uint256 tokenId, uint256 seed) internal pure returns (string memory) {
        string memory name = string.concat(
            "Foo #",
            Strings2.toString(tokenId)
        );

        string memory description = string.concat(
            "seed : ",
            Strings2.toString(seed)
        );

        Trait[] memory trait = new Trait[](4);

        //example
        trait[0] = Trait("a","A");
        trait[1] = Trait("b","B");
        trait[2] = Trait("c","C");
        trait[3] = Trait("d","D");

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
                        constructSvg(seed)
                    ),
                    "\"}"
                )
            )
        );
    }

    function constructSvg(uint256 seed) internal pure returns (string memory) {
        string memory SVG_PREFIX = "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 32 32\" shape-rendering=\"crispEdges\">";
        string memory SVG_SUFFIX = "</svg>";

        return string.concat(
            SVG_PREFIX,
            Background.constructBackgorund(seed),
            Body.constructBody(seed),
            Head.constructHead(seed),
            Face.constructFace(seed),
            Hands.constructHands(seed),
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
}