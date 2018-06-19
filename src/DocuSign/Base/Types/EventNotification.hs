module DocuSign.Base.Types.EventNotification where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EnvelopeEvent
import DocuSign.Base.Types.RecipientEvent

data EventNotification = EventNotification
  { eventNotificationEnvelopeEvents                    :: Maybe [EnvelopeEvent]
  , eventNotificationIncludeCertificateOfCompletion    :: Maybe Text
  , eventNotificationIncludeCertificateWithSoap        :: Maybe Text
  , eventNotificationIncludeDocumentFields             :: Maybe Text
  , eventNotificationIncludeDocuments                  :: Maybe Text
  , eventNotificationIncludeEnvelopeVoidReason         :: Maybe Text
  , eventNotificationIncludeSenderAccountAsCustomField :: Maybe Text
  , eventNotificationIncludeTimeZone                   :: Maybe Text
  , eventNotificationLoggingEnabled                    :: Maybe Text
  , eventNotificationRecipientEvents                   :: Maybe [RecipientEvent]
  , eventNotificationRequireAcknowledgment             :: Maybe Text
  , eventNotificationSignMessageWithX509Cert           :: Maybe Text
  , eventNotificationSoapNameSpace                     :: Maybe Text
  , eventNotificationUrl                               :: Maybe Text
  , eventNotificationUseSoapInterface                  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EventNotification where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "eventNotification")
instance ToJSON EventNotification where
  toJSON = genericToJSON (removeFieldLabelPrefix "eventNotification")

instance Default EventNotification
