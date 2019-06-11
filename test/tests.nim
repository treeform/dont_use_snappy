import ../src/snappy
import unittest
import osproc
import random

suite "Snappy tests":

  test "Snappy compression and decompression is correct":
    let
      input = "Hello world"
      compressed = compress(input)
      uncompressed = uncompress(compressed)
    check(uncompressed == input)

  test "Snappy 1M":
    var input = ""
    for i in 0 .. 1_048_576:
      input.add char(rand(20..80))
    let
      compressed = compress(input)
      uncompressed = uncompress(compressed)
    check(uncompressed == input)
