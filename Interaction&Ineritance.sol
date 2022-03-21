pragma solidity 0.5.1;

contract ERC20Token {
    string public name;
    mapping (address => uint256) public balances;

    function mint() public{
            balances[msg.sender] ++;
    }
}

contract MyContract{
    address payable wallet;

    constructor(address payable _wallet) public{
        wallet = _wallet;
    }

    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        wallet.transfer(msg.value);
    }
}

/// Smart Contract Interaction & Inheritance
