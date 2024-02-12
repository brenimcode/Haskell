-- EXERCICIO 1 --

palindromo :: String -> IO()
palindromo a | a == reverse a = putStrLn "Eh PALINDROMO"
             | otherwise = putStrLn "Nao eh"


-- EXERCICIO 2 --

produto:: Float -> Float -> Float -> Float
produto a b c = a*b*c

-- EXERCICIO 3 --

celsius:: Double -> Double
celsius x = 5/9*(x-32)

main:: IO()
main = do
  putStr "Entre com temperatura em Fahrenheit:"
  temp <- readLn
  putStrLn (show(celsius temp) ++ " é Sua temperatura em Celsius.\n")

-- EXERCICIO 4 --

media:: Double -> Double -> Double -> Double

media a b c = (a+b+c)/3.0 

main:: IO()
main = do
  putStr "Entre com a b c:"
  a <- readLn
  b <- readLn
  c <- readLn
  let valor = media a b c
  if(valor < 3.0) then putStrLn "Reprovado"
  else if(valor >7.0) then putStrLn "Aprovado"
  else putStrLn "Exame especial"

-- EXERCICIO 5 --

classe_eleitoral:: Int -> IO()
classe_eleitoral a | a > 18 = putStrLn "Eleitor obrigatorio"
                   | a < 16 = putStrLn "Nao eleitor"
                   | otherwise = putStrLn "Facultativo"
