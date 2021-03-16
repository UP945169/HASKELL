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

<<<<<<< HEAD
=======


--our work

betterStudentlongForm :: (String, Int) -> (String, Int) -> String
betterStudentlongForm (std1, grd1) (std2, grd2)
    | grd1 > grd2 = std1
    | otherwise = std2


sumDifference :: Int -> Int -> (Int,Int)
sumDifference x y
    | 
>>>>>>> 02b67eb5fe1ca25e6cf50376e4015315b430d755
