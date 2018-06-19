module DocuSign.Base.Types.AccountRoleSettings where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.SettingsMetadata

data AccountRoleSettings = AccountRoleSettings
  { accountRoleSettingsAllowAccountManagement                                  :: Maybe Text
  , accountRoleSettingsAllowAccountManagementMetadata                          :: Maybe SettingsMetadata
  , accountRoleSettingsAllowApiAccess                                          :: Maybe Text
  , accountRoleSettingsAllowApiAccessMetadata                                  :: Maybe SettingsMetadata
  , accountRoleSettingsAllowApiAccessToAccount                                 :: Maybe Text
  , accountRoleSettingsAllowApiAccessToAccountMetadata                         :: Maybe SettingsMetadata
  , accountRoleSettingsAllowApiSendingOnBehalfOfOthers                         :: Maybe Text
  , accountRoleSettingsAllowApiSendingOnBehalfOfOthersMetadata                 :: Maybe SettingsMetadata
  , accountRoleSettingsAllowApiSequentialSigning                               :: Maybe Text
  , accountRoleSettingsAllowApiSequentialSigningMetadata                       :: Maybe SettingsMetadata
  , accountRoleSettingsAllowBulkSending                                        :: Maybe Text
  , accountRoleSettingsAllowBulkSendingMetadata                                :: Maybe SettingsMetadata
  , accountRoleSettingsAllowDocuSignDesktopClient                              :: Maybe Text
  , accountRoleSettingsAllowDocuSignDesktopClientMetadata                      :: Maybe SettingsMetadata
  , accountRoleSettingsAllowedAddressBookAccess                                :: Maybe Text
  , accountRoleSettingsAllowedAddressBookAccessMetadata                        :: Maybe SettingsMetadata
  , accountRoleSettingsAllowedTemplateAccess                                   :: Maybe Text
  , accountRoleSettingsAllowedTemplateAccessMetadata                           :: Maybe SettingsMetadata
  , accountRoleSettingsAllowedToBeEnvelopeTransferRecipient                    :: Maybe Text
  , accountRoleSettingsAllowedToBeEnvelopeTransferRecipientMetadata            :: Maybe SettingsMetadata
  , accountRoleSettingsAllowEnvelopeSending                                    :: Maybe Text
  , accountRoleSettingsAllowEnvelopeSendingMetadata                            :: Maybe SettingsMetadata
  , accountRoleSettingsAllowSendersToSetRecipientEmailLanguage                 :: Maybe Text
  , accountRoleSettingsAllowSendersToSetRecipientEmailLanguageMetadata         :: Maybe SettingsMetadata
  , accountRoleSettingsAllowSignerAttachments                                  :: Maybe Text
  , accountRoleSettingsAllowSignerAttachmentsMetadata                          :: Maybe SettingsMetadata
  , accountRoleSettingsAllowSupplementalDocuments                              :: Maybe Text
  , accountRoleSettingsAllowSupplementalDocumentsMetadata                      :: Maybe SettingsMetadata
  , accountRoleSettingsAllowTaggingInSendAndCorrect                            :: Maybe Text
  , accountRoleSettingsAllowTaggingInSendAndCorrectMetadata                    :: Maybe SettingsMetadata
  , accountRoleSettingsAllowVaulting                                           :: Maybe Text
  , accountRoleSettingsAllowVaultingMetadata                                   :: Maybe SettingsMetadata
  , accountRoleSettingsAllowWetSigningOverride                                 :: Maybe Text
  , accountRoleSettingsAllowWetSigningOverrideMetadata                         :: Maybe SettingsMetadata
  , accountRoleSettingsCanCreateWorkspaces                                     :: Maybe Text
  , accountRoleSettingsCanCreateWorkspacesMetadata                             :: Maybe SettingsMetadata
  , accountRoleSettingsDisableDocumentUpload                                   :: Maybe Text
  , accountRoleSettingsDisableDocumentUploadMetadata                           :: Maybe SettingsMetadata
  , accountRoleSettingsDisableOtherActions                                     :: Maybe Text
  , accountRoleSettingsDisableOtherActionsMetadata                             :: Maybe SettingsMetadata
  , accountRoleSettingsEnableApiRequestLogging                                 :: Maybe Text
  , accountRoleSettingsEnableApiRequestLoggingMetadata                         :: Maybe SettingsMetadata
  , accountRoleSettingsEnableRecipientViewingNotifications                     :: Maybe Text
  , accountRoleSettingsEnableRecipientViewingNotificationsMetadata             :: Maybe SettingsMetadata
  , accountRoleSettingsEnableSequentialSigningInterface                        :: Maybe Text
  , accountRoleSettingsEnableSequentialSigningInterfaceMetadata                :: Maybe SettingsMetadata
  , accountRoleSettingsEnableTransactionPointIntegration                       :: Maybe Text
  , accountRoleSettingsEnableTransactionPointIntegrationMetadata               :: Maybe SettingsMetadata
  , accountRoleSettingsPowerFormRole                                           :: Maybe Text
  , accountRoleSettingsPowerFormRoleMetadata                                   :: Maybe SettingsMetadata
  , accountRoleSettingsReceiveCompletedSelfSignedDocumentsAsEmailLinks         :: Maybe Text
  , accountRoleSettingsReceiveCompletedSelfSignedDocumentsAsEmailLinksMetadata :: Maybe SettingsMetadata
  , accountRoleSettingsSupplementalDocumentsMustAccept                         :: Maybe Text
  , accountRoleSettingsSupplementalDocumentsMustAcceptMetadata                 :: Maybe SettingsMetadata
  , accountRoleSettingsSupplementalDocumentsMustRead                           :: Maybe Text
  , accountRoleSettingsSupplementalDocumentsMustReadMetadata                   :: Maybe SettingsMetadata
  , accountRoleSettingsSupplementalDocumentsMustView                           :: Maybe Text
  , accountRoleSettingsSupplementalDocumentsMustViewMetadata                   :: Maybe SettingsMetadata
  , accountRoleSettingsUseNewDocuSignExperienceInterface                       :: Maybe Text
  , accountRoleSettingsUseNewDocuSignExperienceInterfaceMetadata               :: Maybe SettingsMetadata
  , accountRoleSettingsUseNewSendingInterface                                  :: Maybe Text
  , accountRoleSettingsUseNewSendingInterfaceMetadata                          :: Maybe SettingsMetadata
  , accountRoleSettingsVaultingMode                                            :: Maybe Text
  , accountRoleSettingsVaultingModeMetadata                                    :: Maybe SettingsMetadata
  } deriving (Show, Eq, Generic)

instance FromJSON AccountRoleSettings where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountRoleSettings")
instance ToJSON AccountRoleSettings where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountRoleSettings")

instance Default AccountRoleSettings
