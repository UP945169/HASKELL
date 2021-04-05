import Data.Char (toUpper,toLower)
import Prelude hiding ((||))

fn :: Char -> Char
fn ch = toUpper ch

fn2 :: Int -> Int
fn2 x = 1 + x

not :: Bool -> Bool
not True = False
not False = True

--using Main.not for this to work

(||) :: Bool->Bool->Bool
True || True = True
True || False = True
False || True = True
False || False = False

--wild card _
