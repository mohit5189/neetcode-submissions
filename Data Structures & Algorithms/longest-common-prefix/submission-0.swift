class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = Array(strs[0])
        for i in 1..<strs.count {
            let s = Array(strs[i])
            var j = 0
            while j < min(prefix.count, s.count) {
                if prefix[j] != s[j] {
                    break
                }
                j += 1
            }
            prefix = Array(prefix[0..<j])
        }
        return String(prefix)
    }
}