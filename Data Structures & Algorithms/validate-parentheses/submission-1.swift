class Solution {
    func isValid(_ s: String) -> Bool {
        let charArray = Array(s)
        var stack = [Character]()
        var map: [Character: Character] = ["}":"{", ")":"(", "]":"["]
        for char in charArray {
            if char == "]" || char == "}" || char == ")" {
                if stack.last != map[char] {
                    return false
                } else {
                    stack.removeLast()
                }
            } else {
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}
