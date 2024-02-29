// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import "../src/FSU.sol";

contract FSUScript is Script {
    /**
     * @dev Relevant source part starts here and spans across multiple lines
     */
    function setUp() public {}

    /**
     * @dev Main deployment script
     */
    function run() public {
        // Setup
        uint256 deployerPrivateKey = vm.envUint("WALLET_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy
        // TODO: totalSupply
        FSU t = new FSU("FSU Token", "FSU", 5678);

        // Verify + End
        console2.log(t.totalSupply());
        vm.stopBroadcast();
    }
}
