-- EXERCICIO 1 -- 


xor:: Bool -> Bool -> Bool
xor a b = (not(a))&&b || (not(b))&&a

xor2:: Bool -> Bool -> Bool
xor2 a b = a/=b

xor3:: Bool -> Bool -> Bool
xor3 a b = if a==b then False else True


xor4:: Bool -> Bool -> Bool
xor4 n n1| n /= n1 = True
     | otherwise = False


main :: IO ()
main =  do
putStr "Result: \n"
print(xor4 True True)

print(xor4 False False)

print(xor4 True False)


-- EXERCICIO 2 --

par :: Int -> Bool
par a   | (a `mod` 2) == 0 = True
        | otherwise = False

main :: IO ()
main = do
putStr "Result: \n"

print(par 2 )

-- EXERCICIO 4 --
