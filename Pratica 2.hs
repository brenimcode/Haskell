-- EXERCICIO 1 --


module Main (main) where
import System.IO (stdout,hFlush)

main :: IO ()
main =  do
          putStrLn "Digite a frase:"
          hFlush stdout
          b <- getLine
          if (b == reverse b) then putStrLn "palindromo" else putStrLn "nao eh"

-- EXERCICIO 2 --


module Main (main) where 
    
main :: IO ()
    
main = do     putStrLn "DIgite num"
              s1  <- readLn::IO Float
              putStrLn "Digite num2"
              s2 <-  readLn::IO Float
              putStrLn "Digite num3"
              s3 <-  readLn::IO Float
              putStrLn "Produto: "
              putStrLn (show ( s1 * s2 * s3) )


-- EXERCICIO 3 --


module Main (main) where 

celsius :: Double -> Double
celsius a = 5/9*(a-32)

    
main :: IO ()
    
main = do     
              putStrLn "DIgite num"
              s1  <- readLn::IO Double
              putStrLn (show (celsius s1))
              

-- EXERCICIO 4 --

module Main (main) where 

calculaMedia :: Float -> Float -> Float -> String
calculaMedia a b c     | (a*b*c)/3 < 3 =  "Reprovado!!"
                       | (a*b*c)/3 > 7 =  "Aprovado"
                       | otherwise =  "Exame especial!!"
                        

main :: IO ()
    
main = do     
    putStrLn "DIgite nota1"
    s1  <- readLn::IO Float
    putStrLn "DIgite nota2"
    s2  <- readLn::IO Float
    putStrLn "DIgite nota3"
    s3  <- readLn::IO Float
    putStrLn (show (calculaMedia s1 s2 s3))
    

-- EXERCICIO 5 --

module Main (main) where 

llk :: Int -> IO ()
llk a    | a < 16 =  putStrLn "Nao eleitor"
            | ((a >15 && a <19) || a >65) =  putStrLn "Facultativo"
            | otherwise =  putStrLn "Eleitor obrigatorio"
                        

main :: IO ()
    
main = do     
    putStrLn "DIgite nota1"
    s1  <- readLn::IO Int
    llk s1
    
    
        
