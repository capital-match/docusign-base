module DocuSign.Base.Types.ErrorDetails where

import DocuSign.Base.Types.Common

data ErrorDetails = ErrorDetails
  { errorDetailsErrorCode :: Maybe Text
  , errorDetailsMessage   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ErrorDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "errorDetails")
instance ToJSON ErrorDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix "errorDetails")

instance Default ErrorDetails
