// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Whitelist.sol";

contract WhitelistScript is Script {
    // function setUp() public {}

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Whitelist whitelist = new Whitelist(10);

        vm.stopBroadcast();
    }
}
