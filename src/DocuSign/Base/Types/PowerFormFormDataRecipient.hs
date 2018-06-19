module DocuSign.Base.Types.PowerFormFormDataRecipient where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data PowerFormFormDataRecipient = PowerFormFormDataRecipient
  { powerFormFormDataRecipientEmail       :: Maybe Text
  , powerFormFormDataRecipientFormData    :: Maybe [NameValue]
  , powerFormFormDataRecipientName        :: Maybe Text
  , powerFormFormDataRecipientRecipientId :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PowerFormFormDataRecipient where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "powerFormFormDataRecipient")
instance ToJSON PowerFormFormDataRecipient where
  toJSON = genericToJSON (removeFieldLabelPrefix "powerFormFormDataRecipient")

instance Default PowerFormFormDataRecipient
