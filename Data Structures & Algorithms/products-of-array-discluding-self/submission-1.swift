class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = 1
        var zeroCount = 0
        for num in nums {
            if num == 0 {
                zeroCount += 1
            } else {
                result = result * num
            }
        }

        var finalResult = [Int]()
        for num in nums {
            if zeroCount <= 1 {
                if num == 0 {
                    finalResult.append(result)
                } else {
                    if zeroCount > 0 {
                        finalResult.append(0)
                    } else {
                        finalResult.append(result / num)
                    }
                }
            } else {
                finalResult.append(0)
            }
        }

        return finalResult
    }
}
