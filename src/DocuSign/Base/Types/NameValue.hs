module DocuSign.Base.Types.NameValue where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data NameValue = NameValue
  { nameValueErrorDetails  :: Maybe ErrorDetails
  , nameValueName          :: Maybe Text
  , nameValueOriginalValue :: Maybe Text
  , nameValueValue         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON NameValue where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "nameValue")
instance ToJSON NameValue where
  toJSON = genericToJSON (removeFieldLabelPrefix "nameValue")

instance Default NameValue
