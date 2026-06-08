{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Map qualified as Map
import HaskDB.Types

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  let x = Object (Map.fromList [("Nome", Value "Teste")])
  print x
