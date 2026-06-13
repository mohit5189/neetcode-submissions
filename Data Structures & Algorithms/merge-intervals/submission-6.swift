class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard !intervals.isEmpty else { return [] }

        let sortedIntervals = intervals.sorted { $0[0] < $1[0] }

        var result = [sortedIntervals[0]]

        for interval in sortedIntervals.dropFirst() {
            if interval[0] <= result[result.count - 1][1] {
                result[result.count - 1][1] = max(
                    result[result.count - 1][1],
                    interval[1]
                )
            } else {
                result.append(interval)
            }
        }

        return result
    }
}