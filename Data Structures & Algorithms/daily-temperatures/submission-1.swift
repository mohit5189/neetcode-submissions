// // Solution 1 2 pointers
// class Solution {
//     func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
//         let n = temperatures.count
//         var res = [Int]()

//         for i in 0..<n {
//             var count = 1
//             var j = i + 1
//             while j < n {
//                 if temperatures[j] > temperatures[i] {
//                     break
//                 }
//                 j += 1
//                 count += 1
//             }
//             count = (j == n) ? 0 : count
//             res.append(count)
//         }
//         return res
//     }
// }

// Solution 2 Stack More optimised
class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        let n = temperatures.count
        var result = Array(repeating: 0, count: n)
        var stack = [Int]() // stores indices
        
        for i in 0..<n {
            
            while let last = stack.last,
                  temperatures[i] > temperatures[last] {
                
                stack.removeLast()
                result[last] = i - last
            }
            
            stack.append(i)
        }
        
        return result
    }
}