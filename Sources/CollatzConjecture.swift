//Solution goes in Sources
import Foundation

enum StepError: Error {
    case error
}

class CollatzConjecture {
    
     static func steps(_ input: Int) throws -> Int {
        if input <= 0 {
            throw StepError.error
        } else {
            var countSteps = 0
            var num = input
            while num != 1 {
                if num % 2 == 0 {
                    num = num/2
                } else {
                    num = num*3 + 1
                }
                countSteps += 1
            }
            return countSteps
        }
    }
}
