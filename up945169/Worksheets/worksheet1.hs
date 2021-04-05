timesTen :: Int -> Int
timesTen  x  = x * 10


sumThree :: Int -> Int -> Int -> Int
sumThree  x y z = x + y + z


areaOfCircle :: Float -> Float
areaOfCircle r = pi * r^2 


volumeOfCylinder :: Float -> Float -> Float
volumeOfCylinder r h = pi * r^2 * h --- (h * areaOfCircle r)


distance :: Float -> Float -> Float -> Float -> Float
distance x1 y1 x2 y2 = sqrt ((y1 - y2) ^ 2 + (x1 - x2) ^ 2)


---threeDifferent :: Int -> Int -> Int -> Bool
---threeDifferent x y z = x /= y && z

divisibleBy :: Int -> Int -> Bool
divisibleBy x y = mod x y == 0


isEven :: Int -> Bool
isEven x = mod x 2 == 0 


averageThree :: Int -> Int -> Int -> Float 
averageThree x1 x2 x3 = fromIntegral (x1 + x2 + x3) /3


absolute :: Int -> Int
absolute x1 = if x1 < 0 then -x1 else x1
