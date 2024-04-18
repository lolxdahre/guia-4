sumaPotencias:: Int->Int->Int->Int
sumaPotencias q n m | n == 0 = 0
                    | otherwise = sumaInterna q n m + sumaPotencias q (n-1) m


sumaInterna :: Int->Int->Int->Int
sumaInterna q n m | m == 0 = 0
                  | otherwise = q^(n + m) + sumaInterna q n (m-1)
