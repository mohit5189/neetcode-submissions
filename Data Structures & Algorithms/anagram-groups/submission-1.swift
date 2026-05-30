// Solution 1
// Generate array like [0,0,0 ---- 26 times]
// Update count for each index say you get a sp [1, 0, ----0]
// again get 1 [2, 0, ...]
// now store this as key in map[array] = [string], now keep apending
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map = [[Int]: [String]]()

        for str in strs {
            var count = Array(repeating: 0, count: 26)

            for char in str {
                let index = Int(char.asciiValue! - Character("a").asciiValue!)
                count[index] += 1
            }

            map[count, default: []].append(str)
        }

        return Array(map.values)
    }
}
// Solution 2

// class Solution {
//     func groupAnagrams(_ strs: [String]) -> [[String]] {
//         var map = [String: [String]]()

//         for str in strs {
//             let key = String(str.sorted())
//             map[key, default: []].append(str)
//         }

//         return Array(map.values)
//     }
// }