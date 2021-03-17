import Data.Char

type StudentMark = (String, Int)

betterStudent :: StudentMark -> StudentMark -> String
betterStudent (s1,m1) (s2,m2) 
    | m1 >= m2          = s1
    | otherwise         = s2


marks:: [StudentMark] -> [Int]
marks stmks = [ mk | (st,mk) <- stmks ]

pass :: [StudentMark] -> [String]
pass stmks = [ st | (st,mk) <- stmks, mk >= 40 ]

-- An example list of student marks
testData :: [StudentMark]
testData = [("John", 53), ("Sam", 16), ("Kate", 85), ("Jill", 65),
            ("Bill", 37), ("Amy", 22), ("Jack", 41), ("Sue", 71)]

addPairs :: [(Int,Int)] -> [Int]
addPairs pairList = [ i+j | (i,j) <- pairList ]

minAndMax :: Int -> Int -> (Int,Int)
minAndMax x y 
    | x <= y            = (x,y)
    | otherwise         = (y,x)



--our work

betterStudentlongForm :: (String, Int) -> (String, Int) -> String
betterStudentlongForm (std1, grd1) (std2, grd2)
    | grd1 > grd2 = std1
    | otherwise = std2


sumDifference :: Int -> Int -> (Int,Int)
sumDifference x y = (x+y,x-y)

grade :: StudentMark -> Char
grade (s1,m1)
    | m1 >= 70 = 'A'
    | m1 >= 60 = 'B'
    | m1 >= 50 = 'C'
    | m1 >= 40 = 'D'
    | otherwise = 'F'

capMark :: StudentMark -> StudentMark
capMark (st1, gr1)
    | gr1 > 40 = (st1, 40)
    | otherwise = (st1,gr1)

firstNumbers :: Int -> [Int]
firstNumbers x = [1..x]

firstSquares :: Int -> [Int]
firstSquares x = [ i^2 | i <- firstNumbers x ]

capitalise :: String -> String
--capitalise (x:xs) = toUpper x :xs
capitalise = map toUpper -- use a list comprehension


duplicate :: String -> Int -> String
duplicate s num
    | num == 0 = s  -- ""
    | otherwise = s ++ duplicate s (num-1)


divisors :: Int -> [Int]
divisors n = [x | x <- [1..n], n `mod` x == 0]


isprime :: Int -> Bool
isprime n = divisors n == [1,n]

