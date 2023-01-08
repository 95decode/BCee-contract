import { expect } from "chai";
import { ethers } from "hardhat";
import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { 
    BCee, 
    BCee__factory, 
    BCeeRenderer, 
    BCeeRenderer__factory
} from "../typechain-types";

import randomBytes from "randombytes";

let accounts: SignerWithAddress[];
let BCeeFactory: BCee__factory;
let BCeeRendererFactory: BCeeRenderer__factory;
let BCee: BCee;
let BCeeRenderer: BCeeRenderer;

describe("BCee", () => {
    beforeEach(async () => {
        accounts = await ethers.getSigners();
        BCeeFactory = await ethers.getContractFactory("BCee");
        BCeeRendererFactory = await ethers.getContractFactory("BCeeRenderer");

        BCeeRenderer = await BCeeRendererFactory.deploy();
        await BCeeRenderer.deployed();

        // for test 
        const salt = "0x" + randomBytes(32).toString("hex");
        console.log(salt);
        BCee = await BCeeFactory.deploy(salt, BCeeRenderer.address);

        
    });

    it("test", async function () {
        console.log(await BCee.tokenURI(2));
        expect(1).to.equal(1);
    });
});