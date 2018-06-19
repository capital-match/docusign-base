module DocuSign.Base.Types.Envelopes where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountCustomFields
import DocuSign.Base.Types.EnvelopeEmailSettings
import DocuSign.Base.Types.EnvelopeLocks
import DocuSign.Base.Types.EnvelopeRecipients
import DocuSign.Base.Types.Notification

data Envelopes = Envelopes
  { envelopesAllowMarkup                 :: Maybe Text
  , envelopesAllowReassign               :: Maybe Text
  , envelopesAsynchronous                :: Maybe Text
  , envelopesAttachmentsUri              :: Maybe Text
  , envelopesAuthoritativeCopy           :: Maybe Text
  , envelopesAutoNavigation              :: Maybe Text
  , envelopesBrandId                     :: Maybe Text
  , envelopesBrandLock                   :: Maybe Text
  , envelopesCertificateUri              :: Maybe Text
  , envelopesCompletedDateTime           :: Maybe Text
  , envelopesCreatedDateTime             :: Maybe Text
  , envelopesCustomFields                :: Maybe AccountCustomFields
  , envelopesCustomFieldsUri             :: Maybe Text
  , envelopesDeclinedDateTime            :: Maybe Text
  , envelopesDeletedDateTime             :: Maybe Text
  , envelopesDeliveredDateTime           :: Maybe Text
  , envelopesDocumentsCombinedUri        :: Maybe Text
  , envelopesDocumentsUri                :: Maybe Text
  , envelopesEmailBlurb                  :: Maybe Text
  , envelopesEmailSettings               :: Maybe EnvelopeEmailSettings
  , envelopesEmailSubject                :: Maybe Text
  , envelopesEnableWetSign               :: Maybe Text
  , envelopesEnforceSignerVisibility     :: Maybe Text
  , envelopesEnvelopeId                  :: Maybe Text
  , envelopesEnvelopeIdStamping          :: Maybe Text
  , envelopesEnvelopeUri                 :: Maybe Text
  , envelopesInitialSentDateTime         :: Maybe Text
  , envelopesIs21CFRPart11               :: Maybe Text
  , envelopesIsSignatureProviderEnvelope :: Maybe Text
  , envelopesLastModifiedDateTime        :: Maybe Text
  , envelopesLockInformation             :: Maybe EnvelopeLocks
  , envelopesMessageLock                 :: Maybe Text
  , envelopesNotification                :: Maybe Notification
  , envelopesNotificationUri             :: Maybe Text
  , envelopesPurgeState                  :: Maybe Text
  , envelopesRecipients                  :: Maybe EnvelopeRecipients
  , envelopesRecipientsLock              :: Maybe Text
  , envelopesRecipientsUri               :: Maybe Text
  , envelopesSentDateTime                :: Maybe Text
  , envelopesSigningLocation             :: Maybe Text
  , envelopesStatus                      :: Maybe Text
  , envelopesStatusChangedDateTime       :: Maybe Text
  , envelopesTemplatesUri                :: Maybe Text
  , envelopesTransactionId               :: Maybe Text
  , envelopesUseDisclosure               :: Maybe Text
  , envelopesVoidedDateTime              :: Maybe Text
  , envelopesVoidedReason                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Envelopes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopes")
instance ToJSON Envelopes where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopes")

instance Default Envelopes
