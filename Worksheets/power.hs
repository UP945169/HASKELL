power :: Integer -> Integer -> Integer
power n k | k < 0 = error "power: negative argument"
power n 0 = 1
power n k = n * power n (k-1) 

power3 :: Int -> Int -> Int
power3 0 _ = 0
power3 _ 0 = 1
power3 n k = n * power3 n (k -1)