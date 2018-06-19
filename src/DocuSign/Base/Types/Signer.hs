module DocuSign.Base.Types.Signer where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AuthenticationStatus
import DocuSign.Base.Types.DocumentVisibility
import DocuSign.Base.Types.EnvelopeRecipientTabs
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.IdCheckInformationInput
import DocuSign.Base.Types.RecipientAttachment
import DocuSign.Base.Types.RecipientEmailNotification
import DocuSign.Base.Types.RecipientPhoneAuthentication
import DocuSign.Base.Types.RecipientSAMLAuthentication
import DocuSign.Base.Types.RecipientSignatureInformation
import DocuSign.Base.Types.RecipientSignatureProvider
import DocuSign.Base.Types.RecipientSMSAuthentication
import DocuSign.Base.Types.SocialAuthentication
import DocuSign.Base.Types.UserInfo

data Signer = Signer
  { signerAccessCode                            :: Maybe Text
  , signerAddAccessCodeToEmail                  :: Maybe Text
  , signerAutoNavigation                        :: Maybe Text
  , signerBulkRecipientsUri                     :: Maybe Text
  , signerCanSignOffline                        :: Maybe Text
  , signerClientUserId                          :: Maybe Text
  , signerCreationReason                        :: Maybe Text
  , signerCustomFields                          :: Maybe [Text]
  , signerDeclinedDateTime                      :: Maybe Text
  , signerDeclinedReason                        :: Maybe Text
  , signerDefaultRecipient                      :: Maybe Text
  , signerDeliveredDateTime                     :: Maybe Text
  , signerDeliveryMethod                        :: Maybe Text
  , signerDocumentVisibility                    :: Maybe [DocumentVisibility]
  , signerEmail                                 :: Maybe Text
  , signerEmailNotification                     :: Maybe RecipientEmailNotification
  , signerEmailRecipientPostSigningURL          :: Maybe Text
  , signerEmbeddedRecipientStartURL             :: Maybe Text
  , signerErrorDetails                          :: Maybe ErrorDetails
  , signerExcludedDocuments                     :: Maybe [Text]
  , signerFaxNumber                             :: Maybe Text
  , signerIdCheckConfigurationName              :: Maybe Text
  , signerIdCheckInformationInput               :: Maybe IdCheckInformationInput
  , signerInheritEmailNotificationConfiguration :: Maybe Text
  , signerIsBulkRecipient                       :: Maybe Text
  , signerName                                  :: Maybe Text
  , signerNote                                  :: Maybe Text
  , signerPhoneAuthentication                   :: Maybe RecipientPhoneAuthentication
  , signerRecipientAttachments                  :: Maybe [RecipientAttachment]
  , signerRecipientAuthenticationStatus         :: Maybe AuthenticationStatus
  , signerRecipientId                           :: Maybe Text
  , signerRecipientIdGuid                       :: Maybe Text
  , signerRecipientSignatureProviders           :: Maybe [RecipientSignatureProvider]
  , signerRecipientSuppliesTabs                 :: Maybe Text
  , signerRequireIdLookup                       :: Maybe Text
  , signerRequireSignerCertificate              :: Maybe Text
  , signerRequireSignOnPaper                    :: Maybe Text
  , signerRoleName                              :: Maybe Text
  , signerRoutingOrder                          :: Maybe Text
  , signerSamlAuthentication                    :: Maybe RecipientSAMLAuthentication
  , signerSentDateTime                          :: Maybe Text
  , signerSignatureInfo                         :: Maybe RecipientSignatureInformation
  , signerSignedDateTime                        :: Maybe Text
  , signerSignInEachLocation                    :: Maybe Text
  , signerSigningGroupId                        :: Maybe Text
  , signerSigningGroupName                      :: Maybe Text
  , signerSigningGroupUsers                     :: Maybe [UserInfo]
  , signerSmsAuthentication                     :: Maybe RecipientSMSAuthentication
  , signerSocialAuthentications                 :: Maybe [SocialAuthentication]
  , signerStatus                                :: Maybe Text
  , signerTabs                                  :: Maybe EnvelopeRecipientTabs
  , signerTemplateLocked                        :: Maybe Text
  , signerTemplateRequired                      :: Maybe Text
  , signerTotalTabCount                         :: Maybe Text
  , signerUserId                                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Signer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signer")
instance ToJSON Signer where
  toJSON = genericToJSON (removeFieldLabelPrefix "signer")

instance Default Signer
