// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ConsentualAttestationStation} from "../src/ConsentualAttestationStation.sol";

import {Script} from "../lib/forge-std/src/Script.sol";

/**
 * @title AttestationStationScript
 * @notice Script for deploying AttestationStation.
 * @dev https://book.getfoundry.sh/reference/forge/forge-script
 *
 * @dev This script is used to deploy AttestationStation with forge script
 * example start anvil with `anvil` command and then run
 * forge script contracts/script/ConsentualAttestationStation.s.sol:ConsentualAttestationStationScript --rpc-url http://localhost:8545 --broadcast -vvv
 * @dev Scripts can be used for any scripting not just deployment
 */
contract ConsentualAttestationStationScript is Script {
    function setUp() public {}

    function run() public {
        // read DEPLOYER_PRIVATE_KEY from environment variables
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");

        // start broadcast any transaction after this point will be submitted to chain
        vm.startBroadcast(deployerPrivateKey);

        // deploy AttestationStation
        ConsentualAttestationStation counter = new ConsentualAttestationStation();

        // stop broadcasting transactions
        vm.stopBroadcast();
    }
}
