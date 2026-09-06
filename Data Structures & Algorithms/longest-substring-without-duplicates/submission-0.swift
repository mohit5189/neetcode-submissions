class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        if chars.count == 0 {
            return 0
        }

        var set = Set<Character>()
        var l = 0, r = 0
        var maxLength = 0
        while r < chars.count {
                while set.contains(chars[r]) {
                    set.remove(chars[l])
                    l += 1
                }
                
                set.insert(chars[r])
                maxLength = max(maxLength, r - l + 1)
                r += 1

        }
        return maxLength
    }
}
