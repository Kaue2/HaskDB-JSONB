{-# LANGUAGE OverloadedStrings #-}

import Data.Map qualified as Map
import Data.Text

data Jvalue
  = Value Text
  | List [Jvalue]
  | Object (Map.Map Text Jvalue)
  | Number Double
  | Boolean Bool
  | Null
  deriving (Show)

main :: IO ()
main = do
  let doc = Object (Map.fromList [("Nome", Object (Map.fromList [("Nome", Value "exemplo"), ("Idade", Number 15)]))])
  print doc
