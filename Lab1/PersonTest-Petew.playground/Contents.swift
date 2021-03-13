class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}

class Member: Person{
    var sNumber: Int
    
    init(name: String, age: Int, sNumber: Int){
        self.sNumber = sNumber
        super.init(name: name, age: age)
    }
}

class Staff: Member{}
class Student: Member{}

let me = Member(name: "Pete", age: 34, sNumber: 1234567)
me.name
me.name

print(me.name)

