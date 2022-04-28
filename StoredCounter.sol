// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/// @title Stored Counter - with storeNumber and retrieveNumber methods

contract StoredCounter {
    uint public count;

    // Function to set the current count (stored Number)
    function storeNumber(uint _count) public {
        count = _count;
    }


    // Function to get the current count (stored Number)
    function retrieveNumber() public view returns (uint) {
        return count;
    }

    // Function reset to zero the current count
    function reset() public{
        count = 0;
    }


    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }
}
