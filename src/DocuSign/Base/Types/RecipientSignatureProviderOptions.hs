module DocuSign.Base.Types.RecipientSignatureProviderOptions where

import DocuSign.Base.Types.Common

data RecipientSignatureProviderOptions = RecipientSignatureProviderOptions
  { recipientSignatureProviderOptionsCpfNumber       :: Maybe Text
  , recipientSignatureProviderOptionsOneTimePassword :: Maybe Text
  , recipientSignatureProviderOptionsSignerRole      :: Maybe Text
  , recipientSignatureProviderOptionsSms             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientSignatureProviderOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientSignatureProviderOptions")
instance ToJSON RecipientSignatureProviderOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientSignatureProviderOptions")

instance Default RecipientSignatureProviderOptions
