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
