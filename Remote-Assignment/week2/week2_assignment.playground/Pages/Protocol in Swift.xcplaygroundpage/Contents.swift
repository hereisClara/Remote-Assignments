//1. + 2. + 4.
protocol PoliceMan {
    func arrestCriminals()
}

struct Person : PoliceMan {
    var name : String
    func arrestCriminals() { }
    let toolman : ToolMan
}

//3.
protocol ToolMan {
    func fixComputer()
}

//5.
struct Engineer : ToolMan{
    func fixComputer() { }
}

//6.
let steven = Person(name: "Steven", toolman: Engineer())
