//1.String , Double

//2.
func multiply( a:Int, b:Int = 10 ){
    print(a*b)
}

//3.parameter name是在設定參數時，在參數清單中給參數取的名字（譬如上一題的a和b），argument label是在使用參數時，參數清單中參數的名字（也是a和b）

//4.
func greet(person name : String ) -> String {
    return "Hello \(name)!"
}

greet(person: "Luke")
