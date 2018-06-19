module DocuSign.Base.Types.ServiceVersion where

import DocuSign.Base.Types.Common

data ServiceVersion = ServiceVersion
  { serviceVersionVersion    :: Maybe Text
  , serviceVersionVersionUrl :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ServiceVersion where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "serviceVersion")
instance ToJSON ServiceVersion where
  toJSON = genericToJSON (removeFieldLabelPrefix "serviceVersion")

instance Default ServiceVersion
