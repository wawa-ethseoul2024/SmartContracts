// SPDX-License-Identifier: GNU AGPLv3
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Contract of the ETHSeoul2024 Hackathon
 * @author @cosmodude
 * @notice ERC20 token 
 * @dev Transfers enabled only from owner address
 */
contract Points is ERC20, Ownable, ERC20Permit{
    constructor(address _owner) ERC20("Xp", "XP") Ownable(_owner) ERC20Permit("Xp"){}
    
    // set decimals to 2
    function decimals() public view virtual override returns (uint8) {
        return 2;
    }

    /**
     * @notice Mints tokens to the specified address
     * @param to The address of the recipient
     * @param amount Amount of tokens (with 2 decimals)
     */
    function mint(address to, uint256 amount) external  {
        _mint(to, amount);
    }
}
