class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for str in tokens {
            if str == "*" || str == "-" || str == "/" || str == "+" {
                    let last = stack[stack.count - 1]
                    let secondLast = stack[stack.count - 2]
                    stack.removeLast()
                    stack.removeLast()
                    if str == "*" {
                        stack.append(secondLast * last)
                    }
                    if str == "+" {
                        stack.append(secondLast + last)
                    }
                    if str == "/" {
                        stack.append(secondLast / last)
                    }
                    if str == "-" {
                        stack.append(secondLast - last)
                    }
                } 

            else {
                    stack.append(Int(str)!)
                }
        }
        return stack.isEmpty ? 0 : stack.last!
    }
}
