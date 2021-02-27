absolute :: Int -> Int
absolute x1
    | x1 < 0 = -x1
    | otherwise = x1

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

taxiFare :: Int -> Float
taxiFare x1
    | otherwise = fromIntegral x1


--validDate :: Int -> Int -> Bool
--validDate day month
--    | 