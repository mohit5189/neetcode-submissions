class Solution {
    var result = 0
    var temp = 0
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        if grid.count == 0 {
            return 0
        }
        var gridCopy = grid
        var result = 0
        // Find Island
        for i in 0..<gridCopy.count {
            for j in 0..<gridCopy[i].count {
                if gridCopy[i][j] == 1 {
                    temp = 0
                    print("result = \(result)")
                    markAllIslandZero(&gridCopy, i, j)
                    result = max(result, temp)
                }
            }
        }
        return result
    }

    func markAllIslandZero(_ grid: inout [[Int]], _ i: Int, _ j: Int) {
        if i < 0 || i >= grid.count {
            return
        }

        if j < 0 || j >= grid[i].count {
            return
        }

        if grid[i][j] == 0 {
            return
        }

        grid[i][j] = 0
        temp += 1
        markAllIslandZero(&grid, i+1, j)
        markAllIslandZero(&grid, i-1, j)
        markAllIslandZero(&grid, i, j+1)
        markAllIslandZero(&grid, i, j-1)
    }

}
