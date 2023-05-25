// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.18;

import "../../libraries/SSVStorage.sol";

library CoreLib {

    function getVersion() internal pure returns (string memory) {
        return "v0.0.5";
    }

    function transfer(address to, uint256 amount) internal {
        if (!SSVStorage.load().token.transfer(to, amount)) {
            revert ISSVNetworkCore.TokenTransferFailed();
        }
    }
}