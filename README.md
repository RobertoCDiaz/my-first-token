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

## Configuration
1. Create an Alchemy node in the Rinkeby network
    * Sign up to the [Alchemy](https://www.alchemyapi.io) service and create a new app using the Rinkeby network

2. Configure environment variables
    * Create a '.env' as a copy of the [.envtemplate](.envtemplate) file and replace the values of the indicated variables.
    * **PRIVATE_KEY** is the private key for your account on the Rinkeby Network. You can use Metamask for this.
    * **ALCHEMY_URL** is the URL with the API Key that Alchemy provides on the dashboard for your new app (the one created on the previous step).
```
PRIVATE_KEY=<Here goes the private key for your Rinkeby Account>
ALCHEMY_URL=<Replace this with your Alchemy node URL>
```

## Deployment
1. Use HardHat to execute the deployment script. 

```bash
npx hardhat run scripts/deploy.js --network rinkeby
```

Inside the [HardHat config](hardhat.config.js) file, a network called 'rinkeby' was created using the information provided through the environment variables.

2. Add the deployed contract address to the web application:

When runned, the deployment script will show the deployed contract address. Copy it and paste it inside the [index.html](index.html) file where indicated:
```javascript
// index.html file, line 28
const Address = "put your contract adress here, e.g.: 0x1234...";
```


## Run application
1. Run frontend server

```bash
npm start
```