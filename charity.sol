pragma solidity >=0.5.13 <0.7.3;

contract data{
    
    address public owner;//if this is not made publiv the smart contract will not show who the owner is the in deyoled contract
    bool public isPause;
    constructor () public{
        owner =msg.sender;//storing the value od the deyoling acc
    }
    
    function recvEthers() payable public{
        
    }
    
    function widALLEther() public {
        require(msg.sender== owner, "you cannot widthwath all ethers");//you have to be the owner who deyoled the contract
        require(!isPause,"contract is paused accnnot henace no widthdraw can take place");//you cannot widrwath whean acc is paused
        address payable to =msg.sender;
        to.transfer(address(this).balance);
    }
    function setPause(bool _ispause) public{
        require(msg.sender==owner,"you are not the owner hence you cannot acess this");
        isPause =_ispause;
        
    }
    function setNewowner(address _nowner) public{
        require(msg.sender== owner, "you are not owner so no acess");
        owner = _nowner;
        
    }
    
    function getBalanceincontract() public view returns(uint256){ 
        return address(this).balance; 
    } 
    
    }
