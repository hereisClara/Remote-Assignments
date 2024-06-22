//1.
var myFriends : [String] = []

//2.
myFriends += ["Ian", "Bomi", "Kevin"]

//3.
myFriends.append("Michael")

//4.
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//5.
for name in myFriends{
    print(name)
}

//6.
//沒有人在index5。Array數列是從0開始計算，也就是第一個element是index 0，以此類推。這個Array只有四個元素，index5指的是第六個元素，因此myFriends不會有index 5的元素。

//7.
myFriends.first

//8.
myFriends.last

//9.
//
var myCountryNumber: [String: Int] = [:]

//10.
myCountryNumber.updateValue(1, forKey: "US")
myCountryNumber.updateValue(44, forKey: "GB")
myCountryNumber.updateValue(81, forKey: "JP")

//11.
myCountryNumber["GB"] = 0

//12.如第九題，如果dictionary一開始是空的，那必須要加註鍵值各自的型別（ [String: Int] ）才可以成功建立。

//13.只要刪除value或把value設為nil，key就會自己消失，因為dictionary中的key一定要有value，只要沒有value，key就不會存在。
