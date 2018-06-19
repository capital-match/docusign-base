module DocuSign.Base.Types.ContactPhoneNumber where

import DocuSign.Base.Types.Common

data ContactPhoneNumber = ContactPhoneNumber
  { contactPhoneNumberPhoneNumber :: Maybe Text
  , contactPhoneNumberPhoneType   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ContactPhoneNumber where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "contactPhoneNumber")
instance ToJSON ContactPhoneNumber where
  toJSON = genericToJSON (removeFieldLabelPrefix "contactPhoneNumber")

instance Default ContactPhoneNumber
