module DocuSign.Base.Types.CorrectViewRequest where

import DocuSign.Base.Types.Common

data CorrectViewRequest = CorrectViewRequest
  { correctViewRequestReturnUrl          :: Maybe Text
  , correctViewRequestSuppressNavigation :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CorrectViewRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "correctViewRequest")
instance ToJSON CorrectViewRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "correctViewRequest")

instance Default CorrectViewRequest
