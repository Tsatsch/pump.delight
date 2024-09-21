// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Mint.sol";

contract MyTokenTest is Test {
    MyToken public token;

    function setUp() public {
        token = new MyToken("TUM Blockchain Club", "TBC", 1000000000000000000000000);
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000000000000000000000000);
    }

    function testTransfer() public {
        address recipient = address(0x1);
        uint256 amount = 1000000000000000000;
        token.transfer(recipient, amount);
        assertEq(token.balanceOf(recipient), amount);
    }
}