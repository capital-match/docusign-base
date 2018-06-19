module DocuSign.Base.Types.SamlAssertionAttribute where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data SamlAssertionAttribute = SamlAssertionAttribute
  { samlAssertionAttributeErrorDetails  :: Maybe ErrorDetails
  , samlAssertionAttributeName          :: Maybe Text
  , samlAssertionAttributeOriginalValue :: Maybe Text
  , samlAssertionAttributeValue         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SamlAssertionAttribute where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "samlAssertionAttribute")
instance ToJSON SamlAssertionAttribute where
  toJSON = genericToJSON (removeFieldLabelPrefix "samlAssertionAttribute")

instance Default SamlAssertionAttribute
