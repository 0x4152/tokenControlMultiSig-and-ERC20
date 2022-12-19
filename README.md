# tokenControl and Yeah token

##### Yeah Token is an ERC20 token that has its minting function controled by a tokenControl contract. 





#### The token control contract is a multiSig wallet that is able to execute regular transactions with the encoded calldata. The contract keeps track of how many confirmations the transaction has, and once it has two the transaction can be executed.


