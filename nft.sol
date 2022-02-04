// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity ^0.8.3;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./nftbridge.sol";

contract newToken is ERC721{
  address public owner;
  uint256 tokenId = 111;

  struct Game{
    address owner;
    uint256 tokenId;
    string tokenName;
  }
   Game[] public allTokens;
   mapping(address => Game []) public tokenAddress;
   mapping(string => bool) public tokenExists;


  constructor() ERC721("myNFT","MT") {
    owner = msg.sender;
  }

  function getAllToken() public view returns(Game[] memory){
    return allTokens;

  }
    function getMyToken() public view returns(Game[] memory){
    return tokenAddress[msg.sender];

  }
    function mintToken(string calldata _tokenName) public payable{
   require(!tokenExists[_tokenName], "Token already exists");

  _safeMint(msg.sender, tokenId);

   allTokens.push(Game( msg.sender, tokenId, _tokenName));

  tokenAddress[msg.sender].push(Game(msg.sender, tokenId, _tokenName));
  tokenExists[_tokenName] = true;

  tokenId++;
  }



}
