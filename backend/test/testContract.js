const Voting = artifacts.require("./Voting.sol");
const { BN, expectRevert, expectEvent } = require('@openzeppelin/test-helpers');
const { expect } = require('chai');

contract("Voting", accounts => {
    const client = accounts[0];
    const worker1 = accounts[1];
    const worker2 = accounts[2];

    describe("Creation of a contract", function () {

        beforeEach(async function () {
            ContractInstance = await Contract.new({ from: client });
        });

        it('Reward ask contract cant be at 0', async function () {
        })
        it('Client address shouldnt be 0x0', async function () {
        })
        it('Worker address shouldnt be 0x0', async function () {
        })
        it('Assagnee and client shoudnt be equal', async function () {
        })
        it('Contract define with many statements', async function () {
        })
        it('Delay index shouldnt be out of range', async function () {
        })
        it('Contract balance cant be at 0', async function () {
        })
        it('Statement shouldnt have proof at initialisation', async function () {
        })
        it('Statement shoulnd be contested at initialisation', async function () {
        })
        it('Contract id should be map to client address', async function () {
        })
    })

    describe("Modification of an exiting contract", function () {

        it('Statement should be modified', async function () {
        })
        it('Worker profil should be modified', async function () {
        })
        it('Contract shouldnt be modified once signed', async function () {
        })
        it('Only the Worker of a contract should modify statement proof', async function () {
        })
        it('Poof of contract shoudnt be modified without being sign', async function () {
        })
        it('Only the Worker of a contract should modify statement proof', async function () {
        })
        it('Only the Worker of a contract should modify statement proof', async function () {
        })
    })

    describe("Context of conflict", function () {

    })

    describe("The mission is finished", function () {
        it('Worker shoudlnt withdraw contract they arent assign for', async function () {
        })
        it('Worker shouldnt be able to withdraw before the deadline', async function () {
        })
        it('Worker shouldnt be able to withdraw during a time extension', async function () {
        })
    })
});