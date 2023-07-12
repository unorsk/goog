/**
 * @param {character[][]} board
 * @return {boolean}
 */
var isValidSudoku = function (board) {
  const cols = new Map()
  const rows = new Map()
  const squares = new Map()

  for (let i = 0; i < 9; i++) {
    for (let j = 0; j < 9; j++) {
      const element = board[i][j]
      if (element === ".") continue
      const squareN = `${Math.floor(i / 3)}x${Math.floor(j / 3)}`
      // console.log(squareN)
      if (has(cols, i, element)
        || has(rows, j, element)
        || has(squares, squareN, element)) {
        return false
      }

      cols.get(i).add(element)
      rows.get(j).add(element)
      squares.get(squareN).add(element)

    }
  }

  return true
}

var has = function (mapOfSets, key, element) {
  if (mapOfSets.has(key)) {
    return mapOfSets.get(key).has(element)
  }

  mapOfSets.set(key, new Set())
  return false
}

/**
 * @param {character[][]} board
 * @return {boolean}
 */
var isValidSudoku1 = function (board) {
  // check rows
  for (let i = 0; i < board.length; i++) {
    const row = new Set()
    for (let j = 0; j < board[i].length; j++) {
      if (board[i][j] == ".") continue
      if (row.has(board[i][j])) {
        return false
      }
      row.add(board[i][j])
    }
  }

  // check cols
  for (let i = 0; i < board.length; i++) {
    const col = new Set()
    for (let j = 0; j < board[i].length; j++) {
      if (board[j][i] == ".") continue
      if (col.has(board[j][i])) {
        return false
      }
      col.add(board[j][i])
    }
  }

  for (let i = 0; i < 3; i++) {
    for (let j = 0; j < 3; j++) {
      const square = new Set()
      for (let ii = 1; ii < 4; ii++) {
        for (let jj = 1; jj < 4; jj++) {
          const x = i * 3 + ii - 1, y = j * 3 + jj - 1
          if (board[x][y] == ".") continue
          if (square.has(board[x][y])) {
            return false
          }
          square.add(board[x][y])
        }
      }
    }
  }

  return true
};

console.log(isValidSudoku([["5", "3", ".", ".", "7", ".", ".", ".", "."],
["6", ".", ".", "1", "9", "5", ".", ".", "."],
[".", "9", "8", ".", ".", ".", ".", "6", "."],
["8", ".", ".", ".", "6", ".", ".", ".", "3"],
["4", ".", ".", "8", ".", "3", ".", ".", "1"],
["7", ".", ".", ".", "2", ".", ".", ".", "6"],
[".", "6", ".", ".", ".", ".", "2", "8", "."], [".", ".", ".", "4", "1", "9", ".", ".", "5"], [".", ".", ".", ".", "8", ".", ".", "7", "9"]]))// true
//console.log(isValidSudoku([[".", "9", ".", ".", "4", ".", ".", ".", "."], ["1", ".", ".", ".", ".", ".", "6", ".", "."], [".", ".", "3", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", ".", ".", "."], [".", ".", ".", "7", ".", ".", ".", ".", "."], ["3", ".", ".", ".", "5", ".", ".", ".", "."], [".", ".", "7", ".", ".", "4", ".", ".", "."], [".", ".", ".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", "7", ".", ".", ".", "."]]))