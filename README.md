# tokenControl and Yeah token

##### Yeah Token is an ERC20 token that has its minting function controled by a tokenControl contract. The YEAH tokens can only be minted through this process.





- The token control contract is a multiSig wallet that is able to execute regular transactions with the encoded calldata. To do so, the contract keeps track of transactions, which are structures that hold the information to perform calls from the MultiSig wallet.
-  The transactions can describe anything from a simple ether transfer from the MultiSig to another address, to a complex function call. It will hold the calldata on the transaction structure and depending on how many confirmations each transaction has the transaction will be executable or not.
- The multiSig also has a function called erc20Mint that creates a transaction structure to call a mint function on the YEAH token ERC20 contract. It can also be done manually, inputing the Calldata in a submitTransaction function call, but the erc20mint function is easier to use.

- The owners of the multiSig can pass the Yeahtoken contract address, the address who is going to recieve the minted tokens and the amount and the transaction structure will be created, and a transaction structure to perform a mint function call to the ERC20 contract will be created. 
- Once the transaction has two confirmations and is executed, the MultiSig will perform a call to the ERC20 token requesting to mint tokens to the desired address.




