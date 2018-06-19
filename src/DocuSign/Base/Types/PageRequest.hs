module DocuSign.Base.Types.PageRequest where

import DocuSign.Base.Types.Common

data PageRequest = PageRequest
  { pageRequestPassword :: Maybe Text
  , pageRequestRotate   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PageRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "pageRequest")
instance ToJSON PageRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "pageRequest")

instance Default PageRequest
