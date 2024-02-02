//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract XRC721 is ERC721URIStorage {
    address payable creator;
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    struct Organization {
        string companyName;
        string location;
        uint256 registrationNo;
        uint256 pinCode;
        bool verified;
    }

    event OrganizationRegistered(
        string companyName,
        string location,
        uint256 registrationNo,
        uint256 pinCode
    );

    mapping(address => Organization) validOrganizations;

    constructor() ERC721("Certificates", "CER") {}

    struct ListedToken {
        uint256 tokenId;
        address payable creator;
        address payable user;
        bool ableToSell;
    }
    mapping(uint256 => ListedToken) idToListedToken;

    function registerOrganization(
        string memory _companyName,
        string memory _location,
        uint256 _registrationNo,
        uint256 _pinCode
    ) public {
        require(
            !validOrganizations[msg.sender].verified,
            "organization is Already Registered"
        );
        validOrganizations[msg.sender] = Organization({
            companyName: _companyName,
            location: _location,
            registrationNo: _registrationNo,
            pinCode: _pinCode,
            verified: true
        });
        emit OrganizationRegistered(
            _companyName,
            _location,
            _registrationNo,
            _pinCode
        );
    }

    function isOrganizationVerified() public view returns (bool) {
        return validOrganizations[msg.sender].verified;
    }

    //for organisation side
    //get information about certificate by entering tokenId
    function getListedForTokenId(
        uint256 tokenId
    ) public view returns (ListedToken memory) {
        return idToListedToken[tokenId];
    }

}