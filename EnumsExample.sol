pragma solidity 0.5.1;

contract MyContract{
    enum State { Waiting, Ready,  Active }
    State public state;

    constructor () public {
        state = State.Waiting;
    }

    function activate() public{
        state = State.Active;
    }

    function isActive() public view returns(bool){
        return state == State.Active;
    }
}
/// this program will show 0 in waiting state 
/// this program will show 1 in ready state 
/// this program will show 2 in acttive state