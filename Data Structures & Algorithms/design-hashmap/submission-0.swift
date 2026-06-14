class ListNode {
    var key: Int
    var val: Int
    var next: ListNode?

    init(_ key: Int = -1, _ val: Int = -1, _ next: ListNode? = nil) {
        self.key = key
        self.val = val
        self.next = next
    }
}

class MyHashMap {
    private var map: [ListNode]

    init() {
        map = (0..<1000).map { _ in ListNode() }
    }

    private func hash(_ key: Int) -> Int {
        return key % map.count
    }

    func put(_ key: Int, _ value: Int) {
        var cur = map[hash(key)]
        while cur.next != nil {
            if cur.next!.key == key {
                cur.next!.val = value
                return
            }
            cur = cur.next!
        }
        cur.next = ListNode(key, value)
    }

    func get(_ key: Int) -> Int {
        var cur = map[hash(key)].next
        while cur != nil {
            if cur!.key == key {
                return cur!.val
            }
            cur = cur!.next
        }
        return -1
    }

    func remove(_ key: Int) {
        var cur = map[hash(key)]
        while cur.next != nil {
            if cur.next!.key == key {
                cur.next = cur.next!.next
                return
            }
            cur = cur.next!
        }
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
