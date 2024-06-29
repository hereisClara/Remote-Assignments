//1.
enum Gasoline : String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "90"
    
    var price : String {
        return self.rawValue
    }
    func getPrice() -> String {
        return self.rawValue
    }
}

Gasoline.diesel.getPrice()

    //associated value是關聯值，可以在enum中的case後面備註，譬如 oil92(oilPrice : Double)，之後在宣告變數時就可以設定值，也可以透過switch語句存取值。


//2.
class Pet {
    var name : String
    init(name: String) {
        self.name = name
    }
}

class People {
    let pet : Pet?
    init(pet: Pet?) {
        self.pet = pet
    }
}


let claraPet = Pet(name: "hehe")
let clara = People(pet: claraPet)

func isThereAPet(for people : People) {
    guard let pet = people.pet else { return }
    print(pet.name)
}

isThereAPet(for: clara)

let johnPet = Pet(name: "CCCCCC")
let john = People(pet: johnPet)
if let pet = john.pet {
    print(pet.name)
}
