# Solidity Exercises

My solutions to the [Solidity exercises](https://www.rareskills.io/learn-solidity). Official repository: https://github.com/rareSkills/solidity-exercises.

In addition, this repository contains extra exercises conducted on remix.ethereum.org as well as sundry other practice problems.


## Installation

Install foundry

```
curl -L https://foundry.paradigm.xyz | bash
```

Complete the exercises in order and test with

```
cd <Problem Name>
forge test -vvv
```

for example, in the Add/ directory, open `src/Add.sol` and change the code so it compiles. The solution is

```solidity
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
```

Save your changes, then, in the same directory, test it with

```
forge test -vvv
```

To check all tests, run the `test-all.sh` script in the project root:

```bash
  $ ./test-all.sh
```
