#include "Array.foldl.bend"

def testArrayFoldl(_):
  sum = lambda n,acc: n + acc
  arr = Array.repeat(5,10)
  x = Array.foldl(sum,0,arr)
  return x == 50

def testArrayFoldlWithInit(_):
  sum = lambda n,acc: n + acc
  arr = Array.repeat(5,10)
  x = Array.foldl(sum,100,arr)
  return x == 150

def testArrayFoldlLarge(_):
  sum = lambda n,acc: n + acc
  arr = Array.repeat(20,10)
  x = Array.foldl(sum,0,arr)
  return x == 200

def testArrayFoldlOrder(_):
  dif = lambda n,acc: n - acc
  arr = Array/Array(
          3,
          Array/Value(10),
          Array/Value(20),
          Array/Value(30),
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
        )
  x = Array.foldl(dif,+5,arr) # (30 - (20 - (10 - 5)))
  return x == +15
