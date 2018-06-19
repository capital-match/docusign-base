module DocuSign.Base.Types.RecipientNamesResponse where

import DocuSign.Base.Types.Common

data RecipientNamesResponse = RecipientNamesResponse
  { recipientNamesResponseMultipleUsers          :: Maybe Text
  , recipientNamesResponseRecipientNames         :: Maybe [Text]
  , recipientNamesResponseReservedRecipientEmail :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientNamesResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientNamesResponse")
instance ToJSON RecipientNamesResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientNamesResponse")

instance Default RecipientNamesResponse
