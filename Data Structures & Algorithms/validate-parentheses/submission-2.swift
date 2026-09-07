class Solution {
    func isValid(_ s: String) -> Bool {
        let chars = Array(s)
        var stack = [Character]()
        let map: [Character: Character] = ["}":"{", "]": "[", ")": "("]
        for char in chars {
            if char == "{" || char == "(" || char == "[" {
                stack.append(char)
            } else {
                    if let lastElem = stack.last {
                        if lastElem == map[char]! {
                            stack.removeLast()
                        } else {
                            return false
                        }
                    } else {
                        return false
                    }
            }
        }
        return stack.isEmpty
    }
}
