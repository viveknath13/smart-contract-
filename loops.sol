// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Loops {
    function loop() public pure {
        for (uint256 num = 0; num < 10; num++) {

            //If the condition is true it'll run next iteration  without excuting rest of code ;
            if (num == 3) {
                continue;
            }
            if (num == 5) {
                break;
            }

             uint256 j;
             while (j < 10){
                j++;
             }
        }

      


    }
}
