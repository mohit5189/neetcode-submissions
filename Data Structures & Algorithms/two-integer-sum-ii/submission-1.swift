class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var mp = [Int: Int]()

        for i in 0..<numbers.count {
            let tmp = target - numbers[i]
            if let index = mp[tmp] {
                return [index, i + 1]
            }
            mp[numbers[i]] = i + 1
        }

        return []
    }
}

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0, right = numbers.count - 1
    while left < right {
        let sum = numbers[left] + numbers[right]
        if sum == target { return [left + 1, right + 1] }
        else if sum < target { left += 1 }
        else { right -= 1 }
    }
    return []
}
