// class Solution {
//     func groupAnagrams(_ strs: [String]) -> [[String]] {

//     }
// }


class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map = [String: [String]]()

        for str in strs {
            let key = String(str.sorted())
            map[key, default: []].append(str)
        }

        return Array(map.values)
    }
}