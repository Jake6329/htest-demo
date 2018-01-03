import Test.QuickCheck

-- cabal test type: exitcode-stdio-1.0

prop_reverse :: [Int] -> Bool
prop_reverse xs = reverse (reverse xs) == xs

main :: IO ()
main = do
  quickCheck prop_reverse
  putStrLn "Test done!!!"
