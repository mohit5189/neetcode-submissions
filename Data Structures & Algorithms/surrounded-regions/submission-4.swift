class Solution {
    func solve(_ board: inout [[Character]]) {
        // Just mark all unsurrounded as # and replace remaining to X and revert back # to 0
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if i == board.count - 1 || j == board[i].count - 1 || i == 0 || j == 0 {
                    if board[i][j] == "O" {
                        // Start DFS here and mark all touching O as #
                        dfs(&board, i, j)
                    }
                }
            }
        }

        var visited = Set<String>()
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                                    let key = "\(i),\(j)"
                    if board[i][j] == "O", !visited.contains(key) {
                        board[i][j] = "X"
                    } else if board[i][j] == "#" {
                        board[i][j] = "O"
                        visited.insert(key)
                    }
            }
        }
    }

    func dfs(_ board: inout [[Character]], _ i: Int, _ j: Int) {
        if i >= board.count || i < 0 {
            return
        }
        if j >= board[i].count || j < 0 {
            return
        }
        if board[i][j] != "O" {
            return
        }
        board[i][j] = "#"
        dfs(&board, i, j + 1)
        dfs(&board, i + 1, j)
        dfs(&board, i - 1, j)
        dfs(&board, i, j - 1)
    }
}
