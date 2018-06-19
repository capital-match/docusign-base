module DocuSign.Base.Types.Notification where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Expirations
import DocuSign.Base.Types.Reminders

data Notification = Notification
  { notificationExpirations        :: Maybe Expirations
  , notificationReminders          :: Maybe Reminders
  , notificationUseAccountDefaults :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Notification where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "notification")
instance ToJSON Notification where
  toJSON = genericToJSON (removeFieldLabelPrefix "notification")

instance Default Notification
