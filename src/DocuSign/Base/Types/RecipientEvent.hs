module DocuSign.Base.Types.RecipientEvent where

import DocuSign.Base.Types.Common

data RecipientEvent = RecipientEvent
  { recipientEventIncludeDocuments         :: Maybe Text
  , recipientEventRecipientEventStatusCode :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientEvent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientEvent")
instance ToJSON RecipientEvent where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientEvent")

instance Default RecipientEvent
