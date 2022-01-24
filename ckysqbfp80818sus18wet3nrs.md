## How to Connect to a TestNet

Metamask is a non-custodial wallet that stores details of transactions on an account in the Ethereum Network. 
There are various networks in the Ethereum blockchain that your contracts can be deployed to. We would connect about five (5) test networks to our metamask wallet.
We would be looking at 
- Rinkeby
- Kovan
- Ropsten
- Mumbai (Polygon testnet)
- Binance Smart Chain(BSC testnet)

Basically, what these testnets look to achieve is save you the cost of deploying your contract at the development stage to the blockchain.
At this point, it is believed that you already have your Metamask installed as an extension on your browser, else you can download it [here](https://metamask.io/).

If you're able to successfully install your wallet, by default the Rinkeby, Kovan and Ropsten network are usually preadded to your list of networks. If you do not find it, go to settings->advanced->show networks. Switch it on if it is off. See image below
![Screenshot 2022-01-24 at 1.53.03 PM.png](https://cdn.hashnode.com/res/hashnode/image/upload/v1643028927094/EmG7cKs1Q.png)
Once it preloads the above-stated default networks, you can request some faucet funds [here](https://faucets.chain.link/) to get some test ether into all your listed testnet.
Now let us add the polygon testnet with the following steps;

Step 1:Go to your Metamask, click on the dropdown where we have the list of networks

step 2: Click add network or go to settings->networks-add network

![Screenshot 2022-01-24 at 2.11.14 PM.png](https://cdn.hashnode.com/res/hashnode/image/upload/v1643029903256/lKBPesRC_5.png)

Fill in the field with the following details and save

- Network Name: Mumbai Testnet
- New RPC URL: https://rpc-mumbai.maticvigil.com
- Chain ID: 80001
- Currency Symbol: MATIC
- Block Explorer URL: https://polygonscan.com/

**viola**! You will see Mumbai Testnet listed in your list of networks. Now you can add faucet funds [here](https://faucet.polygon.technology/) to receive some test ether.

Now let's add the final network to our list... BSC testnet

You go through the same process of adding a network just like we did while adding the polygon testnet.

- settings -> networks -> add network

Network Name: BSC Testnet
- New RPC URL:https://data-seed-prebsc-1-s1.binance.org:8545/
 https://data-seed-prebsc-2-s1.binance.org:8545/
 https://data-seed-prebsc-1-s2.binance.org:8545/
 https://data-seed-prebsc-2-s2.binance.org:8545/
 https://data-seed-prebsc-1-s3.binance.org:8545/
 https://data-seed-prebsc-2-s3.binance.org:8545/ (use any one of the urls )
- ChainID: 0x61, 97 in decimal (if 97 doesn’t work, try 0x61)
- Symbol: BNB
- Block Explorer: https://testnet.bscscan.com

Now go deploy your smart contract or use your testnets!

Kindly let me know what you think in the comment sections or just give a clap to this article

