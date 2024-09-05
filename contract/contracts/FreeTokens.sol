// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract FreeTokens is Ownable{
    IERC20 public collateralToken;
    IERC20 public lendingToken;


    constructor(address _one, address _two){
        collateralToken=IERC20(_one);
        lendingToken=IERC20(_two);
    }


    function GetFreeTokens() public {
        collateralToken.transfer(msg.sender, 10000*10**18);
        lendingToken.transfer(msg.sender, 10000*10**18);
    }
}