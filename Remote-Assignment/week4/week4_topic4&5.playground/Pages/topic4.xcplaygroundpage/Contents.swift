import Foundation

func printPyramid(layers: Int) {
    
    var nowLayer = 1
    let starCount = Int()
    let spaceCount = Int()
    
    while nowLayer <= layers {
        
        if nowLayer < layers {
            for spaceCount in 1...( layers - nowLayer)  {
                print(" ", terminator: "")
            }
        }
        for starCount in 1...( nowLayer * 2 - 1 ) {
            print("*", terminator: "")
        }
        print("\n")
        nowLayer += 1
    }
}

printPyramid(layers: 5)
