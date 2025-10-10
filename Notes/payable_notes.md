CCI(cross contract invocation):
A cross-contractcall refers to a scenario where one smart contract interacts with another smart contract by invoking its functions
this is a fundamental concept in blockchain programming,enabling modular,eusable and compasable systems

but remember before we can call a contract,we need to define the structure of the contract in an inteface

what do you mean by an interface?
an interface in solidity is a way to define a contracts external functions without providing there
implementtaions

properties of interfaces:

1.Function declarations only:
a.interfaces only allow function declarations without implementations.
b.functions must be external

2.No state variables or constructors:
a.interface cannot have state variables or constructors

3.No Inheritance from other contracts:
a.interfaces can only inherit from other interfaces

4.Interactions with other contracts:
a.interfaces are commonly used to interact with already deployed contracts,enabling modularity
and upgradability