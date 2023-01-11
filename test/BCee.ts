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

        const salt = "0x" + randomBytes(32).toString("hex");
        BCee = await BCeeFactory.deploy(salt, BCeeRenderer.address);
    });

    describe("Deployment Test", () => {
        it("Initialize", async function () {
            const initialSupply = 20;
            const totalSupply = await BCee.totalSupply();

            expect(totalSupply).to.equal(initialSupply);
        });
    });

    describe("Claim Test", () => {
        // 0.01 eth
        const tooLessEth = "10000000000000000";

        // 0.1 eth
        const correctEth = "100000000000000000"

        // 1 eth
        const tooMuchEth = "1000000000000000000";

        it("msg.value < 0.1 eth", async () => {
            await expect(BCee.connect(accounts[1]).claim({value: tooLessEth}))
            .to.be.revertedWith(
                "Ether required for the claim is only 0.1 ether."
            );
        });

        it("msg.value == 0.1 eth", async () => {
            await expect(BCee.connect(accounts[1]).claim({value: correctEth}))
            .to.not.be.revertedWith(
                "Ether required for the claim is only 0.1 ether."
            );
            
            expect(await BCee.totalSupply()).to.equal(21);
        });

        it("msg.value > 0.1 eth", async () => {
            await expect(BCee.connect(accounts[1]).claim({value: tooMuchEth}))
            .to.be.revertedWith(
                "Ether required for the claim is only 0.1 ether."
            );
        });

        it("totalSupply == 1000", async () => {
            for(let i = 20; i < 1000; i++) {
                await BCee.connect(accounts[1]).claim({value: correctEth});
            }

            expect(await BCee.totalSupply()).to.equal(1000);

            await expect(BCee.tokenURI(999))
            .to.not.be.revertedWith(
                "ERC721: invalid token ID"
            );

            await expect(BCee.connect(accounts[1]).claim({value: correctEth}))
            .to.be.revertedWith(
                "The BCee drop is over."
            );
        })
    });
});