module DocuSign.Base.Types.Reminders where

import DocuSign.Base.Types.Common

data Reminders = Reminders
  { remindersReminderDelay     :: Maybe Text
  , remindersReminderEnabled   :: Maybe Text
  , remindersReminderFrequency :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Reminders where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "reminders")
instance ToJSON Reminders where
  toJSON = genericToJSON (removeFieldLabelPrefix "reminders")

instance Default Reminders
