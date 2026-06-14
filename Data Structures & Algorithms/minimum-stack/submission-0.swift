class MinStack {
    // store value alongside the running minimum
    private var stack = [(val: Int, min: Int)]()

    init() {}

    func push(_ val: Int) {
        let m = stack.isEmpty ? val : Swift.min(val, stack.last!.min)
        stack.append((val, m))
    }
    func pop()         { stack.removeLast() }
    func top() -> Int  { stack.last!.val }
    func getMin() -> Int { stack.last!.min }
}
