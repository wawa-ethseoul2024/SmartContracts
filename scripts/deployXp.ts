import { ethers } from "hardhat";

async function main() {

  const myAddress = ethers.getAddress("0x1234567890123456789012345678901234567890");

  const xp = await ethers.deployContract("Points", [myAddress]);

  await xp.waitForDeployment();

  console.log(
    `Xp deployed to ${xp.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
