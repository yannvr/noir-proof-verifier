// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {Verifier} from "../src/Verifier.sol";
import {ProofChecker} from "../src/ProofChecker.sol";

contract DeployProofChecker is Script {
    function run() public {
        vm.startBroadcast();

        Verifier verifier = new Verifier();
        ProofChecker proofChecker = new ProofChecker(address(verifier));

        vm.stopBroadcast();
    }
}
