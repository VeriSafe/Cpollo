pragma solidity ^0.4.24;

import "./ERC20.sol";
import "./ERC20Burnable.sol";
import "./ERC20Detailed.sol";
import "./SafeERC20.sol";


contract Cpollo is ERC20, ERC20Detailed, ERC20Burnable {
    using SafeERC20 for ERC20;

    constructor(
        string name,
        string symbol,
        uint8 decimals
    )
        ERC20Burnable()
        ERC20Detailed(name, symbol, decimals)
        ERC20()
        public
    {
        _mint(0x7438ADA3D33D1b3C7e1B25267aCbEd562FfD9b9C, 20000000000 * (10 ** uint256(decimals)));
    }
}
