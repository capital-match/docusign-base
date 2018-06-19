module DocuSign.Base.Types.RecipientSignatureProvider where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.RecipientSignatureProviderOptions

data RecipientSignatureProvider = RecipientSignatureProvider
  { recipientSignatureProviderSignatureProviderName    :: Maybe Text
  , recipientSignatureProviderSignatureProviderOptions :: Maybe RecipientSignatureProviderOptions
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientSignatureProvider where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientSignatureProvider")
instance ToJSON RecipientSignatureProvider where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientSignatureProvider")

instance Default RecipientSignatureProvider
