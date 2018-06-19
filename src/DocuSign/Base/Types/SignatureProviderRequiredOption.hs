module DocuSign.Base.Types.SignatureProviderRequiredOption where

import DocuSign.Base.Types.Common

data SignatureProviderRequiredOption = SignatureProviderRequiredOption
  { signatureProviderRequiredOptionRequiredSignatureProviderOptionIds :: Maybe [Text]
  , signatureProviderRequiredOptionSignerType                         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SignatureProviderRequiredOption where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signatureProviderRequiredOption")
instance ToJSON SignatureProviderRequiredOption where
  toJSON = genericToJSON (removeFieldLabelPrefix "signatureProviderRequiredOption")

instance Default SignatureProviderRequiredOption
