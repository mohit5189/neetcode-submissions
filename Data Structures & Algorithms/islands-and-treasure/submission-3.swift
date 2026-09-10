
// // Mine Solution
// class Solution {
// var result = 2147483647

// func islandsAndTreasure(_ grid: inout [[Int]]) {
//     for i in 0..<grid.count {
//         for j in 0..<grid[i].count {

//             if grid[i][j] == 2147483647 {
//                 result = 2147483647
//                 var visited = Set<String>()

//                 dfs(&grid, i, j, 0, &visited)

//                 grid[i][j] = result
//             }
//         }
//     }
// }

// func dfs(
//     _ grid: inout [[Int]],
//     _ i: Int,
//     _ j: Int,
//     _ dist: Int,
//     _ visited: inout Set<String>
// ) {
//     // Out of bounds
//     if i < 0 || i >= grid.count ||
//        j < 0 || j >= grid[i].count {
//         return
//     }

//     // Wall
//     if grid[i][j] == -1 {
//         return
//     }

//     // We already found a shorter path
//     if dist >= result {
//         return
//     }

//     let key = "\(i),\(j)"

//     // Already visited in current path
//     if visited.contains(key) {
//         return
//     }

//     // Found treasure
//     if grid[i][j] == 0 {
//         result = min(result, dist)
//         return
//     }

//     visited.insert(key)

//     dfs(&grid, i - 1, j, dist + 1, &visited)
//     dfs(&grid, i + 1, j, dist + 1, &visited)
//     dfs(&grid, i, j - 1, dist + 1, &visited)
//     dfs(&grid, i, j + 1, dist + 1, &visited)

//     // Backtracking
//     visited.remove(key)
// }
// }



// ChatGPT

class Solution {
func islandsAndTreasure(_ grid: inout [[Int]]) {
let rows = grid.count
let cols = grid[0].count
    var queue = [(Int, Int)]()

    // Step 1: Put all treasures (0) into queue
    for i in 0..<rows {
        for j in 0..<cols {
            if grid[i][j] == 0 {
                queue.append((i, j))
            }
        }
    }

    let directions = [
        (-1, 0),
        (1, 0),
        (0, -1),
        (0, 1)
    ]

    var index = 0

    // Step 2: BFS
    while index < queue.count {
        let (i, j) = queue[index]
        index += 1

        for (di, dj) in directions {
            let newI = i + di
            let newJ = j + dj

            // Check boundaries
            if newI < 0 || newI >= rows ||
               newJ < 0 || newJ >= cols {
                continue
            }

            // Only visit INF cells
            if grid[newI][newJ] != 2147483647 {
                continue
            }

            // Distance from nearest treasure
            grid[newI][newJ] = grid[i][j] + 1

            queue.append((newI, newJ))
        }
    }
}
}
