-- We don't import '||' from the prelude, so that we can 
-- define our own version

import Prelude hiding ((||),(&&),gcd)

-- The following line declares the || operator (which we are about to
-- re-define) to be right associative and to have precedence 2. This
-- is necessary in order for expressions such as False || x > 2 to be
-- valid (e.g. it sets the precedence of || to be lower than >). 

infixr 2  ||

-- A naive re-implementation of the Prelude operator ||
(||) :: Bool -> Bool -> Bool
True || True    = True
False || True   = True
True || False   = True
False || False  = False

-- An alternative re-implementation
--(||) :: Bool -> Bool -> Bool
--False || False   = False
--_ || _           = True

-- Another alternative re-implementation
--(||) :: Bool -> Bool -> Bool
--True || _     =  True
--False || a    = a


fact :: Int -> Int 
fact n 
    | n == 0    = 1
    | n > 0     = n * fact (n - 1)
    | otherwise = error "factorials not defined for negative ints"

mult :: Int -> Int -> Int
mult n m 
    | n == 0        = 0
    | n > 0         = m + mult (n - 1) m 

divide :: Int -> Int -> Int
divide n m
    | n < m         = 0
    | otherwise     = 1 + divide (n - m) m


-- implementation of && and


infixr 3 &&
(&&) :: Bool -> Bool -> Bool
-- False && False = False
-- False && True = False
-- True && False = False
-- True && True = True
False && _ = False
True && a = a

-- reimplementation
(&&) 

exOr :: Bool -> Bool -> Bool
exOr True  False = True
exOr False True = True
exOr _  _ = False
-- 2 line answer for exOr. not is not gate
exOr True a = a 
exOr False _ = False

ifThenElse :: Bool -> Int -> Int -> Int
--ifThenElse x1 x2
ifThenElse True x1 _ = x1
ifThenElse False _ x2 = x2
<<<<<<< HEAD
=======

sumNumbers :: Int -> Int
-- sumNumbers
--     | x == 0 = 0
--     | otherwise = sumNumbers(x + x)
sumNumbers 0 = 0
sumNumbers n = sumNumber (n-1) + n


sumSquares :: Int -> Int
sumSquares x 
    | x == 0 = 0
    | otherwise = sumSquares(x - 1 ) + x ^ 2

power :: Int -> Int -> Int
power x n  
        |(n==1) = x
        |even n = (power x ( div n 2))*(power x ( div n 2)) 
        |odd n  = x * (power x (n-1))
-- 2^3 = 2*2^2
-- check if power 0 0 returns 0 and check if powert 5 0 returns 1
-- have 2 base cases for power

power2 :: Integer -> Integer -> Integer
power2 n k | k < 0 = error "power: negative argument"
power2 n 0 = 1
power2 n k = n * power n (k-1) 



sumFromTo :: Int -> Int -> Int
-- use guards, base case where x==y

gcd :: Int -> Int -> Int


intSquareRoot :: Int -> Int
intSquareRoot n = findRoot n n

findRoot :: Int -> Int -> Int
findRoot n s
    | s^2 > n   = intSquareRoot n (s+1)
    | otherwise  = s

-- check if it returns 5 for 26 and for 25
>>>>>>> 162fbde54dd0bfde7e5493d42e128a4a270bbf5e
