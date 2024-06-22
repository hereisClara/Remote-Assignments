//1.
let lottoNumbers = [10 ,9 ,8 ,7 ,6 ,5 ]
for i in 0..<lottoNumbers.count where i >= 3 {  print(lottoNumbers[i])
}
print("---")
//2.
for i in 0..<lottoNumbers.count{
    print( lottoNumbers[5-i])
}
for i in lottoNumbers where i % 2 == 0{
    print(i)
}

print("---")
//3.
var i :Int = 0
while i <= 5 {
    print(lottoNumbers[5-i])
    i += 1
}

i = 0
while i <= 5 {
    if i % 2 == 0 {
        print(lottoNumbers[i])
    }
    i += 1
    continue
}
print("---")
//4.

i = 0
repeat {
    print(lottoNumbers[5-i])
    i += 1
} while i <= 5

i = 0
repeat {
    if i % 2 == 1{
        i += 1
        continue
    }
    print(lottoNumbers[i])
    i += 1
} while i <= 5

print("---")

//5. while loop先檢查條件才進行迴圈，repeat-while loop先進行迴圈才檢查條件。

//6.
var isRaining: Bool = false
isRaining ?
print("It’s raining, I don’t want to work today.") : print("Although it’s sunny, I still don’t want to work today.")

print("---")

//7.
var jobLevel = 6
var jobs : [Int:String] =
[ 1 : "Member",
  2 : "TeamLeader",
  3 : "Manager",
  4 : "Director"]

if jobs.keys.contains(jobLevel){
    switch jobLevel{
    case 1 : print(jobs[1]!)
    case 2 : print(jobs[2]!)
    case 3 : print(jobs[3]!)
    default:print(jobs[4]!)
    }
} else {
    print("We don't have this job.")
}
