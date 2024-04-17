esCapicua:: Int->Bool
esCapicua x| x<10 = True
              | mod x 10 == div x (10^((cantDigitos x)-1)) = esCapicua (div (mod x (10^((cantDigitos x)-1)))10)
              | otherwise = False

cantDigitos :: Int -> Int
cantDigitos x| x<10 = 1
             | otherwise = 1 + (cantDigitos (div x 10))

diezPrimero :: Int -> Int
diezPrimero x | x == 0 = 1
              | otherwise = 2^x + diezPrimero (x-1)

diezSegundo :: Int -> Float -> Float
diezSegundo n q | n == 1 = q
                | otherwise = q^n + diezSegundo (n-1)q

diezTercero :: Int -> Float -> Float
diezTercero n q | n == 1 = q + q^2
                | otherwise = q^(2*n) + diezSegundo (n-1)q 

diezCuarto :: Int -> Float -> Float
diezCuarto n q = diezTercero n q - diezSegundo (n-1)q

eAprox :: Int->Float
eAprox x | x == 0 = 1
         | otherwise =  1/fromIntegral(factorial x) + (eAprox (x-1))

factorial :: Int -> Int
factorial x | x == 0 = 1
            | otherwise = x * factorial (x-1)

e :: Float
e = eAprox 10

raizDe2Aprox :: Int -> Float
raizDe2Aprox x | x == 1 = 1
               | otherwise = (sucesionAn x)-1

sucesionAn :: Int -> Float
sucesionAn x | x == 1 = 2
             | otherwise = 2 + (1/(sucesionAn (x-1)))

dobleSumatoria :: Int -> Int -> Int
dobleSumatoria n m |

primeraSumatoria :: Int -> Int
primeraSumatoria x | 


    