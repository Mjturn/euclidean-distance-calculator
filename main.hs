import Text.Printf

calculateEuclideanDistance :: Double -> Double -> Double -> Double -> Double
calculateEuclideanDistance x1 y1 x2 y2 = sqrt((x1 - x2)^2 + (y1 - y2)^2)

main = do
    putStrLn "Enter x1's value."
    x1 <- getLine
    putStrLn "Enter y1's value."
    y1 <- getLine
    putStrLn "Enter x2's value."
    x2 <- getLine
    putStrLn "Enter y2's value."
    y2 <- getLine

    let x1' = read x1 :: Double
    let y1' = read y1 :: Double
    let x2' = read x2 :: Double
    let y2' = read y2 :: Double

    let euclideanDistance = calculateEuclideanDistance x1' y1' x2' y2'
    printf "The Euclidean distance between points (%f, %f) and (%f, %f) is %f.\n" x1' y1' x2' y2' euclideanDistance
