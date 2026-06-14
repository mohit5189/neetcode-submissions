class Solution {
    func longestPalindrome(_ s: String) -> String {

        let chars = Array(s)

        var start = 0
        var maxLen = 1

        for i in 0..<chars.count {

            // Odd palindrome
            var left = i
            var right = i

            while left >= 0 &&
                  right < chars.count &&
                  chars[left] == chars[right] {

                if right - left + 1 > maxLen {
                    maxLen = right - left + 1
                    start = left
                }

                left -= 1
                right += 1
            }

            // Even palindrome
            left = i
            right = i + 1

            while left >= 0 &&
                  right < chars.count &&
                  chars[left] == chars[right] {

                if right - left + 1 > maxLen {
                    maxLen = right - left + 1
                    start = left
                }

                left -= 1
                right += 1
            }
        }

        return String(chars[start..<start + maxLen])
    }
}