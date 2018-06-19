module DocuSign.Base.Types.RecipientSMSAuthentication where

import DocuSign.Base.Types.Common

data RecipientSMSAuthentication = RecipientSMSAuthentication
  { recipientSMSAuthenticationSenderProvidedNumbers :: Maybe [Text]
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientSMSAuthentication where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientSMSAuthentication")
instance ToJSON RecipientSMSAuthentication where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientSMSAuthentication")

instance Default RecipientSMSAuthentication
