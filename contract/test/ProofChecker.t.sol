// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/ProofChecker.sol";
import "../src/Verifier.sol";

contract ProofCheckerTest is Test {
    ProofChecker proofChecker;
    Verifier verifier;

    function setUp() public {
        verifier = new Verifier();
        proofChecker = new ProofChecker(address(verifier));
    }

    function testVerifyProof() public view {
        bytes memory proof = hex"";
        uint256[] memory publicInputs = new uint256[](1);
        publicInputs[0] = 25;

        bool result = proofChecker.verifyProof(proof, publicInputs);
        assertTrue(result, "Proof verification failed");
    }
}
