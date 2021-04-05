import Prelude hiding (fst, snd, head, tail, sum, concat, reverse, zip)

-- Definitions of the prelude functions fst and snd

fst (x,_)       = x
snd (_,y)       = y

-- Definitions of the prelude functions head and tail

head (x:_)      = x
tail (_:xs)     = xs

absFirst :: [Int] -> Int
absFirst []     = -1
absFirst (x:xs) = abs x

sum :: [Int] -> Int
sum []     = 0
sum (x:xs) =   x + sum xs

doubleAll :: [Int] -> [Int]
doubleAll []      = []
doubleAll (x:xs)  = 2*x : doubleAll xs

concat :: [[a]] -> [a]
concat []         = []
concat (x:xs)     = x ++ concat xs

reverse :: [a] -> [a]
reverse []      = []
reverse (x:xs)  = reverse xs ++ [x]

zip :: [a] -> [b] -> [(a,b)]
zip (x:xs) (y:ys)  = (x,y) : zip xs ys
zip _ _            = []


--worksheet questions

headPlusOne :: [Int] -> Int
headPlusOne [] = 0
headPlusOne (x:xs) = x + 1

[4,5,6]     4:[5,6]  

duplicateHead :: [a] -> [a]
duplicateHead []  = []
duplicateHead (x:xs) = head (x:xs) : (x:xs)   -- x:x:xs    x:(x:xs)

          x:y:xs
[4,5,6]   4:5:[6]  4:5:6:[]

listLength :: [a] -> Int
listLength [] = 0
listLength (x:xs) = 1 + listLength xs

multAll :: [Int] -> Int
multAll [] = 1
multAll (x:xs) = x * multAll xs

andAll :: [Bool] -> Bool
andAll [] = True
andAll (x:xs) = x && andAll xs


countElems :: Int -> [Int] -> Int
countElems _ [] = 0
countElems i (x:xs)
  | i == x = 1 + countElems i xs
  | otherwise = countElems i xs

removeAll :: Int -> [Int] -> [Int]
removeAll _ [] = []
removeAll i (x:xs)
  | i == x = removeAll x xs
  | otherwise = x : removeAll i xs

listMarks :: String -> [StudentMark] -> [Int]
listMarks _ [] = []
listMarks std (x:xs)
  | std == fst x = snd x : listMarks std xs
  | otherwise = listMarks std xs