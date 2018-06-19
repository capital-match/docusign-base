module DocuSign.Base.Types.EnvelopeNotificationRequest where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Expirations
import DocuSign.Base.Types.Reminders

data EnvelopeNotificationRequest = EnvelopeNotificationRequest
  { envelopeNotificationRequestExpirations        :: Maybe Expirations
  , envelopeNotificationRequestReminders          :: Maybe Reminders
  , envelopeNotificationRequestUseAccountDefaults :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeNotificationRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeNotificationRequest")
instance ToJSON EnvelopeNotificationRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeNotificationRequest")

instance Default EnvelopeNotificationRequest
