module DocuSign.Base.Types.RecipientSAMLAuthentication where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.SamlAssertionAttribute

data RecipientSAMLAuthentication = RecipientSAMLAuthentication
  { recipientSAMLAuthenticationSamlAssertionAttributes :: Maybe [SamlAssertionAttribute]
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientSAMLAuthentication where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientSAMLAuthentication")
instance ToJSON RecipientSAMLAuthentication where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientSAMLAuthentication")

instance Default RecipientSAMLAuthentication
