module DocuSign.Base.Types.RecipientPhoneAuthentication where

import DocuSign.Base.Types.Common

data RecipientPhoneAuthentication = RecipientPhoneAuthentication
  { recipientPhoneAuthenticationRecipMayProvideNumber       :: Maybe Text
  , recipientPhoneAuthenticationRecordVoicePrint            :: Maybe Text
  , recipientPhoneAuthenticationSenderProvidedNumbers       :: Maybe [Text]
  , recipientPhoneAuthenticationValidateRecipProvidedNumber :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientPhoneAuthentication where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientPhoneAuthentication")
instance ToJSON RecipientPhoneAuthentication where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientPhoneAuthentication")

instance Default RecipientPhoneAuthentication
