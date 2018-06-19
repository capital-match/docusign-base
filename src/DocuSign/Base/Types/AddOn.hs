module DocuSign.Base.Types.AddOn where

import DocuSign.Base.Types.Common

data AddOn = AddOn
  { addOnActive  :: Maybe Text
  , addOnAddOnId :: Maybe Text
  , addOnId      :: Maybe Text
  , addOnName    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AddOn where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "addOn")
instance ToJSON AddOn where
  toJSON = genericToJSON (removeFieldLabelPrefix "addOn")

instance Default AddOn
