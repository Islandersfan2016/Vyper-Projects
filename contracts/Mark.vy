# @version ^0.2.0

struct Person:
    name: String[100]
    age: uint256
    
nums: public(unit256[10])
myMap: public(HashMap[address, uint256])
person: public(person)

@external
def _init_():
    self.nums[5] = 123
    self.myMap[msg.sender] = 456
    self.person.name = "Mark"
    
    # does not modify nums[0]
    arr: uint256[10] = self.nums
    arr[0] = 999
    
    # mappings cannot be local variable
    p: Person = self.Person
    p.name = "Larry"
