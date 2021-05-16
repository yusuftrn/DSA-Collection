/*
 Challenge 36: Print error lines

 Difficulty: Taxing
 Write a function that accepts accepts a path to a log file on disk,
 and returns how many lines start with “[ERROR]”.
 The log file could be as large as 10GB, but may also not exist.

 Sample input and output
 • If the file contains 100,000,000 lines and eight start with “[ERROR]” your function should return 8.
 • If the file does not exist, cannot be loaded, or contains zero lines starting with “[ERROR]” your function should return 0.
 */

import Foundation
