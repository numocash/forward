// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

// import "../../libraries/Reserve.sol";

// /// @title   Reserve Lib API Test
// /// @author  Primitive
// /// @dev     For testing purposes ONLY

// contract TestReserve {
//     using Reserve for Reserve.Data;
//     using Reserve for mapping(bytes32 => Reserve.Data);

//     /// @notice Used for testing time
//     uint256 public timestamp;
//     /// @notice Storage slot for the reserveId used for testing
//     bytes32 public reserveId;
//     /// @notice All the reserve data structs to use for testing
//     mapping(bytes32 => Reserve.Data) public reserves;

//     constructor() {}

//     /// @notice Used for testing
//     function res() public view returns (Reserve.Data memory) {
//         return reserves[reserveId];
//     }

//     /// @notice Called before each unit test to initialize a reserve to test
//     function beforeEach(
//         string memory name,
//         uint256 timestamp_,
//         uint256 reserveQuote,
//         uint256 reserveBase
//     ) public {
//         timestamp = timestamp_; // set the starting time for this reserve
//         bytes32 resId = keccak256(abi.encodePacked(name)); // get bytes32 id for name
//         reserveId = resId; // set this resId in global state to easily fetch in test
//         // create a new reserve data struct
//         reserves[resId] = Reserve.Data({
//             reserveQuote: uint128(reserveQuote), // Quote token balance
//             reserveBase: uint128(reserveBase), // Base token balance
//             liquidity: uint128(2e18),
//             blockTimestamp: uint32(timestamp_),
//             cumulativeQuote: 0,
//             cumulativeBase: 0,
//             cumulativeLiquidity: 0
//         });
//     }

//     /// @notice Used for time dependent tests
//     function _blockTimestamp() public view returns (uint32 blockTimestamp) {
//         blockTimestamp = uint32(timestamp);
//     }

//     /// @notice Increments the timestamp used for testing
//     function step(uint256 timestep) public {
//         timestamp += uint32(timestep);
//     }

//     /// @notice Adds amounts to cumulative reserves
//     function shouldUpdate(bytes32 resId) public returns (Reserve.Data memory) {
//         reserves[resId].update(_blockTimestamp());
//         return reserves[resId];
//     }

//     /// @notice Increases one reserve value and decreases the other by different amounts
//     function shouldSwap(
//         bytes32 resId,
//         bool addXRemoveY,
//         uint256 deltaIn,
//         uint256 deltaOut
//     ) public returns (Reserve.Data memory) {
//         reserves[resId].swap(addXRemoveY, deltaIn, deltaOut, _blockTimestamp());
//         return reserves[resId];
//     }

//     /// @notice Add to both reserves and total supply of liquidity
//     function shouldAllocate(
//         bytes32 resId,
//         uint256 delQuote,
//         uint256 delBase,
//         uint256 delLiquidity
//     ) public returns (Reserve.Data memory) {
//         reserves[resId].allocate(delQuote, delBase, delLiquidity, _blockTimestamp());
//         return reserves[resId];
//     }

//     /// @notice Remove from both reserves and total supply of liquidity
//     function shouldRemove(
//         bytes32 resId,
//         uint256 delQuote,
//         uint256 delBase,
//         uint256 delLiquidity
//     ) public returns (Reserve.Data memory) {
//         reserves[resId].remove(delQuote, delBase, delLiquidity, _blockTimestamp());
//         return reserves[resId];
//     }

//     function update(
//         bytes32 resId,
//         uint256 Quote,
//         uint256 Base,
//         uint256 liquidity,
//         uint32 blockTimestamp
//     ) public returns (Reserve.Data memory) {
//         reserves[resId].cumulativeQuote = Quote;
//         reserves[resId].cumulativeBase = Base;
//         reserves[resId].cumulativeLiquidity = liquidity;
//         reserves[resId].blockTimestamp = blockTimestamp;
//         return reserves[resId];
//     }
// }
