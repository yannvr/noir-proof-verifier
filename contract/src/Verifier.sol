// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Verifier {
    function verify(bytes calldata proof, uint256[] calldata publicInputs) external pure returns (bool) {
        // Mocked verification logic (replace with real generated verifier)
        return true;
    }
}
