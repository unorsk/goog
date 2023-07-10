module TimeSort (sort) where
import Control.Concurrent
import Control.Monad
import System.Environment

sort :: Foldable t => t Int -> IO ()
sort values = do
    chan <- newChan
    forM_ values (\time -> forkIO $ threadDelay (100000 * time) >> writeChan chan time)
    forM_ values (\_ -> readChan chan >>= print)
    
main :: IO ()
main = getArgs >>= sort . map read