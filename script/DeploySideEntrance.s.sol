// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Script.sol";
import {SideEntranceLenderPool} from "../src/SideEntranceLenderPool.sol";

contract DeploySideEntranceLenderPool is Script {
    function run() external {
        vm.startBroadcast(); 

        SideEntranceLenderPool pool = new SideEntranceLenderPool();
        console.log("SideEntranceLenderPool deployed at:", address(pool));

        vm.stopBroadcast();
    }
}
