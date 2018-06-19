module DocuSign.Base.Types.Templates where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountCustomFields
import DocuSign.Base.Types.Document
import DocuSign.Base.Types.EnvelopeEmailSettings
import DocuSign.Base.Types.EnvelopeLocks
import DocuSign.Base.Types.EnvelopeRecipients
import DocuSign.Base.Types.EnvelopeTemplateDefinition
import DocuSign.Base.Types.Notification

data Templates = Templates
  { templatesAllowMarkup                 :: Maybe Text
  , templatesAllowReassign               :: Maybe Text
  , templatesAsynchronous                :: Maybe Text
  , templatesAttachmentsUri              :: Maybe Text
  , templatesAuthoritativeCopy           :: Maybe Text
  , templatesAutoNavigation              :: Maybe Text
  , templatesBrandId                     :: Maybe Text
  , templatesBrandLock                   :: Maybe Text
  , templatesCertificateUri              :: Maybe Text
  , templatesCompletedDateTime           :: Maybe Text
  , templatesCreatedDateTime             :: Maybe Text
  , templatesCustomFields                :: Maybe AccountCustomFields
  , templatesCustomFieldsUri             :: Maybe Text
  , templatesDeclinedDateTime            :: Maybe Text
  , templatesDeletedDateTime             :: Maybe Text
  , templatesDeliveredDateTime           :: Maybe Text
  , templatesDocuments                   :: Maybe [Document]
  , templatesDocumentsCombinedUri        :: Maybe Text
  , templatesDocumentsUri                :: Maybe Text
  , templatesEmailBlurb                  :: Maybe Text
  , templatesEmailSettings               :: Maybe EnvelopeEmailSettings
  , templatesEmailSubject                :: Maybe Text
  , templatesEnableWetSign               :: Maybe Text
  , templatesEnforceSignerVisibility     :: Maybe Text
  , templatesEnvelopeId                  :: Maybe Text
  , templatesEnvelopeIdStamping          :: Maybe Text
  , templatesEnvelopeTemplateDefinition  :: Maybe EnvelopeTemplateDefinition
  , templatesEnvelopeUri                 :: Maybe Text
  , templatesInitialSentDateTime         :: Maybe Text
  , templatesIs21CFRPart11               :: Maybe Text
  , templatesIsSignatureProviderEnvelope :: Maybe Text
  , templatesLastModifiedDateTime        :: Maybe Text
  , templatesLockInformation             :: Maybe EnvelopeLocks
  , templatesMessageLock                 :: Maybe Text
  , templatesNotification                :: Maybe Notification
  , templatesNotificationUri             :: Maybe Text
  , templatesPurgeState                  :: Maybe Text
  , templatesRecipients                  :: Maybe EnvelopeRecipients
  , templatesRecipientsLock              :: Maybe Text
  , templatesRecipientsUri               :: Maybe Text
  , templatesSentDateTime                :: Maybe Text
  , templatesSigningLocation             :: Maybe Text
  , templatesStatus                      :: Maybe Text
  , templatesStatusChangedDateTime       :: Maybe Text
  , templatesTemplatesUri                :: Maybe Text
  , templatesTransactionId               :: Maybe Text
  , templatesUseDisclosure               :: Maybe Text
  , templatesVoidedDateTime              :: Maybe Text
  , templatesVoidedReason                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Templates where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templates")
instance ToJSON Templates where
  toJSON = genericToJSON (removeFieldLabelPrefix "templates")

instance Default Templates
