// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./Parent1.sol";

contract child1{
    Parent1Interface public parent1contract;

    constructor(address _parent1contractaddress){
        parent1contract = Parent1Interface(_parent1contractaddress);
    }

    function setValueFromChild(uint256 _a, uint256 _b) external{
        parent1contract.setValue(_a, _b);
    }

    function getValueFromChild() external view returns (uint256){
        return parent1contract.getValue();
    }
}
