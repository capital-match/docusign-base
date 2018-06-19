module DocuSign.Base.Types.SenderEmailNotifications where

import DocuSign.Base.Types.Common

data SenderEmailNotifications = SenderEmailNotifications
  { senderEmailNotificationsChangedSigner          :: Maybe Text
  , senderEmailNotificationsDeliveryFailed         :: Maybe Text
  , senderEmailNotificationsEnvelopeComplete       :: Maybe Text
  , senderEmailNotificationsOfflineSigningFailed   :: Maybe Text
  , senderEmailNotificationsRecipientViewed        :: Maybe Text
  , senderEmailNotificationsSenderEnvelopeDeclined :: Maybe Text
  , senderEmailNotificationsWithdrawnConsent       :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SenderEmailNotifications where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "senderEmailNotifications")
instance ToJSON SenderEmailNotifications where
  toJSON = genericToJSON (removeFieldLabelPrefix "senderEmailNotifications")

instance Default SenderEmailNotifications
