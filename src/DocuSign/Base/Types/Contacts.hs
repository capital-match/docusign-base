module DocuSign.Base.Types.Contacts where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ContactPhoneNumber
import DocuSign.Base.Types.ErrorDetails

data Contacts = Contacts
  { contactsContactId           :: Maybe Text
  , contactsContactPhoneNumbers :: Maybe [ContactPhoneNumber]
  , contactsContactUri          :: Maybe Text
  , contactsEmails              :: Maybe [Text]
  , contactsErrorDetails        :: Maybe ErrorDetails
  , contactsName                :: Maybe Text
  , contactsOrganization        :: Maybe Text
  , contactsShared              :: Maybe Text
  , contactsSigningGroup        :: Maybe Text
  , contactsSigningGroupName    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Contacts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "contacts")
instance ToJSON Contacts where
  toJSON = genericToJSON (removeFieldLabelPrefix "contacts")

instance Default Contacts
