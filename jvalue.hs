import Data.Text
import qualified Data.Map as Map

data Jvalue = Value Text | List [Jvalue] | Object (Map.Map Text Jvalue) | Number Double | Boolean Bool | Null
