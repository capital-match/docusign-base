module DocuSign.Base.Types.EnvelopeTemplateResult where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountCustomFields
import DocuSign.Base.Types.Document
import DocuSign.Base.Types.EnvelopeEmailSettings
import DocuSign.Base.Types.EnvelopeLocks
import DocuSign.Base.Types.EnvelopeRecipients
import DocuSign.Base.Types.Notification
import DocuSign.Base.Types.UserInfo

data EnvelopeTemplateResult = EnvelopeTemplateResult
  { envelopeTemplateResultAllowMarkup                 :: Maybe Text
  , envelopeTemplateResultAllowReassign               :: Maybe Text
  , envelopeTemplateResultAsynchronous                :: Maybe Text
  , envelopeTemplateResultAttachmentsUri              :: Maybe Text
  , envelopeTemplateResultAuthoritativeCopy           :: Maybe Text
  , envelopeTemplateResultAutoNavigation              :: Maybe Text
  , envelopeTemplateResultBrandId                     :: Maybe Text
  , envelopeTemplateResultBrandLock                   :: Maybe Text
  , envelopeTemplateResultCertificateUri              :: Maybe Text
  , envelopeTemplateResultCompletedDateTime           :: Maybe Text
  , envelopeTemplateResultCreatedDateTime             :: Maybe Text
  , envelopeTemplateResultCustomFields                :: Maybe AccountCustomFields
  , envelopeTemplateResultCustomFieldsUri             :: Maybe Text
  , envelopeTemplateResultDeclinedDateTime            :: Maybe Text
  , envelopeTemplateResultDeletedDateTime             :: Maybe Text
  , envelopeTemplateResultDeliveredDateTime           :: Maybe Text
  , envelopeTemplateResultDescription                 :: Maybe Text
  , envelopeTemplateResultDocuments                   :: Maybe [Document]
  , envelopeTemplateResultDocumentsCombinedUri        :: Maybe Text
  , envelopeTemplateResultDocumentsUri                :: Maybe Text
  , envelopeTemplateResultEmailBlurb                  :: Maybe Text
  , envelopeTemplateResultEmailSettings               :: Maybe EnvelopeEmailSettings
  , envelopeTemplateResultEmailSubject                :: Maybe Text
  , envelopeTemplateResultEnableWetSign               :: Maybe Text
  , envelopeTemplateResultEnforceSignerVisibility     :: Maybe Text
  , envelopeTemplateResultEnvelopeId                  :: Maybe Text
  , envelopeTemplateResultEnvelopeIdStamping          :: Maybe Text
  , envelopeTemplateResultEnvelopeUri                 :: Maybe Text
  , envelopeTemplateResultFolderId                    :: Maybe Text
  , envelopeTemplateResultFolderName                  :: Maybe Text
  , envelopeTemplateResultFolderUri                   :: Maybe Text
  , envelopeTemplateResultInitialSentDateTime         :: Maybe Text
  , envelopeTemplateResultIs21CFRPart11               :: Maybe Text
  , envelopeTemplateResultIsSignatureProviderEnvelope :: Maybe Text
  , envelopeTemplateResultLastModified                :: Maybe Text
  , envelopeTemplateResultLastModifiedDateTime        :: Maybe Text
  , envelopeTemplateResultLockInformation             :: Maybe EnvelopeLocks
  , envelopeTemplateResultMessageLock                 :: Maybe Text
  , envelopeTemplateResultName                        :: Maybe Text
  , envelopeTemplateResultNotification                :: Maybe Notification
  , envelopeTemplateResultNotificationUri             :: Maybe Text
  , envelopeTemplateResultOwner                       :: Maybe UserInfo
  , envelopeTemplateResultPageCount                   :: Maybe Int
  , envelopeTemplateResultParentFolderUri             :: Maybe Text
  , envelopeTemplateResultPassword                    :: Maybe Text
  , envelopeTemplateResultPurgeState                  :: Maybe Text
  , envelopeTemplateResultRecipients                  :: Maybe EnvelopeRecipients
  , envelopeTemplateResultRecipientsLock              :: Maybe Text
  , envelopeTemplateResultRecipientsUri               :: Maybe Text
  , envelopeTemplateResultSentDateTime                :: Maybe Text
  , envelopeTemplateResultShared                      :: Maybe Text
  , envelopeTemplateResultSigningLocation             :: Maybe Text
  , envelopeTemplateResultStatus                      :: Maybe Text
  , envelopeTemplateResultStatusChangedDateTime       :: Maybe Text
  , envelopeTemplateResultTemplateId                  :: Maybe Text
  , envelopeTemplateResultTemplatesUri                :: Maybe Text
  , envelopeTemplateResultTransactionId               :: Maybe Text
  , envelopeTemplateResultUri                         :: Maybe Text
  , envelopeTemplateResultUseDisclosure               :: Maybe Text
  , envelopeTemplateResultVoidedDateTime              :: Maybe Text
  , envelopeTemplateResultVoidedReason                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeTemplateResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeTemplateResult")
instance ToJSON EnvelopeTemplateResult where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeTemplateResult")

instance Default EnvelopeTemplateResult
