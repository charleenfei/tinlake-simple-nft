pragma solidity ^0.5.12;

import "ds-test/test.sol";

import "./simple.sol";

contract SimpleNFTTest is DSTest {
    SimpleNFT nft;
    NFTUser usr;
    function setUp() public {
        nft = new SimpleNFT();
        usr = new NFTUser(nft);
    }
    function testMintNFT() public {
        usr.mint(1);

        assertEq(nft.ownerOf(1), address(usr));
    }
}
