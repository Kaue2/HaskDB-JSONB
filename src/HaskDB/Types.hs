module HaskDB.Types where

import Data.Map qualified as Map
import Data.Text

data Jvalue
  = Value Text
  | List [Jvalue]
  | Object (Map.Map Text Jvalue)
  | Number Double
  | Boolean Bool
  | Null
  deriving (Show, Eq)
