const { ethers } = require("hardhat");

async function main() {
    const contract = await ethers.getContractFactory("FirstToken");
    const deployedContract = await contract.deploy("MyFirstHardhatToken", "MFHT", 256);

    console.log("Deployed Contract Address: ", deployedContract.address);
    console.log("Copy this previous address and add them to your index.html file where indicated")
}

main().then(() => process.exit(0)).catch(err => {
    console.error(err);
    process.exit(1);
})