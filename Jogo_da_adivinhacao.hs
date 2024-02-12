module Main where

-- import System.Random (randomRIO)
import Control.Monad (when)
import System.IO (stdout,hSetBuffering,BufferMode(NoBuffering))

mainLoop :: IO ()
mainLoop = do 
    hSetBuffering stdout NoBuffering
    --numAleatorio <- randomRIO (1, 10) :: IO Int
    putStrLn "Estou pensando em um número entre 1 e 10. Tente adivinhar.\n"
    tentativa <- try 1 3

    putStrLn "Digite 'S' para continuar ou qualquer outra coisa para parar:"
    input <- getLine
    if input == "s"
      then mainLoop
      else putStrLn "Fim..."

main :: IO () 
main = do 
    putStrLn "Bem vindo ao jogo da adivinhação\n"
    mainLoop
-- Funcao para tentativa do numero --
try :: Int -> Int -> IO Int
try a b = do
    putStrLn ("Tentativa " ++ show a ++ ":")
    putStr "Digite seu palpite: "
    num <- getLine
    if read num == b
        then do
            putStrLn "Seu palpite está correto!"
            putStrLn  ("Parabéns! Você acertou em " ++ show a ++ " tentativas.")
            return a
        else if read num < b
            then do
                putStrLn ("Seu palpite de " ++ show num ++ " está abaixo do número correto.")
                try (a + 1) b
            else do
                putStrLn ("Seu palpite de " ++ show num ++ " está acima do número correto.")
                try (a + 1) b
