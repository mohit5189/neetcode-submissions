class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var pairs = zip(position, speed).map { ($0, $1) }
        pairs.sort { $0.0 > $1.0 }

        var stack = [Double]()
        for (p, s) in pairs {
            let totalTime = Double((target - p)) / Double(s)
            if stack.isEmpty {
                stack.append(totalTime)
            } else {
                if stack.last! < totalTime {
                    stack.append(totalTime)
                }
            }
        }
        return stack.count
    }
}
