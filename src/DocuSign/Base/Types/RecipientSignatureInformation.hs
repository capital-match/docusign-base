module DocuSign.Base.Types.RecipientSignatureInformation where

import DocuSign.Base.Types.Common

data RecipientSignatureInformation = RecipientSignatureInformation
  { recipientSignatureInformationFontStyle         :: Maybe Text
  , recipientSignatureInformationSignatureInitials :: Maybe Text
  , recipientSignatureInformationSignatureName     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientSignatureInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientSignatureInformation")
instance ToJSON RecipientSignatureInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientSignatureInformation")

instance Default RecipientSignatureInformation
