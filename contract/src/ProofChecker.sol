// SPDX-License-Identifier: MITcd ..

pragma solidity ^0.8.19;

import "./Verifier.sol";

contract ProofChecker {
    Verifier public verifier;

    constructor(address _verifier) {
        verifier = Verifier(_verifier);
    }

    function verifyProof(bytes calldata proof, uint256[] calldata publicInputs) external view returns (bool) {
        return verifier.verify(proof, publicInputs);
    }
}
