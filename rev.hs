rev :: [a] -> [a]
rev [] = []
rev l = foldl (\acc elem -> elem:acc) [] l

-- foldl above over [1, 2, 3, 4]
-- [1, 2, 3, 4]
-- 1:[]
-- 2:[1]
-- 3:[2, 1]
-- 4:[3, 2, 1]