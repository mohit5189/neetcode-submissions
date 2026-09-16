class TrieNode {
    var children: [Character: TrieNode] = [:]
    var isLeaf = false
}

class PrefixTree {
    let root = TrieNode()

    func insert(_ word: String) {
        var current = root

        for char in word {
            if current.children[char] == nil {
                current.children[char] = TrieNode()
            }
            current = current.children[char]!
        }
        current.isLeaf = true
    }

    func search(_ word: String) -> Bool {
        var current = root

        for char in word {
            if current.children[char] == nil {
                return false
            }
            current = current.children[char]!
        }
        return current.isLeaf
    }

    func startsWith(_ prefix: String) -> Bool {
        var current = root

        for char in prefix {
            if current.children[char] == nil {
                return false
            }
            current = current.children[char]!
        }
        return true
    }
}
