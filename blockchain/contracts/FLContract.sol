// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FLContract {
    mapping(uint256 => string) private weights;
    uint256 private weightCount;

    event WeightsStored(uint256 indexed index, string weights);

    function storeWeights(string memory w) public {
        weights[weightCount] = w;
        emit WeightsStored(weightCount, w);
        weightCount += 1;
    }

    function getWeightCount() public view returns (uint256) {
        return weightCount;
    }

    function getWeight(uint256 index) public view returns (string memory) {
        require(index < weightCount, "index out of range");
        return weights[index];
    }
}
