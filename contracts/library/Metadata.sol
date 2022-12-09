// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Base64.sol";
import "./Strings2.sol";

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
                        constructSvg()
                    ),
                    "\"}"
                )
            )
        );
    }

    function constructSvg() internal pure returns (string memory) {
        return string.concat(
            "<svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">",
            "<path stroke=\"#939393\" d=\"M6 5h1\" />",
            "</svg>"
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


/*
        return "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 32 32\"> <path stroke=\"rgba(0,0,0,0.03529411764705882)\" d=\"M14 0h1M1 16h1M10 19h1M21 19h1\"/> <path stroke=\"rgba(0,0,0,0.10588235294117647)\" d=\"M15 0h1M21 2h1M12 31h1M19 31h1\"/> <path stroke=\"rgba(0,0,0,0.06666666666666667)\" d=\"M16 0h1M19 21h1\"/> <path stroke=\"rgba(0,0,0,0.12549019607843137)\" d=\"M11 1h1\"/> <path stroke=\"rgba(0,0,0,0.5411764705882353)\" d=\"M12 1h1\"/> <path stroke=\"rgba(0,0,0,0.8470588235294118)\" d=\"M13 1h1M7 9h1M2 25h1\"/> <path stroke=\"rgba(0,0,0,0.9921568627450981)\" d=\"M14 1h1M17 18h1M19 23h1M4 27h1M27 27h1\"/> <path stroke=\"#000000\" d=\"M15 1h2M7 12h1M1 17h1M30 17h1M14 18h3M1 22h1M30 22h1M11 30h3M18 30h3\"/> <path stroke=\"rgba(0,0,0,0.9215686274509803)\" d=\"M17 1h1\"/> <path stroke=\"rgba(0,0,0,0.6588235294117647)\" d=\"M18 1h1\"/> <path stroke=\"rgba(0,0,0,0.26666666666666666)\" d=\"M19 1h1M12 25h1M19 25h1\"/> <path stroke=\"rgba(0,0,0,0.011764705882352941)\" d=\"M9 2h1M22 7h1M2 21h1M29 21h1\"/> <path stroke=\"rgba(0,0,0,0.5058823529411764)\" d=\"M10 2h1M23 9h1\"/> <path stroke=\"rgba(0,0,0,0.9725490196078431)\" d=\"M11 2h1\"/> <path stroke=\"rgba(0,0,0,0.8784313725490196)\" d=\"M12 2h1M22 4h1\"/> <path stroke=\"rgba(0,0,0,0.5294117647058824)\" d=\"M13 2h1\"/> <path stroke=\"rgba(0,0,0,0.3137254901960784)\" d=\"M14 2h1\"/> <path stroke=\"rgba(0,0,0,0.22745098039215686)\" d=\"M15 2h1M19 3h1M2 26h1\"/> <path stroke=\"rgba(0,0,0,0.27058823529411763)\" d=\"M16 2h1\"/> <path stroke=\"rgba(0,0,0,0.4392156862745098)\" d=\"M17 2h1\"/> <path stroke=\"rgba(0,0,0,0.7529411764705882)\" d=\"M18 2h1\"/> <path stroke=\"rgba(0,0,0,0.996078431372549)\" d=\"M19 2h1M8 5h1M7 7h1M23 13h1M11 17h1M12 23h1M13 25h1M18 25h1M7 29h1M24 29h1\"/> <path stroke=\"rgba(0,0,0,0.7254901960784313)\" d=\"M20 2h1\"/> <path stroke=\"rgba(0,0,0,0.023529411764705882)\" d=\"M8 3h1M30 25h1\"/> <path stroke=\"rgba(0,0,0,0.6980392156862745)\" d=\"M9 3h1M23 14h1M12 22h1\"/> <path stroke=\"rgba(0,0,0,0.9607843137254902)\" d=\"M10 3h1\"/> <path stroke=\"rgba(0,0,0,0.43137254901960786)\" d=\"M11 3h1\"/> <path stroke=\"rgba(0,0,0,0.01568627450980392)\" d=\"M12 3h1M8 8h1M20 15h1M25 27h1\"/> <path stroke=\"rgba(0,0,0,0.8431372549019608)\" d=\"M20 3h1M10 21h2\"/> <path stroke=\"rgba(0,0,0,0.8980392156862745)\" d=\"M21 3h1\"/> <path stroke=\"rgba(0,0,0,0.1607843137254902)\" d=\"M22 3h1\"/> <path stroke=\"rgba(0,0,0,0.611764705882353)\" d=\"M8 4h1\"/> <path stroke=\"rgba(0,0,0,0.9411764705882353)\" d=\"M9 4h1M2 17h1\"/> <path stroke=\"rgba(0,0,0,0.21568627450980393)\" d=\"M10 4h1M8 12h1\"/> <path stroke=\"rgba(0,0,0,0.054901960784313725)\" d=\"M20 4h1\"/> <path stroke=\"rgba(0,0,0,0.7647058823529411)\" d=\"M21 4h1M13 29h1M18 29h1\"/> <path stroke=\"rgba(0,0,0,0.07058823529411765)\" d=\"M23 4h1M21 5h1M12 21h1M11 31h1M20 31h1\"/> <path stroke=\"rgba(0,0,0,0.2823529411764706)\" d=\"M7 5h1M22 13h1M24 28h1\"/> <path stroke=\"rgba(0,0,0,0.30196078431372547)\" d=\"M9 5h1\"/> <path stroke=\"rgba(0,0,0,0.8901960784313725)\" d=\"M22 5h1\"/> <path stroke=\"rgba(0,0,0,0.6196078431372549)\" d=\"M23 5h1M23 11h1M18 17h1\"/> <path stroke=\"rgba(0,0,0,0.7803921568627451)\" d=\"M7 6h1M1 18h1M30 18h1M13 24h1\"/> <path stroke=\"rgba(0,0,0,0.6901960784313725)\" d=\"M8 6h1\"/> <path stroke=\"rgba(0,0,0,0.34901960784313724)\" d=\"M22 6h1M5 17h1M27 28h1\"/> <path stroke=\"rgba(0,0,0,0.9882352941176471)\" d=\"M23 6h1M8 14h1\"/> <path stroke=\"rgba(0,0,0,0.12941176470588237)\" d=\"M24 6h1M9 21h1M22 21h1\"/> <path stroke=\"rgba(0,0,0,0.13725490196078433)\" d=\"M6 7h1M14 25h1\"/> <path stroke=\"rgba(0,0,0,0.25882352941176473)\" d=\"M8 7h1M20 29h1\"/> <path stroke=\"rgba(0,0,0,0.9058823529411765)\" d=\"M23 7h1\"/> <path stroke=\"rgba(0,0,0,0.4745098039215686)\" d=\"M24 7h1\"/> <path stroke=\"rgba(0,0,0,0.3686274509803922)\" d=\"M6 8h1\"/> <path stroke=\"rgba(0,0,0,0.9647058823529412)\" d=\"M7 8h1M10 30h1M21 30h1\"/> <path stroke=\"rgba(0,0,0,0.6470588235294118)\" d=\"M23 8h1M0 18h1M31 18h1\"/> <path stroke=\"rgba(0,0,0,0.7058823529411765)\" d=\"M24 8h1M3 25h1\"/> <path stroke=\"rgba(0,0,0,0.48627450980392156)\" d=\"M6 9h1\"/> <path stroke=\"rgba(0,0,0,0.8235294117647058)\" d=\"M24 9h1M7 19h1M1 23h1M30 23h1\"/> <path stroke=\"rgba(0,0,0,0.49411764705882355)\" d=\"M6 10h1\"/> <path stroke=\"rgba(0,0,0,0.8392156862745098)\" d=\"M7 10h1M20 17h1M20 21h2\"/> <path stroke=\"rgba(0,0,0,0.4980392156862745)\" d=\"M23 10h1\"/> <path stroke=\"rgba(0,0,0,0.8313725490196079)\" d=\"M24 10h1M22 14h1\"/> <path stroke=\"rgba(0,0,0,0.39215686274509803)\" d=\"M6 11h1\"/> <path stroke=\"rgba(0,0,0,0.9490196078431372)\" d=\"M7 11h1\"/> <path stroke=\"rgba(0,0,0,0.00784313725490196)\" d=\"M8 11h1M0 16h1M31 16h1\"/> <path stroke=\"rgba(0,0,0,0.7294117647058823)\" d=\"M24 11h1\"/> <path stroke=\"rgba(0,0,0,0.17254901960784313)\" d=\"M6 12h1M7 30h1M24 30h1\"/> <path stroke=\"rgba(0,0,0,0.8705882352941177)\" d=\"M23 12h1M8 29h1\"/> <path stroke=\"rgba(0,0,0,0.5137254901960784)\" d=\"M24 12h1M14 30h1M17 30h1\"/> <path stroke=\"rgba(0,0,0,0.8352941176470589)\" d=\"M7 13h1\"/> <path stroke=\"rgba(0,0,0,0.6235294117647059)\" d=\"M8 13h1\"/> <path stroke=\"rgba(0,0,0,0.17647058823529413)\" d=\"M24 13h1M14 17h1\"/> <path stroke=\"rgba(0,0,0,0.3568627450980392)\" d=\"M7 14h1\"/> <path stroke=\"rgba(0,0,0,0.2196078431372549)\" d=\"M9 14h1M12 29h1M19 29h1\"/> <path stroke=\"rgba(0,0,0,0.03137254901960784)\" d=\"M21 14h1M30 16h1\"/> <path stroke=\"rgba(0,0,0,0.7098039215686275)\" d=\"M8 15h1\"/> <path stroke=\"rgba(0,0,0,0.8941176470588236)\" d=\"M9 15h1\"/> <path stroke=\"rgba(0,0,0,0.13333333333333333)\" d=\"M10 15h1M16 17h1M17 25h1\"/> <path stroke=\"rgba(0,0,0,0.6705882352941176)\" d=\"M21 15h1\"/> <path stroke=\"rgba(0,0,0,0.9294117647058824)\" d=\"M22 15h1\"/> <path stroke=\"rgba(0,0,0,0.12156862745098039)\" d=\"M23 15h1M19 16h1\"/> <path stroke=\"rgba(0,0,0,0.058823529411764705)\" d=\"M8 16h1M6 17h1M25 17h1M5 19h1M26 19h1\"/> <path stroke=\"rgba(0,0,0,0.796078431372549)\" d=\"M9 16h1M28 17h1M13 27h1\"/> <path stroke=\"rgba(0,0,0,0.9098039215686274)\" d=\"M10 16h1\"/> <path stroke=\"rgba(0,0,0,0.2980392156862745)\" d=\"M11 16h1\"/> <path stroke=\"rgba(0,0,0,0.7450980392156863)\" d=\"M20 16h1\"/> <path stroke=\"rgba(0,0,0,0.9529411764705882)\" d=\"M21 16h1M1 21h1M30 21h1\"/> <path stroke=\"rgba(0,0,0,0.24313725490196078)\" d=\"M22 16h1M11 23h1M20 23h1\"/> <path stroke=\"rgba(0,0,0,0.5372549019607843)\" d=\"M0 17h1M31 17h1\"/> <path stroke=\"rgba(0,0,0,0.8)\" d=\"M3 17h1\"/> <path stroke=\"rgba(0,0,0,0.6039215686274509)\" d=\"M4 17h1\"/> <path stroke=\"rgba(0,0,0,0.047058823529411764)\" d=\"M9 17h1\"/> <path stroke=\"rgba(0,0,0,0.6392156862745098)\" d=\"M10 17h1\"/> <path stroke=\"rgba(0,0,0,0.7607843137254902)\" d=\"M12 17h1M4 18h1M27 18h1\"/> <path stroke=\"rgba(0,0,0,0.396078431372549)\" d=\"M13 17h1M2 18h1M29 18h1\"/> <path stroke=\"rgba(0,0,0,0.09411764705882353)\" d=\"M15 17h1M20 20h1\"/> <path stroke=\"rgba(0,0,0,0.3058823529411765)\" d=\"M17 17h1M18 23h1\"/> <path stroke=\"rgba(0,0,0,0.9686274509803922)\" d=\"M19 17h1M6 18h1M25 18h1M2 24h1M29 24h1\"/> <path stroke=\"rgba(0,0,0,0.1843137254901961)\" d=\"M21 17h1\"/> <path stroke=\"rgba(0,0,0,0.34509803921568627)\" d=\"M26 17h1M4 28h1\"/> <path stroke=\"rgba(0,0,0,0.6)\" d=\"M27 17h1\"/> <path stroke=\"rgba(0,0,0,0.9372549019607843)\" d=\"M29 17h1\"/> <path stroke=\"rgba(0,0,0,0.5490196078431373)\" d=\"M3 18h1M28 18h1M0 20h1M31 20h1M14 27h1M17 27h1\"/> <path stroke=\"rgba(0,0,0,0.9764705882352941)\" d=\"M5 18h1M26 18h1\"/> <path stroke=\"rgba(0,0,0,0.6352941176470588)\" d=\"M7 18h1M0 19h1M31 19h1\"/> <path stroke=\"rgba(0,0,0,0.16470588235294117)\" d=\"M8 18h1M23 18h1M14 19h1\"/> <path stroke=\"rgba(0,0,0,0.23529411764705882)\" d=\"M11 18h1\"/> <path stroke=\"rgba(0,0,0,0.6745098039215687)\" d=\"M12 18h1\"/> <path stroke=\"rgba(0,0,0,0.9568627450980393)\" d=\"M13 18h1M13 26h1M18 26h1M5 28h1M26 28h1\"/> <path stroke=\"rgba(0,0,0,0.792156862745098)\" d=\"M18 18h1M18 27h1\"/> <path stroke=\"rgba(0,0,0,0.4)\" d=\"M19 18h1M1 24h1\"/> <path stroke=\"rgba(0,0,0,0.0196078431372549)\" d=\"M20 18h1M13 19h1M1 25h1M12 26h1M19 26h1M6 27h1\"/> <path stroke=\"rgba(0,0,0,0.6313725490196078)\" d=\"M24 18h1M14 29h1M17 29h1\"/> <path stroke=\"rgba(0,0,0,0.6941176470588235)\" d=\"M1 19h1M30 19h1M19 22h1\"/> <path stroke=\"rgba(0,0,0,0.38823529411764707)\" d=\"M6 19h1M25 19h1M0 21h1M31 21h1M14 26h1\"/> <path stroke=\"rgba(0,0,0,0.984313725490196)\" d=\"M8 19h1M23 19h1\"/> <path stroke=\"rgba(0,0,0,0.5647058823529412)\" d=\"M9 19h1\"/> <path stroke=\"rgba(0,0,0,0.23921568627450981)\" d=\"M15 19h1M2 22h1M29 22h1\"/> <path stroke=\"rgba(0,0,0,0.2)\" d=\"M16 19h1\"/> <path stroke=\"rgba(0,0,0,0.06274509803921569)\" d=\"M17 19h1\"/> <path stroke=\"rgba(0,0,0,0.5607843137254902)\" d=\"M22 19h1M5 27h1\"/> <path stroke=\"rgba(0,0,0,0.8196078431372549)\" d=\"M24 19h1M6 28h1\"/> <path stroke=\"rgba(0,0,0,0.788235294117647)\" d=\"M1 20h1M30 20h1M9 30h1M22 30h1\"/> <path stroke=\"rgba(0,0,0,0.00392156862745098)\" d=\"M7 20h1M24 20h1M8 28h1M10 31h1M14 31h1M17 31h1M21 31h1\"/> <path stroke=\"rgba(0,0,0,0.3764705882352941)\" d=\"M8 20h1M23 20h1M10 29h1\"/> <path stroke=\"rgba(0,0,0,0.9333333333333333)\" d=\"M9 20h1M22 20h1\"/> <path stroke=\"rgba(0,0,0,0.807843137254902)\" d=\"M10 20h1\"/> <path stroke=\"rgba(0,0,0,0.09803921568627451)\" d=\"M11 20h1M10 22h1M21 22h1\"/> <path stroke=\"rgba(0,0,0,0.803921568627451)\" d=\"M21 20h1\"/> <path stroke=\"rgba(0,0,0,0.14901960784313725)\" d=\"M0 22h1M31 22h1\"/> <path stroke=\"rgba(0,0,0,0.8862745098039215)\" d=\"M11 22h1\"/> <path stroke=\"rgba(0,0,0,0.8823529411764706)\" d=\"M20 22h1\"/> <path stroke=\"rgba(0,0,0,0.6078431372549019)\" d=\"M2 23h1M29 23h1\"/> <path stroke=\"rgba(0,0,0,0.30980392156862746)\" d=\"M13 23h1\"/> <path stroke=\"rgba(0,0,0,0.11764705882352941)\" d=\"M3 24h1M28 24h1\"/> <path stroke=\"rgba(0,0,0,0.6784313725490196)\" d=\"M12 24h1M19 24h1\"/> <path stroke=\"rgba(0,0,0,0.7764705882352941)\" d=\"M18 24h1\"/> <path stroke=\"rgba(0,0,0,0.403921568627451)\" d=\"M30 24h1\"/> <path stroke=\"rgba(0,0,0,0.7019607843137254)\" d=\"M28 25h1M13 28h1M18 28h1M6 29h1M25 29h1\"/> <path stroke=\"rgba(0,0,0,0.8509803921568627)\" d=\"M29 25h1\"/> <path stroke=\"rgba(0,0,0,0.9803921568627451)\" d=\"M3 26h1M28 26h1\"/> <path stroke=\"rgba(0,0,0,0.5098039215686274)\" d=\"M4 26h1M27 26h1\"/> <path stroke=\"rgba(0,0,0,0.3843137254901961)\" d=\"M17 26h1M3 27h1M28 27h1\"/> <path stroke=\"rgba(0,0,0,0.23137254901960785)\" d=\"M29 26h1\"/> <path stroke=\"rgba(0,0,0,0.5568627450980392)\" d=\"M26 27h1\"/> <path stroke=\"rgba(0,0,0,0.2901960784313726)\" d=\"M7 28h1\"/> <path stroke=\"rgba(0,0,0,0.6274509803921569)\" d=\"M14 28h1M17 28h1\"/> <path stroke=\"rgba(0,0,0,0.8117647058823529)\" d=\"M25 28h1\"/> <path stroke=\"rgba(0,0,0,0.1450980392156863)\" d=\"M5 29h1M26 29h1\"/> <path stroke=\"rgba(0,0,0,0.5764705882352941)\" d=\"M9 29h1\"/> <path stroke=\"rgba(0,0,0,0.2627450980392157)\" d=\"M11 29h1\"/> <path stroke=\"rgba(0,0,0,0.37254901960784315)\" d=\"M21 29h1\"/> <path stroke=\"rgba(0,0,0,0.5725490196078431)\" d=\"M22 29h1\"/> <path stroke=\"rgba(0,0,0,0.8666666666666667)\" d=\"M23 29h1\"/> <path stroke=\"rgba(0,0,0,0.5254901960784314)\" d=\"M8 30h1M23 30h1\"/> <path stroke=\"rgba(0,0,0,0.0784313725490196)\" d=\"M13 31h1M18 31h1\"/> </svg>";
        */