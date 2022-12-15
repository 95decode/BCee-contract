// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./IFDCCStorage.sol";

import "./library/image/Background.sol";
import "./library/image/Body.sol";
import "./library/image/Head.sol";
import "./library/image/Face.sol";
import "./library/image/Hands.sol";

contract FDCCStorage is IFDCCStorage {
    constructor(){}

    function constructImage(uint256 seed) external pure returns (string memory) {
        return string.concat(
            Background.constructBackground(seed),
            Body.constructBody(seed),
            Head.constructHead(seed),
            Face.constructFace(seed),
            Hands.constructHands(seed)
        );
    }
}