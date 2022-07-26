# Installation

To install this package, you must run:

```bash
npm i gm2packagecontracts
```

# How to add new contracts in the package

To add a new contract:

- Copy and paste the contract in the corresponding folder
- Compile the contract (see how to compile)
- Search in the artifacts folder, the subfolder with the name of our new contract (it will be inside a folder with the same name that we paste the contract in the first step)
- Inside it, copy the .json file that has the contract data (not the dbg.json file)
- Paste this file in the builds/contracts folder

# How to compile a contract

To compile a contract:

- Go to hardhat.config.js
- In the paths property, you have to add the sources property, indicating the path (folder) where the contract that we want to compile is stored
- Run npm compile or npx hardhat compile

Note: if we want to compile more than one contract that is in different folders, we must change the sources field in the second step .

Example: we want to compile a contract that is in the contracts folder and one that is in the interfaces folder. We compile the first contract, following the previous steps (the path that we will use in sources will be ./contracts). Next, we change the sources field to our location of the other contract (in this example, ./interfaces), and proceed to compile

# How to call a contract in a new project

- You must have this package installed in your project
- In the file where you want to call a contract, use:
  import 'gm2packagecontracts/`folderPath`/`theContractYouWantToUse.sol`;
