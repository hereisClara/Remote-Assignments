enum GuessNumberGameError : Error {
    case wrongNumber
}

class GuessNumberGame {
    static func guess(number: Int) throws {
        var targetNumber = 10
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
            
            }
        print("Guess the right number: \(targetNumber)")
        }
}

do { try GuessNumberGame.guess(number: 20) } 
catch GuessNumberGameError.wrongNumber {
    print("It is wrong.")
}

