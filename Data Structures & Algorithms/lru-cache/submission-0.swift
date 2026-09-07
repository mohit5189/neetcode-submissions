class Node {
    let key: Int
    let val: Int
    var next: Node?
    var prev: Node?

    init(_ key: Int, _ val: Int) {
        self.val = val
        self.key = key
    }
}

class LRUCache {
    let capacity: Int
    var map = [Int: Node]()
    var first: Node?
    var last: Node?

    init(_ capacity: Int) {
        self.capacity = capacity
        self.first = Node(0, 0)
        self.last = Node(0, 0)
        self.first?.next = self.last
        self.last?.prev = self.first
    }

    func remove(_ node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
    }

    func insert(_ node: Node) {
        let prev = last?.prev
        last?.prev?.next = node
        node.prev = prev
        node.next = last
        last?.prev = node
    }

    func get(_ key: Int) -> Int {
        if let node = map[key] {
            remove(node)
            insert(node)
            return node.val
        }
        return -1
    }

    func put(_ key: Int, _ value: Int) {
        if let node = map[key] {
            remove(node)
        }
        let newNode = Node(key, value)
        map[key] = newNode
        insert(newNode)

        if map.count > capacity {
            if let lru = first?.next {
                remove(lru)
                map.removeValue(forKey: lru.key)
            }
        }
    }
}
