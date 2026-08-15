class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var map = [Character:Int]()
        for char in s {
            if let savedValue = map[char] {
                map[char] = savedValue + 1
            } else {
                map[char] = 1
            }
        }

        for char in t {
            if map[char] == nil {
                return false
            } else {
                var savedValue = map[char]
                if savedValue == 1 {
                    map[char] = nil
                } else {
                    map[char] = savedValue! - 1
                }
            }
        }
        if map.count != 0 {
            return false
        }
        return true
    }
}
