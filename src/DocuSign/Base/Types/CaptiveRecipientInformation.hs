module DocuSign.Base.Types.CaptiveRecipientInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.CaptiveRecipient

data CaptiveRecipientInformation = CaptiveRecipientInformation
  { captiveRecipientInformationCaptiveRecipients :: Maybe [CaptiveRecipient]
  } deriving (Show, Eq, Generic)

instance FromJSON CaptiveRecipientInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "captiveRecipientInformation")
instance ToJSON CaptiveRecipientInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "captiveRecipientInformation")

instance Default CaptiveRecipientInformation
