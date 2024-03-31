import { ethers } from "hardhat";

async function main() {

  const myAddress = ethers.getAddress("0x6f9e2777D267FAe69b0C5A24a402D14DA1fBcaA1");

  const nft = await ethers.deployContract("WawaProfile", [myAddress]);

  await nft.waitForDeployment();

  console.log(
    `Nft deployed to ${nft.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});