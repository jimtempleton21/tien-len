pragma  solidity ^0.4.24;

  
contract Cplayer{ struct player{

    string name;

    uint PhoneNumber; address Paddress; uint  id;

    } 

    mapping(address  => player) players;

    }

function addPlayer(string _name, uint256 _phonenumber) public returns  (bool) {

    players[msg.sender].name = _name; players[msg.sender].Paddress =  msg.sender; players[msg.sender].PhoneNumber = _phonenumber; return true;

  }

function exist(address _address) public  view returns (bool) { return (players[_address].Paddress != 0x0);

    }

function getplayer(address _adress) public  view returns (player) { return players[_adress];

    }

editPlayer() and the logic  for editing individual contacts: 

    function  editPlayer(string _name, uint256 _phonenumber, address

    _address,uint256 _id) public returns (bool)  { players[msg.sender].name = _name; players[msg.sender].PhoneNumber =  _phonenumber; players[msg.sender].Paddress = _address; players[msg.sender].id =  _id;

    return true;

    }

function editPlayer(address  _address,uint256 _id) public returns (bool) { players[_address].id = _id;

  return true;

modifier onlyadmin(){ require(msg.sender ==  admin);

  _;

  } 

function removePlayer(address _address)  public onlyadmin returns (bool) { delete players[_address];

  return true;

  } 
  } 