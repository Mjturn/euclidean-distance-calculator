import Text.Printf
import Text.Read (readMaybe)

calculateEuclideanDistance :: Double -> Double -> Double -> Double -> Double
calculateEuclideanDistance x1 y1 x2 y2 = sqrt((x1 - x2)^2 + (y1 - y2)^2)

validateInput :: String -> IO Double
validateInput prompt = do
    putStrLn prompt
    input <- getLine
    case readMaybe input of
        Just number -> return number
        Nothing -> do
            putStrLn "Sorry, the input you provided is invalid. Please try again."
            validateInput prompt

main = do
    x1 <- validateInput "Enter x1's value."
    y1 <- validateInput "Enter y1's value."
    x2 <- validateInput "Enter x2's value."
    y2 <- validateInput "Enter y2's value."

    let euclideanDistance = calculateEuclideanDistance x1 y1 x2 y2
    printf "The Euclidean distance between points (%f, %f) and (%f, %f) is %f.\n" x1 y1 x2 y2 euclideanDistance
