import Test.HUnit

-- cabal test type: exitcode-stdio-1.0
-- TODO: exit with non zero when there is a failure
-- right now, it just exits with 0

test1 = TestCase (assertEqual "1 = 1" 1 1)
test2 = TestCase (assertFailure "just fail")
tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2]

main :: IO ()
main = do
  runTestTT tests
  putStrLn "Test done!!!"
