# Solidity Security Researcher

Welcome to my GitHub profile!, I'm a Solidity security researcher passionate about building secure and resilient smartcontracts. 
Here, I document my journey, share code snippets and tutorials on secure Solidity programming, and showcase projects that highlight 
my expertise in smart contract security.

---

## Table of Contents

- [About Me](#about-me)
- [My Journey](#my-journey)
- [Code Snippets and Tutorials](#code-snippets-and-tutorials)
  - [Safe Array Removal by Name](#example-1-safe-array-removal-by-name)
  - [Reentrancy Guard Example](#example-2-reentrancy-guard-example)
- [Projects](#projects)
- [Connect with Me](#connect-with-me)
- [License](#license)

---

## About Me

I am a Solidity security researcher and developer focused on identifying vulnerabilities and implementing best practices in smart contract design. 
I believe that by sharing knowledge and collaborating on security research, we can build a safer blockchain ecosystem.

---

## My Journey

My journey began as a dapps user preferrably investor and trader 5yrs ago, to cut the story short, i began loving the security aspect of smartcontract
when i feel like i need to start doing something more inquisitive, i love asking questions, then i start learning solidity 3yrs ago.
i kept coming and going back to been an investor to now full time journey into web3 security research and analysis in order to help secure the space against bad actors.
My research and experiments have led me to:
- Explore secure coding patterns for Solidity.
- Investigate common vulnerabilities and their mitigations.
- Develop tools and libraries that assist developers in writing secure contracts.
- Contribute to open-source projects dedicated to blockchain security.

I document my findings and learning experiences here to help others avoid common pitfalls and build better, more secure decentralized applications.

---

## Code Snippets and Tutorials

### Example 1: Safe Array Removal by Name

This snippet demonstrates how to safely remove an element from an array of names using the **Swap and Pop** method after finding the element by its value:

```solidity
pragma solidity ^0.8.0;

contract SafeArrayRemoval {
    string[] public names;

    // Removes a name by value using swap and pop.
    function removeByName(string memory name) public {
        uint index = findIndex(name);
        names[index] = names[names.length - 1];
        names.pop();
    }

    // Finds the index of the specified name.
    function findIndex(string memory name) internal view returns (uint) {
        for (uint i = 0; i < names.length; i++) {
            if (keccak256(bytes(names[i])) == keccak256(bytes(name))) {
                return i;
            }
        }
        revert("Name not found");
    }
}
