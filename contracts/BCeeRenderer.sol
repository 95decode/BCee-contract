// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*

                     :~7777777777777777777777!~.                 
                    :?G@@@@@@@@@@@@@@@@@@@@@@&5!                 
                 ^7Y555555555555555555555555555PPJ!.             
                .7G@@G?^::^^^^^^^^^^^^^^^^^::~JB&#5!.            
                 !G@@G?^::^^^^^^^^^^^^~~^^^^^~~!7?5GGY~          
             .:^!JPGGY!^~!?JJJJJJJJ?!~^^~~~^^^~!?YB@@&P?~:       
             ^Y#&BY!^^:^7P#@@@@@@@@GJ~^^^~^^^~JG&@@@@@@@#Y~      
             ~5&@#J~^!J555YYJJJJJYY555Y?!~!?Y555YYJ??JJYYYYJ7~.  
             ^Y#@BJ~!5&@BJ:   ..  .!P@@G7~7P@@G7.  ..   :J#@#J^  
             ^Y&@#J~!Y#@B?:.~YGP7:.!P@@P7~7P@@P!..7PB5~..?B@#J^  
          .:~75GB57~!5#@B?:.~5BP?:.!P@@P7~7P@@P!.:7PB5!..?B@#J^  
         .7G&#P?~^^^75&@#J:  ...  .!P@@G7~7P@@G7.  ...  :J#@#J^  
      .~?Y5PG5?~^:^^!?YPP5YJJJ??JJJY5P5?!~!?5P5YYJ????JJYYYY?~.  
     .!P&@G?~^^~~~~~~^^~7P&@@@@@@@@GJ~^^^~^^^~JG@@@@@@@@#Y~      
  .!YPP5YJ7!^^^~~~~~~^^^~7JYYYJJYYJ?!~^^~~~^^~!7J5#@@&P7^:       
  ^J#@&5~::^~~~~~~~~~~~~^^^^^^^^^^^^^~~~~~~~~~^:^!YG#P?^.        
  :JB@#5!^^^~~^^^^^~~~~~~^^^^^~~~~~~~~~~~~~~~~~~~~~~7JG#BY~      
  :JB@#5!^^^~!?JJ?7~^^^~!?JJ?!~^^~~~~~~~~~~~~~~~~^^:^?B@@P!      
  :JB@#5!^:^~7P&@BY!^:^~?G&@GJ~^^~~~~~~~~~~~~~~~~~^^~JG@&5!      
  :JB@#5!^::~7P&@#Y!^:^~?G@@BJ~^^~~~~~~~~~~~~~~~~^^:^?B@@P!      
  :JB@#5!^::~7P&@BY~^::~?G&@BJ~^^~~~~~~~~~~~~~~~~~~~7JG#BY~      
  :JB@#5!^::~?P@@BJ~:.:^?G@@BJ~^^~~~~~~~~~~~~~^^^7YB#GJ~:.       
  :JB@#5!^^^~!JPGP5YJJJJYPGGY7~^^~~~~~~~~~~~~~^^^7P@@B7          
  :JB@#5!^^^~~^^!JG&@@@@BY7~^^~~~~~~~~~~~~~~~~^^^7P&@B?.         
  :JB@#5!^^^~^^^^!J5PPP5J7~^^^~~~~~~~~~~~~~~~~^^^7P&@G?:         
  :JB@#5!^^^~~~~~~^^^^^^^~~~~~~~~~~~~~~~~~~~~~^^^7P&@B?:         
  ^J#@&5~::^~~~~~~~^^^^^^~~~~~~~~~~~~~~~~~~~~~^:^!P@@B?:         
  :!YGG5J?7~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^~!7?YPGGY!.         
     .!P&@G?~:^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:^~JB@#5~.            
      .!J55PPP55555PPPPPPPPPPPPPPPP555555PPPPPP5Y?~.             
         .7P&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&5~                 
          .^!JG@@#57!~!!!!!!!!!!~~7YB@@GJ!!!!!^.                 
             ^Y#@G!                !P@&5^                        
             ^Y&@G7                !P@&5^                        
             ^Y&@@GY7~.           .!P@@&PJ!^.                    
             ^JB@@@@#Y~            !5&@@@@G?:                    
             .^~7777!^.            :^!7777!^.                    

*/

import "./IBCeeRenderer.sol";
import "./library/image/Background.sol";
import "./library/image/Body.sol";
import "./library/image/Head.sol";
import "./library/image/Face.sol";
import "./library/image/Hands.sol";

contract BCeeRenderer is IBCeeRenderer {
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