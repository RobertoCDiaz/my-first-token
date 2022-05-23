# My First Token

A cryptocurrency created using the ERC-20 standard on the Ethereum's blockchain.

The token is created using the Solidity Contract file described below, and can be interacted with using the frontend interface included in this project.

## About the project

For this dApp to work, you will need a MetaMask extension installed on your browser, then connect it to one of your MetaMaks wallets.

Then, change the network that MetaMask will use to the *Rinkeby Testnet*.

## Installation

1. Clone this repository and cd into it.

```bash
git clone https://github.com/RobertoCDiaz/my-first-token
cd my-first-token
```

2. Install npm dependencies.

```bash
npm i
```

## Run application

1. Compile and deploy the [Token SmartContract](FirstToken.sol) using the [Remix IDE](remix.ethereum.org/#).

    - Copy the code inside the [FirstToken.sol](FirstToken.sol) file in the Remix IDE.
    - Click on the 'Compile' tab.
    - Compile the contract.
    - Switch to the 'Deploy' tab of the IDE.
    - Deploy the MoodContract using the 'Injected Web3' environment.
        - `Note: This environment (along with the account address) will be provided by MetaMask once it connects to the Remix IDE site.`

2. Run server

```bash
npm start
```