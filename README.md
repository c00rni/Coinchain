# ContratChain

## Description
This is a job as part of [Alyra’s blockchain developer training](https://www.alyra.fr/)

The project is a decentralized application based on Ethereum . The Dapp can be used by an organization and independant workers to easily create a working contract and organise the payment process with people from different low juridictions.



## installation and setup
Local: 

```sh
# Install depedencies 
$ cd backend
$ npm install
$ cd ../frontend
$ npm install
```

In two different shell prompt, frist launch ganache and migrates the smartcontracts:

```sh
# Migrate smartscontract
$ cd backend
$ truffle migrate
$ cd ..
```

Then launch nodejs web server

```sh
# Launch web server
$ cd frontend
$ npm start
```