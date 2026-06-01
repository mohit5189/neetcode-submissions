class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var allElementProducts = 1
        var zeroCount = 0
        for num in nums {
            if num == 0 {
                zeroCount += 1
            } else {
                allElementProducts *= num
            }
        }
        var result = [Int]()
        for num in nums {
            if num != 0, zeroCount > 0 {
                result.append(0)
            } else if num == 0, zeroCount == 1 {
                result.append(allElementProducts)
            } else if num == 0, zeroCount > 1 {
                result.append(0)
            } else {
                result.append(Int(allElementProducts / num))
            }
        }
        return result
    }
}
