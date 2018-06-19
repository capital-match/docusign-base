module DocuSign.Base.Fields
  ( removeFieldLabelPrefix
  , modifyFieldLabel
  ) where

import Control.Lens.Cons    ( _head )
import Control.Lens.Setter  ( over )
import Data.Aeson.Types     ( Options (..)
                            , defaultOptions )

import qualified Data.Char as C

removeFieldLabelPrefix :: String -> Options
removeFieldLabelPrefix p =
  modifyFieldLabel (decapitalizeInitialChar . (drop $ length p)) defaultOptions

modifyFieldLabel :: (String -> String) -> Options -> Options
modifyFieldLabel m o = o { fieldLabelModifier = m . fieldLabelModifier o }

decapitalizeInitialChar :: String -> String
decapitalizeInitialChar = (over _head) C.toLower

