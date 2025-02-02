```solidity
function add(uint256 a, uint256 b) public pure returns (uint256) {
  uint256 c = a + b;
  require(c >= a, "Addition overflow");
  return c;
}
```