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

pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "./library/Seed.sol";
import "./library/Metadata.sol";

contract BCee is ERC721Enumerable, Seed {
    address internal immutable deployer;
    address internal immutable BCeeStorage;

    constructor(bytes32 salt, address renderer) ERC721("test", "test") Seed(salt) {
        deployer = msg.sender;
        BCeeStorage = renderer;
        initialize();
    }

    receive() external payable {
        payable(deployer).transfer(msg.value);
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

    function withdraw() public {
        require(msg.sender == deployer, "test");

        payable(deployer).transfer(address(this).balance);
    }

    function claim() public payable {
        uint256 _tokenId = totalSupply();

        require(_tokenId < 10000, "test");
        require(msg.value == 0.1 ether, "test");

        _mint(msg.sender, _tokenId);
    }
}