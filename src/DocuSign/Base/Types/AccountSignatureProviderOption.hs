module DocuSign.Base.Types.AccountSignatureProviderOption where

import DocuSign.Base.Types.Common

data AccountSignatureProviderOption = AccountSignatureProviderOption
  { accountSignatureProviderOptionSignatureProviderOptionDisplayName :: Maybe Text
  , accountSignatureProviderOptionSignatureProviderOptionId          :: Maybe Text
  , accountSignatureProviderOptionSignatureProviderOptionName        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountSignatureProviderOption where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountSignatureProviderOption")
instance ToJSON AccountSignatureProviderOption where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountSignatureProviderOption")

instance Default AccountSignatureProviderOption
