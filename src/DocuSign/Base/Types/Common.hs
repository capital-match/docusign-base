module DocuSign.Base.Types.Common
  ( FromJSON (..)
  , ToJSON (..)
  , genericParseJSON
  , genericToJSON
  , removeFieldLabelPrefix
  , Default
  , Text
  , Generic
  ) where

import Data.Aeson               ( FromJSON (..)
                                , ToJSON (..)
                                , genericParseJSON
                                , genericToJSON )
import Data.Default             ( Default )
import Data.Text                ( Text )
import DocuSign.Base.Fields ( removeFieldLabelPrefix )
import GHC.Generics             ( Generic )
