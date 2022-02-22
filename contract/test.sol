// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract PaletteOkabeNftCard is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("OkabeNFTCard", "ONT") {}

    function namecardGet()
        public
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        //タッチして読み込んだ方にmintする
        _mint(msg.sender, newItemId);
        
        //msg.senderの残高が0の場合のみmintする
        

        
        _setTokenURI(newItemId, "https://arweave.net/hd6RQ8HHeljC18X3pKlZQl3KRpwYx-tJJvEpndCqXRA");

        return newItemId;
    }
}
