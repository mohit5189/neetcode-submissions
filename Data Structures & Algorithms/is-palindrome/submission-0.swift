class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var charArray = Array(s)
        var end = charArray.count - 1
        var start = 0

        var isPalindrom = true
        while start <= end {
            if !charArray[start].isLetter && !charArray[start].isNumber {
        start += 1
    } else if !charArray[end].isLetter && !charArray[end].isNumber {
        end -= 1
    } else if charArray[start].lowercased() != charArray[end].lowercased() {
                isPalindrom = false
                break
            } else {
                start += 1
                end -= 1
            }
            
        }
        return isPalindrom
    }
}
