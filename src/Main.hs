--module Main (main) where
suma::Int->Int->Int
suma x y = x + y

duplicar :: Int -> Int
duplicar x = x * 2


aplicarFuncion :: (Int -> Int -> Int) -> Int -> Int -> Int
aplicarFuncion f x y = f x y

ejecutarDosVeces :: (a -> a) -> a -> a
ejecutarDosVeces f x = f (f x)

aplicarFuncionSuperior :: ((a -> a) -> a -> a) -> (a -> a) -> a -> a
aplicarFuncionSuperior f g x = f g x

main :: IO ()
main = do
  --map es de orden superior
    let lista = [1, 2, 3, 4, 5]
    let listaDuplicada = map duplicar lista
    print listaDuplicada
    putStrLn ""
    let result = suma 4 5
    print $ "[Ord Sup] La suma es: "++ show result
    putStrLn ""
  --putStrLn $ show ([1..10])
  --ejemplo de evaluación lazy
    let infiniteList = [1..]
    print $ take 10 infiniteList
    
    --aplicarFuncion es una función de orden superior porque toma una función (suma) como argumento.
    let result = aplicarFuncion suma 4 5
    print $ "La suma es: "++ show result
    putStrLn ""
    --ejem de func de orden superi aplicarFuncionSuperior  q toma una función de orden superior (ejecutarDosVeces) y una función de primer orden (duplicar) como argumentos.
    let resultado = aplicarFuncionSuperior ejecutarDosVeces duplicar 2
    print $ "El resultado es: "++ show resultado
    putStrLn ""