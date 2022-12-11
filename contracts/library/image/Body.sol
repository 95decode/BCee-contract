// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Body {
    string constant internal BODY = "<path stroke=\"#000000\" d=\"M13 4h7M12 5h1M20 5h1M12 6h1M21 6h1M11 7h1M22 7h1M11 8h1M22 8h1M11 9h1M22 9h1M10 10h1M21 10h1M9 11h1M21 11h1M8 12h1M21 12h1M8 13h1M22 13h1M8 14h1M22 14h1M8 15h1M22 15h1M8 16h1M21 16h1M8 17h1M21 17h1M8 18h1M21 18h1M8 19h1M21 19h1M9 20h1M20 20h1M10 21h10M11 22h1M17 22h1M11 23h1M17 23h1M11 24h2M17 24h2\" />";
    string constant internal SHADOW = "<path stroke=\"#c3c3c3\" d=\"M13 23h3M9 24h2M13 24h4M19 24h2M9 25h14M12 26h12M15 27h10M17 28h8M19 29h5\" />";

    string constant internal BODY_PREFIX = "<path stroke=\"#";
    string constant internal BODY_SUFFIX = "\" d=\"M13 5h7M13 6h8M12 7h10M12 8h10M12 9h10M11 10h10M10 11h11M9 12h12M9 13h13M9 14h13M9 15h13M9 16h12M9 17h12M9 18h12M9 19h12M10 20h10\" />";
    string constant internal BODY_COLOR_A = "b97a57";
    string constant internal BODY_COLOR_B = "ffaec9";

    function constructBody(uint256 seed) internal pure returns (string memory) {
        if(seed > 5) {
            return string.concat(
                BODY,
                SHADOW,
                BODY_PREFIX,
                BODY_COLOR_A,
                BODY_SUFFIX
            );
        } else {
            return string.concat(
                BODY,
                SHADOW,
                BODY_PREFIX,
                BODY_COLOR_B,
                BODY_SUFFIX
            );
        }
    }
}



/*

<path stroke="#000000" d="M13 4h7M12 5h1M20 5h1M12 6h1M21 6h1M11 7h1M22 7h1M11 8h1M22 8h1M11 9h1M22 9h1M10 10h1M21 10h1M9 11h1M21 11h1M8 12h1M21 12h1M8 13h1M22 13h1M8 14h1M22 14h1M8 15h1M22 15h1M8 16h1M21 16h1M8 17h1M21 17h1M8 18h1M21 18h1M8 19h1M21 19h1M9 20h1M20 20h1M10 21h10M11 22h1M17 22h1M11 23h1M17 23h1M11 24h2M17 24h2" />
<path stroke="#c3c3c3" d="M13 23h3M9 24h2M13 24h4M19 24h2M9 25h14M12 26h12M15 27h10M17 28h8M19 29h5" />
<path stroke="#b97a57" d="M13 5h7M13 6h8M12 7h10M12 8h10M12 9h10M11 10h10M10 11h11M9 12h12M9 13h13M9 14h13M9 15h13M9 16h12M9 17h12M9 18h12M9 19h12M10 20h10" />

*/