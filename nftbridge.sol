// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity ^0.8.3;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";


contract nftBridge is ERC721 {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721("myNFT","MT") {}

    struct tokenDeposited{
      address owner;
      address token;
      uint256 tokenId;
     }
   mapping (uint256 => tokenDeposited) nftIdToTokenDeposited;

    function bridgeContract() external view returns (address) {
        return address(this);
    }
   function depositNFT(address _tokenAddress, uint256 _tokenId) public {
       //record details of token
      _tokenIds.increment();
      tokenDeposited memory _tokenDepositDetails = tokenDeposited(msg.sender, _tokenAddress, _tokenId);
     nftIdToTokenDeposited[_tokenIds.current()] = _tokenDepositDetails;
       ERC721(_tokenAddress).transferFrom(msg.sender, address(this), _tokenId);
       _mint(msg.sender, _tokenIds.current()); //mint to msg.sender

   }

    function withdrawNFT (uint256 _tokenId) public {
        tokenDeposited memory _tokenDepositDetails = nftIdToTokenDeposited[_tokenId]; 
       //typing for erc721 token
       ERC721(_tokenDepositDetails.token).transferFrom(address(this), msg.sender, _tokenDepositDetails.tokenId);
       _burn(_tokenId);
        }


}