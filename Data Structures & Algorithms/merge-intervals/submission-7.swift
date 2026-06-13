class Solution {
func merge(_ intervals: [[Int]]) -> [[Int]] {
    let sorted = intervals.sorted { $0[0] < $1[0] }
    var res = [[Int]]()
    for itv in sorted {
        if let last = res.last, itv[0] <= last[1] {
            // overlap -> extend the end of the last interval
            res[res.count - 1][1] = max(last[1], itv[1])
        } else {
            res.append(itv)
        }
    }
    return res
}
}