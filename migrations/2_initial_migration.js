var ContractOne = artifacts.require("ContractOne"); var  ContractTwo = artifacts.require("ContractTwo"); 

const Hello = artifacts.require("HelloWorld"); module.exports =  function(deployer) {

    deployer.deploy(Hello);

    }; 