pragma solidity ^0.8.0;

interface IUniV2OptimizerFactory {
 
     function addStrategy(
        address _stakingRewardAddr,
        address _uniV2RouterAddr
    ) external returns(uint256);
    
    function createUniV2Optimizer(
        uint256 _poolId
    ) external returns(address newUniV2Optimizer);

    function compoundFactoryOptimizers() external;

    function getOwnerOptimizers(
        address _owner
    ) external view returns(address[] memory);

    function getFactoryOptimizerByStrategyID(
        uint256 _poolId
    ) external view returns(address);

    function getOptimizerCount() external view returns(uint);
    
    function getStrategyCount() external view returns(uint);

}



