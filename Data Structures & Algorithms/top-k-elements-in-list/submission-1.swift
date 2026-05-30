class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        // First we can store frequence in a map, After that have a bucket array
        // like [[], [], []]
        // Now fill on frequency sequence 

        var map = [Int: Int]()
        for num in nums {
            if let savedFreq = map[num] {
                map[num] = savedFreq + 1
            } else {
                map[num] = 1
            }
        }

        // Now higher frequence will store at end
        var buckets = Array(repeating: [Int](), count: nums.count + 1)
        for (num, freq) in map {
            buckets[freq].append(num)
        }

        // Run loop in reverse order
        var result = [Int]()
       for freq in (0..<buckets.count).reversed() { 
        for num in buckets[freq] { 
            result.append(num);
             if result.count == k { return result } 
        }
       }
       return result
    }
}
