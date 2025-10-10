The version statement at the top of any solidity code specifies the version of the solidity compiler that should be used to compile the contract

^0.8.0=>if we write it in this wayit means the version should be less tha 0.9.0 and lies between 0.8.0 to 0.9.0
also you have to give a license for the code about who can use mit license we will use that anybody can use our code currently

variables:
In solidity variables are used to store data within a contract.They can hold different types of values and are fundamental to writing smart contracts

1.Unsigned numbers(it can only be positive)
unit8-small numbers 
uint16-16 bit numbers
uint256-256 bit numbers

2.Signed numbers
int 
int 32

3.booleans
4.addresses
5.strings

Constructor:
A constructor in solidity is a special function that is executed only once during the deployment of the contract,
Its primary purpose is to initailize the contract's state variables and set up any required logic when the 
contract is deployed to etherum blockchain

Functions visibilty types:
public,private,internal,external
         same contact   derived contracts  other contracts.  external users
public.   yes.           yes               yes                yes
external. no             no                yes                yes 
internal. yes.           yes               no                 No
private   yes.           no                no                 No


View keyword in functions:
In solidity,the view keyword indicates that the function does not modify the state of the blockchain.

It is a type of function modifier that tells the ethereum virtual machine that the function is read-only and will not
alter any state variables or perform any operations that would require a transaction.

Types of functions:
1.state-changing functions:functions that modify state variables,interact with other contracts,or send/recieve ether require
a transaction and are considered as "non-view" functions

2.view functions:These are functions that are only read from the blockchain state(like reading a variable but do not mofigy it).They can be called without creating a transaction
and do not consume gas when called externally via a call

Inheritance:

Mappings:
In solidity,a mapping is a data structure that allows you to store and look up key-value pairs.its similar to hash table or dictionary in other programming
languages

there are two types of arrays in solidity
1.fixed size arrays-arrays where the size is defined when the array is created,and it cannot be changed afterwards
2.dynamic arrays-arrays where the size can change dynamically durning execution

Struct:
In solidity,a struct is a custom data type that allows you to group multiple variables(of different types )together into 
a single unit

Memory vs stack vs storage
In solidity,memory,stack and storage are three different locations where data can be stored.each has its own charcateristics,use cases 
and costs

1.Storage:
storage refers to the persistent data that is saved on the blockchain.it is used for state variables that you declare at the 
contract level Data stored in storage is written to the blockchain and remains there permanently,across function calls and transactions,until
it is explicitly modified

writing to storage is costly in terms of gas because it requires changes to the blockchain state,which involves network consensus and storage
allocation on the blockchain.

2.Memory
Memory refrers to temporary data storage that only exists during the execution of a function.it is cheaper than storage because it is not 
stored on blockchain and is only kept in the node,s memory while the function is executing.once the function finishes the execution,the data 
is discarded

3.stack
The stack in solidity is a limited,low-level data structure used to store small,temporary values that are used during the execution of 
a function.it is akin to a "call stack" in other programming languages.when you call a function,the evm pushes temporary values(uch as function
arguments and local variables)onto the stack.

MODIFIERS:
in solidity,modifiers are a powerful feature that allows you to modify the behaviour of functions in a reusable and declarative way.they are
used to add additional checks or functionality to a function or groups of functions,before or after the main logic is executed

syntax:
modifier onlyowner(){
    require(owner==msg.sender);
    _;
}
Returning tuples:
return(var1,var2,var3)=>syntax

Pure functions:
in solidity,pure functions are functions that do not read form or modify the blockchain state.They only rely on there input parameters to 
perform calculations and operations and return a result.importatnly pure functions do not interact with any state variables or external
contracts.

Events:
In ethereum,events are a mechanism that allows smart contracts to log information on the blockchain,which can then be accessed by external
consumers(eg:frontendapplications,other contracts or off chain services like oracles).Events enable smart contracts to emit logs that can be used for
debugging,indexing or triggering external actions based on contract activity.