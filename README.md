# CertiVerse
Blockchain based Online certificate issuance and verification


### The problem CertiVerse solves
The problem at hand revolves around the current state of certificate issuance and validation in a world where a multitude of training programs, courses, and qualifications are offered. The existing system lacks an efficient and tamper-proof mechanism for verifying digital certificates, creating challenges for Government Offices, Students, Industry professionals, and Institutes. In the absence of a robust solution, there is a significant risk of certificate fraud and misrepresentation.
Even the government issued certificates such as Birth certificate, Property details, Caste certificate are easily faked nowadays. So solving this problem was a must.
We created a Dapp which solves this problem by coverting the generated certificates using blockchain into NFTs (Non Fungible Tokens) which makes them transparent and immutable.

### How It Works
First of all, the certification issuing authority needs to be verified on the network. Only the validated authories can generate the certificates using the platform. The platform converts these digital certificates into Non-Fungible Tokens (NFTs). The NFTs, which represent the certificates, are securely stored on the InterPlanetary File System (IPFS).
Authority Verification: To maintain trust and authenticity, the company is recorded as the issuer of the NFTs.
NFT Transfer: The company transfers the NFTs to their respective users and This transfer is recorded on the underlying blockchain network Polygon
Transaction Record: Anyone can view the transaction on the blockchain explorer to verify the issuance and transfer.
User Receipt: Users receive the NFT certificates in their digital wallets, such as MetaMask.

### Technology Used
`Frontend `=> Javascript ,   React.js ,  SAAS ,  Bootstrap
` Blockchain` => Polygon,   Pinata ,  IPFS , Ethers.js

### The problems faced while deploying to Polygon:
Many issues occured while using the latest solidity version to deploy the contract on the Polygon Network. After a very long session (~5h) of trail and errors, downgrading the solidity version to ^0.8.13 (previously ^0.8.21) and changing the deployer to truffle from hardhat solved the issue.

### Creators

| Name            | Github                                         | Discord         |
| --------------- | ---------------------------------------------- | --------------- |
| Kundan Kumar | [@Kundan](https://github.com/InfiniteCoder100)   | codefunky   |
| Harsh Shende | [@harshshen](https://github.com/Harshshen)   | harsh shende  |

## Set up Project
Here's how to setup and run the project locally :

### Prerequisites

Here are some pre-requisites that you may require to run the project on your system.

- Node (https://node.org/).
- ReactJs (https://reactjs.org/).


### Install Project

Done with the pre-requisites?

Here are the steps to be taken after that :


1. Clone the repository:

```bash
git clone https://github.com/InfiniteCoder100/CertiVerse.git
```

2. Change directory :

```bash
cd CertiVerse
cd frontend
```
3. Install dependencies :

```bash
npm install
  or
yarn install
```

4. Run 

```bash
npm run dev
  or
yarn dev
````
### License 
MIT
