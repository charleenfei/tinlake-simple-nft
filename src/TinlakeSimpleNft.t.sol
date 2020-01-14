pragma solidity ^0.5.12;

import "ds-test/test.sol";

import "./TinlakeSimpleNft.sol";

contract TinlakeSimpleNftTest is DSTest {
    TinlakeSimpleNft nft;

    function setUp() public {
        nft = new TinlakeSimpleNft();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
