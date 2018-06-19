module DocuSign.Base.Types.EnvelopeDefinition where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountCustomFields
import DocuSign.Base.Types.Attachment
import DocuSign.Base.Types.CompositeTemplate
import DocuSign.Base.Types.Document
import DocuSign.Base.Types.EnvelopeEmailSettings
import DocuSign.Base.Types.EnvelopeLocks
import DocuSign.Base.Types.EnvelopeRecipients
import DocuSign.Base.Types.EventNotification
import DocuSign.Base.Types.Notification
import DocuSign.Base.Types.TemplateRole

data EnvelopeDefinition = EnvelopeDefinition
  { envelopeDefinitionAccessibility               :: Maybe Text
  , envelopeDefinitionAllowMarkup                 :: Maybe Text
  , envelopeDefinitionAllowReassign               :: Maybe Text
  , envelopeDefinitionAllowRecipientRecursion     :: Maybe Text
  , envelopeDefinitionAsynchronous                :: Maybe Text
  , envelopeDefinitionAttachments                 :: Maybe [Attachment]
  , envelopeDefinitionAttachmentsUri              :: Maybe Text
  , envelopeDefinitionAuthoritativeCopy           :: Maybe Text
  , envelopeDefinitionAutoNavigation              :: Maybe Text
  , envelopeDefinitionBrandId                     :: Maybe Text
  , envelopeDefinitionBrandLock                   :: Maybe Text
  , envelopeDefinitionCertificateUri              :: Maybe Text
  , envelopeDefinitionCompletedDateTime           :: Maybe Text
  , envelopeDefinitionCompositeTemplates          :: Maybe [CompositeTemplate]
  , envelopeDefinitionCreatedDateTime             :: Maybe Text
  , envelopeDefinitionCustomFields                :: Maybe AccountCustomFields
  , envelopeDefinitionCustomFieldsUri             :: Maybe Text
  , envelopeDefinitionDeclinedDateTime            :: Maybe Text
  , envelopeDefinitionDeletedDateTime             :: Maybe Text
  , envelopeDefinitionDeliveredDateTime           :: Maybe Text
  , envelopeDefinitionDocuments                   :: Maybe [Document]
  , envelopeDefinitionDocumentsCombinedUri        :: Maybe Text
  , envelopeDefinitionDocumentsUri                :: Maybe Text
  , envelopeDefinitionEmailBlurb                  :: Maybe Text
  , envelopeDefinitionEmailSettings               :: Maybe EnvelopeEmailSettings
  , envelopeDefinitionEmailSubject                :: Maybe Text
  , envelopeDefinitionEnableWetSign               :: Maybe Text
  , envelopeDefinitionEnforceSignerVisibility     :: Maybe Text
  , envelopeDefinitionEnvelopeId                  :: Maybe Text
  , envelopeDefinitionEnvelopeIdStamping          :: Maybe Text
  , envelopeDefinitionEnvelopeUri                 :: Maybe Text
  , envelopeDefinitionEventNotification           :: Maybe EventNotification
  , envelopeDefinitionInitialSentDateTime         :: Maybe Text
  , envelopeDefinitionIs21CFRPart11               :: Maybe Text
  , envelopeDefinitionIsSignatureProviderEnvelope :: Maybe Text
  , envelopeDefinitionLastModifiedDateTime        :: Maybe Text
  , envelopeDefinitionLockInformation             :: Maybe EnvelopeLocks
  , envelopeDefinitionMessageLock                 :: Maybe Text
  , envelopeDefinitionNotification                :: Maybe Notification
  , envelopeDefinitionNotificationUri             :: Maybe Text
  , envelopeDefinitionPassword                    :: Maybe Text
  , envelopeDefinitionPurgeState                  :: Maybe Text
  , envelopeDefinitionRecipients                  :: Maybe EnvelopeRecipients
  , envelopeDefinitionRecipientsLock              :: Maybe Text
  , envelopeDefinitionRecipientsUri               :: Maybe Text
  , envelopeDefinitionSentDateTime                :: Maybe Text
  , envelopeDefinitionSigningLocation             :: Maybe Text
  , envelopeDefinitionStatus                      :: Maybe Text
  , envelopeDefinitionStatusChangedDateTime       :: Maybe Text
  , envelopeDefinitionTemplateId                  :: Maybe Text
  , envelopeDefinitionTemplateRoles               :: Maybe [TemplateRole]
  , envelopeDefinitionTemplatesUri                :: Maybe Text
  , envelopeDefinitionTransactionId               :: Maybe Text
  , envelopeDefinitionUseDisclosure               :: Maybe Text
  , envelopeDefinitionVoidedDateTime              :: Maybe Text
  , envelopeDefinitionVoidedReason                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeDefinition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeDefinition")
instance ToJSON EnvelopeDefinition where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeDefinition")

instance Default EnvelopeDefinition
