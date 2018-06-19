module DocuSign.Base.Types.SignerEmailNotifications where

import DocuSign.Base.Types.Common

data SignerEmailNotifications = SignerEmailNotifications
  { signerEmailNotificationsAgentNotification             :: Maybe Text
  , signerEmailNotificationsCarbonCopyNotification        :: Maybe Text
  , signerEmailNotificationsCertifiedDeliveryNotification :: Maybe Text
  , signerEmailNotificationsDocumentMarkupActivation      :: Maybe Text
  , signerEmailNotificationsEnvelopeActivation            :: Maybe Text
  , signerEmailNotificationsEnvelopeComplete              :: Maybe Text
  , signerEmailNotificationsEnvelopeCorrected             :: Maybe Text
  , signerEmailNotificationsEnvelopeDeclined              :: Maybe Text
  , signerEmailNotificationsEnvelopeVoided                :: Maybe Text
  , signerEmailNotificationsFaxReceived                   :: Maybe Text
  , signerEmailNotificationsOfflineSigningFailed          :: Maybe Text
  , signerEmailNotificationsPurgeDocuments                :: Maybe Text
  , signerEmailNotificationsReassignedSigner              :: Maybe Text
  , signerEmailNotificationsWhenSigningGroupMember        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SignerEmailNotifications where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signerEmailNotifications")
instance ToJSON SignerEmailNotifications where
  toJSON = genericToJSON (removeFieldLabelPrefix "signerEmailNotifications")

instance Default SignerEmailNotifications
