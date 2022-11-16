Third attempt at completing the learnweb3 "Whitelist Dapp" sophomore project. This time using foundry and deploying to the Goerli network.

1. `forge init --no-commit --no-git --vscode`
1. create `Whitelist.sol`
1. write `Whitelist.s.sol` script  
    a. add private key, quicknode url, and etherscan api key to `.env`
    b. load private key in script and pass it to broadcast
    c. create a new instance of whitelist contract
    d. stop broadcast
    e. I had to comment out tests in `Counter.t.sol` and need to write tests for whitelist contract
1. `source .env`
1. `forge script script/Whitelist.s.sol --rpc-url $GOERLI_RPC_URL --broadcast --verify -vvv`
1. review artificats in "broadcast" dir and removed local path info to err on side of caution. searching for keys yielded no result. I don't think there's any personal information that is concerning since I'm using a sterile wallet and deploying to test networks
1. verified contract on etherscan
