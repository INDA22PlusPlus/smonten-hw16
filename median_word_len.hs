import Data.List

l = ["hej", "jag", "heter", "din", "mamma", "h"]
wl = sort $ map length l


medianWl :: [String] -> Double
medianWl [] = 0
medianWl l
    | (length l) `mod` 2 == 1 =
        wls !! (middleIdx wls) :: Double
    | (length l) `mod` 2 == 0 = 
        ((wls !! (middleIdx wls) + wls !! (-1 + middleIdx wls) ) / 2) :: Double
    where
        wls = sort $ map length l
        middleIdx :: [a] -> Int
        middleIdx [] = 0
        middleIdx l = (length l) `div` 2 
    