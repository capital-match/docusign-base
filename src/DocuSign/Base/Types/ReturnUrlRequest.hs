module DocuSign.Base.Types.ReturnUrlRequest where

import DocuSign.Base.Types.Common

data ReturnUrlRequest = ReturnUrlRequest
  { returnUrlRequestReturnUrl :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ReturnUrlRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "returnUrlRequest")
instance ToJSON ReturnUrlRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "returnUrlRequest")

instance Default ReturnUrlRequest
