module DocuSign.Base.Types.TemplateNotificationRequest where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Expirations
import DocuSign.Base.Types.Reminders

data TemplateNotificationRequest = TemplateNotificationRequest
  { templateNotificationRequestExpirations        :: Maybe Expirations
  , templateNotificationRequestPassword           :: Maybe Text
  , templateNotificationRequestReminders          :: Maybe Reminders
  , templateNotificationRequestUseAccountDefaults :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateNotificationRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateNotificationRequest")
instance ToJSON TemplateNotificationRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateNotificationRequest")

instance Default TemplateNotificationRequest
