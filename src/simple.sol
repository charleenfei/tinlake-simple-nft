pragma solidity >=0.5.12;

import { ERC721  } from "./openzeppelin-solidity/token/ERC721/ERC721.sol";

// This contract allows anyone to mint an NFT. Used for testing Tinlake
contract SimpleNFT is ERC721 {
    constructor () ERC721() public {
    }

    function mint(address to, uint tokenId) public {
        _mint(to, tokenId);
    }
}

contract NFTUser {
    SimpleNFT nft;
    constructor (SimpleNFT nft_) public {
        nft = nft_;
    }
    function mint(uint id) public {
        nft.mint(address(this), id);
    }
}

