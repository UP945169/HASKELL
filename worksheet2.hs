sign :: Int -> Int
sign x1
    | x1 < 0 = -1
    | x1 > 0 = 1
    | otherwise = 0

howManyEqual :: Int -> Int -> Int -> Int
howManyEqual x1 x2 x3
    | x1 == x2 && x1 == x3 = 2
    | x1 == x2 && x1 == x3 && x2 == x3 = 3
    | otherwise = 0

--Fares start at £2.20; 50p is added for each kilometre
--covered for the first 10 kilometres; 
--and 30p is added foreach additional kilometre.

howManyAboveAverage :: Int -> Int -> Int -> Int
howManyAboveAverage x1 x2 x3 average
average = (x1 + x2 + x3)/3
    | x1 > average = 1
    | x1 && x2 > average = 2
    | x1 && x3 > average = 2
    | otherwise = 0

validDate :: Int -> Int -> Bool
validDate      