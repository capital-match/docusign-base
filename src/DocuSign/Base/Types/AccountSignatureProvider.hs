module DocuSign.Base.Types.AccountSignatureProvider where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountSignatureProviderOption
import DocuSign.Base.Types.SignatureProviderRequiredOption

data AccountSignatureProvider = AccountSignatureProvider
  { accountSignatureProviderIsRequired                       :: Maybe Text
  , accountSignatureProviderPriority                         :: Maybe Text
  , accountSignatureProviderSignatureProviderDisplayName     :: Maybe Text
  , accountSignatureProviderSignatureProviderId              :: Maybe Text
  , accountSignatureProviderSignatureProviderName            :: Maybe Text
  , accountSignatureProviderSignatureProviderOptionsMetadata :: Maybe [AccountSignatureProviderOption]
  , accountSignatureProviderSignatureProviderRequiredOptions :: Maybe [SignatureProviderRequiredOption]
  } deriving (Show, Eq, Generic)

instance FromJSON AccountSignatureProvider where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountSignatureProvider")
instance ToJSON AccountSignatureProvider where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountSignatureProvider")

instance Default AccountSignatureProvider
