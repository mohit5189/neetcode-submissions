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
