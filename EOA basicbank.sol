pragma solidity >=0.5.13 <0.7.3;

contract data{
    
    address public myaddr;
    uint public totalbal;
    
    constructor () public{
        myaddr =msg.sender;//storing the value od the deyoling acc
    }
    
    function recvEthers() payable public{
        totalbal +=msg.value;
    }
    
    function widEther() public {
        address payable to =msg.sender;
        to.transfer(address(this).balance);
    }
    function widETHrEOA(address payable _EOA) public{
           _EOA.transfer(address(this).balance); //transfers the balance in this account
        
    }
    function currContraEther()public view returns(uint256){
        return address(this).balance;
    }
    
    
    }
