// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract TicTacToe {
  /* 
     This exercise assumes you know how to manipulate nested array.
     1. This contract checks if TicTacToe board is winning or not.
     2. Write your code in `isWinning` function that returns true if a board is winning
     or false if not.
     3. Board contains 1's and 0's elements and it is also a 3x3 nested array.
   */

  function isWinning(uint8[3][3] memory board) public pure returns (bool) {
    // your code here
    for (uint8 i = 0; i < board.length; i++) {
      if (allRowSame(board, i)) {
        return true;
      }
    }

    for (uint8 j = 0; j < board[0].length; j++) {
      if (allColSame(board, j)) {
        return true;
      }
    }

    if (checkMainDiagnoal(board)) {
      return true;
    }

    return checkSecondaryDiagnoal(board);
  }

  function allRowSame(uint8[3][3] memory board, uint8 row) private pure returns (bool) {
    uint8 initVal = board[row][0];

    for (uint8 j = 0; j < board[0].length; j++) {
      if (board[row][j] != initVal) {
        return false;
      }
    }

    return true;
  }

  function allColSame(uint8[3][3] memory board, uint8 col) private pure returns (bool) {
    uint8 initVal = board[0][col];

    for (uint8 i = 0; i < board.length; i++) {
      if (board[i][col] != initVal) {
        return false;
      }
    }

    return true;
  }

  function checkMainDiagnoal(uint8[3][3] memory board) private pure returns (bool) {
    uint8 initVal = board[0][0];
    for (uint8 i = 0; i < board.length; i++) {
      for (uint8 j = 0; j < board[0].length; j++) {
        if (i == j) {
          if (board[i][j] != initVal) {
            return false;
          }
        }
      }
    }

    return true;
  }

  function checkSecondaryDiagnoal(uint8[3][3] memory board) private pure returns (bool) {
    uint256 len = board.length;
    uint8 initVal = board[0][0];
    for (uint8 i = 0; i < board.length; i++) {
      for (uint8 j = 0; j < board[0].length; j++) {
        if (i == len - j - 1) {
          if (board[i][j] != initVal) {
            return false;
          }
        }
      }
    }

    return true;
  }
}
