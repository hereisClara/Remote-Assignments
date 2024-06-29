//1.
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat(){
        print("I eat everything!")
    }
}


//2.
class Elephant : Animal {
    override func eat() {
        print("I eat vegetable!")
    }
    
}

class Tiger : Animal {
    override func eat() {
        print("I eat other animals!")
    }
    
}

class Horse : Animal {
    override func eat() {
        print("I eat grass!")
    }
    
}

//3.

let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .male)

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
    
}

let zoo = Zoo(weeklyHot: tiger)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//4.
//instance是「實例」，如tiger之於Tiger一樣，是屬於某個類別中的實際案例。initializer可以對類型的儲存屬性初始化，為屬性賦值，讓屬性資料更明確，並讓實例可以順利建立。

//5.
//struct是value type，傳遞的是物件實際的值，同時它也是copy data，將同一份文件複製成多份分發多人進行協同工作的概念；class是reference type，傳遞的是物件的位置（類似雲端硬碟共享資料夾連結的概念），同時是share data，有點類似雲端文件共編，多個端點透過連結存取同一物件進行操作，但也因此有時會出現競爭，資料來源也會比較複雜不明確（可編輯者太多）。

//6.
//承上，reference type，傳遞物件的位置（類似雲端共享資料夾連結），多個端點透過連結存取同一物件進行操作；value type，傳遞物件實際的值，將同一份文件複製成多份分發多人進行協同工作的概念。

//7.
//instance method只能在實例存在時使用，type method則是在類型中使用，適用於類型中的實例，也能繼承給子類。

//8.
//self在type method中指的是類型中的實例本身，譬如我有一個類別叫學生，如果我說學生.self指的應該是某個學生（實例）本人，而不是該類；用在instance method上就是字面意義的指向自己，self與實例本身完全等效。
