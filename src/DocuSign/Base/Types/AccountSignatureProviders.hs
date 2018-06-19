module DocuSign.Base.Types.AccountSignatureProviders where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountSignatureProvider

data AccountSignatureProviders = AccountSignatureProviders
  { accountSignatureProvidersSignatureProviders :: Maybe [AccountSignatureProvider]
  } deriving (Show, Eq, Generic)

instance FromJSON AccountSignatureProviders where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountSignatureProviders")
instance ToJSON AccountSignatureProviders where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountSignatureProviders")

instance Default AccountSignatureProviders
