//1.
//closure是沒有名稱的function，可以被儲存在變數中，執行簡短的功能。
//closure的建立方法如下：
// let 變數 = { ( 參數型別, 參數型別 ) -> 回傳值型別 in 執行功能 }


//2.
let luckyNumber = { ( a: Int) -> Bool in
     a % 2 != 0  ? true : false
}

luckyNumber(3)

//3.
func printTriangle(layers: Int) {
    var i = 1
    while i <= layers {
        for j in 1...i {
            print("*", terminator: "")
        }
    i += 1
        print("\n")
    }
}

printTriangle(layers: 5)



