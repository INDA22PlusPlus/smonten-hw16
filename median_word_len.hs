import Data.List

l = ["hej", "jagg"]
wl = sort $ map length l


medianWl :: [String] -> Double
medianWl [] = 0
medianWl l = middleVal $ sort $ map length l
    where
        middleVal :: [Int] -> Double
        middleVal [x] = fromIntegral x
        middleVal [x1, x2] = ((fromIntegral x1) + (fromIntegral x2)) / 2
        middleVal xs = middleVal (tail (init xs))

    