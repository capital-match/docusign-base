module DocuSign.Base.Types.BccEmailAddress where

import DocuSign.Base.Types.Common

data BccEmailAddress = BccEmailAddress
  { bccEmailAddressBccEmailAddressId :: Maybe Text
  , bccEmailAddressEmail             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BccEmailAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bccEmailAddress")
instance ToJSON BccEmailAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix "bccEmailAddress")

instance Default BccEmailAddress
