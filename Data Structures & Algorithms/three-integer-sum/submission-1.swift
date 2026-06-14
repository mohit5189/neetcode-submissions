class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        var map = [Int: [Int]]()
        var result = [[Int]]()

        for (index, num) in nums.enumerated() {
            map[num] != nil
                ? map[num]!.append(index)
                : (map[num] = [index])
        }

        var tripletMap = Set<[Int]>()

        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {

                let target = -(nums[i] + nums[j])

                if let indexes = map[target] {

                    for k in indexes {

                        if k != i && k != j {

                            let triplet =
                                [nums[i], nums[j], nums[k]].sorted()

                            if !tripletMap.contains(triplet) {
                                result.append(triplet)
                                tripletMap.insert(triplet)
                            }
                        }
                    }
                }
            }
        }

        return result
    }
}