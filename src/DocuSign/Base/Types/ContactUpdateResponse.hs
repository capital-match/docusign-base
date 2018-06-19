module DocuSign.Base.Types.ContactUpdateResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Contacts

data ContactUpdateResponse = ContactUpdateResponse
  { contactUpdateResponseContacts :: Maybe [Contacts]
  } deriving (Show, Eq, Generic)

instance FromJSON ContactUpdateResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "contactUpdateResponse")
instance ToJSON ContactUpdateResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "contactUpdateResponse")

instance Default ContactUpdateResponse
