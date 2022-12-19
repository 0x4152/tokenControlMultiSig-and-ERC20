# tokenControl and Yeah token

##### Yeah Token is an ERC20 token that has its minting function controled by a tokenControl contract. 





#### The token control contract is a multiSig wallet that is able to execute regular transactions with the encoded calldata. The contract keeps track of how many confirmations each transaction has, and once a transaction has two confirmations it can be executed. 
#### In this case it has a specific function called erc20Mint that creates a transaction structure to call a mint function on the YEAH token ERC20 contract. 
#### The owners of the multiSig can pass the Yeahtoken contract address, the address who is going to recieve the minted tokens and the amount and the transaction structure will be created.
Once the transaction has two confirmations and is executed, the MultiSig will perform a call to the ERC20 token requesting to mint tokens to the desired address.
####YEAH tokens can only be minted through the multiSig function call.



