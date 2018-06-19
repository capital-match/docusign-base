module DocuSign.Base.Types.ContactModRequest where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Contacts

data ContactModRequest = ContactModRequest
  { contactModRequestContacts :: Maybe [Contacts]
  } deriving (Show, Eq, Generic)

instance FromJSON ContactModRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "contactModRequest")
instance ToJSON ContactModRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "contactModRequest")

instance Default ContactModRequest
