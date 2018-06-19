module DocuSign.Base.Types.RecipientEmailNotification where

import DocuSign.Base.Types.Common

data RecipientEmailNotification = RecipientEmailNotification
  { recipientEmailNotificationEmailBody         :: Maybe Text
  , recipientEmailNotificationEmailSubject      :: Maybe Text
  , recipientEmailNotificationSupportedLanguage :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientEmailNotification where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientEmailNotification")
instance ToJSON RecipientEmailNotification where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientEmailNotification")

instance Default RecipientEmailNotification
