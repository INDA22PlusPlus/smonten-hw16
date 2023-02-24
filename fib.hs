fib :: Int -> Int
fib 0 = 0
fib n
    | n > 0 = snd  $ foldl (\(x1, x2) _i -> (x2, x1+x2)) (0, 1) (replicate (n-1) 0)
    | otherwise = error "n must be positive integer"

-- example: fib 4
--     fold over [0, 0, 0], start acc (0, 1)
--     1) (1, 1)
--     2) (1, 2)
--     3) (2, 3)
--     snd (2, 3) is 3
--     return 3
