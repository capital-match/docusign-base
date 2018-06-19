module DocuSign.Base.Types.PowerFormData where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.PowerFormFormDataRecipient

data PowerFormData = PowerFormData
  { powerFormDataEnvelopeId :: Maybe Text
  , powerFormDataRecipients :: Maybe [PowerFormFormDataRecipient]
  } deriving (Show, Eq, Generic)

instance FromJSON PowerFormData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "powerFormData")
instance ToJSON PowerFormData where
  toJSON = genericToJSON (removeFieldLabelPrefix "powerFormData")

instance Default PowerFormData
