// SPDX-License-Identifier: MIT

/*

██████╗  ██████╗███████╗███████╗                                          
██╔══██╗██╔════╝██╔════╝██╔════╝                                          
██████╔╝██║     █████╗  █████╗                                            
██╔══██╗██║     ██╔══╝  ██╔══╝                                            
██████╔╝╚██████╗███████╗███████╗                                          
╚═════╝  ╚═════╝╚══════╝╚══════╝                                          

*/

/*

██████╗ ██╗     ███████╗███████╗███████╗███████╗██████╗                   
██╔══██╗██║     ██╔════╝██╔════╝██╔════╝██╔════╝██╔══██╗                  
██████╔╝██║     █████╗  ███████╗███████╗█████╗  ██║  ██║                  
██╔══██╗██║     ██╔══╝  ╚════██║╚════██║██╔══╝  ██║  ██║                  
██████╔╝███████╗███████╗███████║███████║███████╗██████╔╝                  
╚═════╝ ╚══════╝╚══════╝╚══════╝╚══════╝╚══════╝╚═════╝                   
                                                                          
 ██████╗██████╗ ███████╗ █████╗ ████████╗██╗   ██╗██████╗ ███████╗███████╗
██╔════╝██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██║   ██║██╔══██╗██╔════╝██╔════╝
██║     ██████╔╝█████╗  ███████║   ██║   ██║   ██║██████╔╝█████╗  ███████╗
██║     ██╔══██╗██╔══╝  ██╔══██║   ██║   ██║   ██║██╔══██╗██╔══╝  ╚════██║
╚██████╗██║  ██║███████╗██║  ██║   ██║   ╚██████╔╝██║  ██║███████╗███████║
 ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝
                                                                          
███████╗██╗  ██╗██╗███████╗████████╗    ██╗███╗   ██╗                     
██╔════╝╚██╗██╔╝██║██╔════╝╚══██╔══╝    ██║████╗  ██║                     
█████╗   ╚███╔╝ ██║███████╗   ██║       ██║██╔██╗ ██║                     
██╔══╝   ██╔██╗ ██║╚════██║   ██║       ██║██║╚██╗██║                     
███████╗██╔╝ ██╗██║███████║   ██║       ██║██║ ╚████║                     
╚══════╝╚═╝  ╚═╝╚═╝╚══════╝   ╚═╝       ╚═╝╚═╝  ╚═══╝                     
                                                                          
███████╗████████╗██╗  ██╗███████╗██████╗ ███████╗██╗   ██╗███╗   ███╗     
██╔════╝╚══██╔══╝██║  ██║██╔════╝██╔══██╗██╔════╝██║   ██║████╗ ████║     
█████╗     ██║   ███████║█████╗  ██████╔╝█████╗  ██║   ██║██╔████╔██║     
██╔══╝     ██║   ██╔══██║██╔══╝  ██╔══██╗██╔══╝  ██║   ██║██║╚██╔╝██║     
███████╗   ██║   ██║  ██║███████╗██║  ██║███████╗╚██████╔╝██║ ╚═╝ ██║     
╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝     ╚═╝     

*/

// BCee does not store NFT's metadata in external cloud or ipfs.
// These are only on-chain, and the traits are determined by the salt and tokenId.
// Also, there are no functions that can only be called by an address like owner, 
// and it is completely decentralized.

pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "./library/Seed.sol";
import "./library/Metadata.sol";

contract BCee is ERC721Enumerable, Seed {
    address internal immutable deployer;
    address internal immutable BCeeStorage;

    constructor(bytes32 salt, address renderer) ERC721("Blessed Creatures exist in ethereum", "BCee") Seed(salt) {
        deployer = msg.sender;
        BCeeStorage = renderer;
        initialize();
    }

    function initialize() internal {
        for(uint i = 0; i < 20; i++) {
            _mint(deployer, i);
        }
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        super._requireMinted(tokenId);
        uint256 seed = generateSeed(tokenId);

        return Metadata.constructMetadata(tokenId, seed, BCeeStorage);
    }

    function claim() public payable {
        uint256 _tokenId = totalSupply();

        require(_tokenId < 1000, "The BCee drop is over.");
        require(msg.value == 0.1 ether, "Ether required for the claim is only 0.1 ether.");

        payable(deployer).transfer(address(this).balance);

        _mint(msg.sender, _tokenId);
    }
}