// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/LW3Punks.sol";

contract DeployScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        LW3Punks nft = new LW3Punks("Qmbygo38DWF1V8GttM1zy89KzyZTPU2FLUzQtiDvB7q6i5");

        vm.stopBroadcast();
    }
}
