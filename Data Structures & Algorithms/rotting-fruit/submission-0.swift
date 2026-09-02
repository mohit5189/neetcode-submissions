class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var result = 0
        var fresh = 0
        if grid.count == 0 {
            return 0
        }
        // We will go BFS here
        var queue = [(Int, Int)]()
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 2 {
                    queue.append((i, j))
                } else if grid[i][j] == 1 {
                    fresh += 1
                }
            }
        }
        var gridCopy = grid
        let directions = [(-1, 0), (0, -1), (0, 1), (1, 0)]
        while !queue.isEmpty, fresh > 0 {
            var next = [(Int, Int)]()
            for (i, j) in queue {
                for (di, dj) in directions {
                    let ni = i + di
                    let nj = j + dj

                    if ni >= 0,
                     ni < gridCopy.count,
                     nj >= 0,
                     nj < gridCopy[ni].count,
                     gridCopy[ni][nj] == 1
                     {
                        gridCopy[ni][nj] = 2
                        next.append((ni, nj))
                        fresh -= 1
                    }
                }
            }
            if !next.isEmpty {
                result += 1
            }
            queue = next
        }
        return fresh == 0 ? result : -1
    }
}
