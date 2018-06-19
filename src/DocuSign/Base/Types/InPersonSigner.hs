module DocuSign.Base.Types.InPersonSigner where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AuthenticationStatus
import DocuSign.Base.Types.DocumentVisibility
import DocuSign.Base.Types.EnvelopeRecipientTabs
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.IdCheckInformationInput
import DocuSign.Base.Types.NotaryHost
import DocuSign.Base.Types.RecipientAttachment
import DocuSign.Base.Types.RecipientEmailNotification
import DocuSign.Base.Types.RecipientPhoneAuthentication
import DocuSign.Base.Types.RecipientSAMLAuthentication
import DocuSign.Base.Types.RecipientSignatureInformation
import DocuSign.Base.Types.RecipientSignatureProvider
import DocuSign.Base.Types.RecipientSMSAuthentication
import DocuSign.Base.Types.SocialAuthentication
import DocuSign.Base.Types.UserInfo

data InPersonSigner = InPersonSigner
  { inPersonSignerAccessCode                            :: Maybe Text
  , inPersonSignerAddAccessCodeToEmail                  :: Maybe Text
  , inPersonSignerAutoNavigation                        :: Maybe Text
  , inPersonSignerCanSignOffline                        :: Maybe Text
  , inPersonSignerClientUserId                          :: Maybe Text
  , inPersonSignerCreationReason                        :: Maybe Text
  , inPersonSignerCustomFields                          :: Maybe [Text]
  , inPersonSignerDeclinedDateTime                      :: Maybe Text
  , inPersonSignerDeclinedReason                        :: Maybe Text
  , inPersonSignerDefaultRecipient                      :: Maybe Text
  , inPersonSignerDeliveredDateTime                     :: Maybe Text
  , inPersonSignerDeliveryMethod                        :: Maybe Text
  , inPersonSignerDocumentVisibility                    :: Maybe [DocumentVisibility]
  , inPersonSignerEmail                                 :: Maybe Text
  , inPersonSignerEmailNotification                     :: Maybe RecipientEmailNotification
  , inPersonSignerEmbeddedRecipientStartURL             :: Maybe Text
  , inPersonSignerErrorDetails                          :: Maybe ErrorDetails
  , inPersonSignerFaxNumber                             :: Maybe Text
  , inPersonSignerHostEmail                             :: Maybe Text
  , inPersonSignerHostName                              :: Maybe Text
  , inPersonSignerIdCheckConfigurationName              :: Maybe Text
  , inPersonSignerIdCheckInformationInput               :: Maybe IdCheckInformationInput
  , inPersonSignerInheritEmailNotificationConfiguration :: Maybe Text
  , inPersonSignerInPersonSigningType                   :: Maybe Text
  , inPersonSignerName                                  :: Maybe Text
  , inPersonSignerNotaryHost                            :: Maybe NotaryHost
  , inPersonSignerNote                                  :: Maybe Text
  , inPersonSignerPhoneAuthentication                   :: Maybe RecipientPhoneAuthentication
  , inPersonSignerRecipientAttachments                  :: Maybe [RecipientAttachment]
  , inPersonSignerRecipientAuthenticationStatus         :: Maybe AuthenticationStatus
  , inPersonSignerRecipientId                           :: Maybe Text
  , inPersonSignerRecipientIdGuid                       :: Maybe Text
  , inPersonSignerRecipientSignatureProviders           :: Maybe [RecipientSignatureProvider]
  , inPersonSignerRecipientSuppliesTabs                 :: Maybe Text
  , inPersonSignerRequireIdLookup                       :: Maybe Text
  , inPersonSignerRequireSignerCertificate              :: Maybe Text
  , inPersonSignerRequireSignOnPaper                    :: Maybe Text
  , inPersonSignerRoleName                              :: Maybe Text
  , inPersonSignerRoutingOrder                          :: Maybe Text
  , inPersonSignerSamlAuthentication                    :: Maybe RecipientSAMLAuthentication
  , inPersonSignerSentDateTime                          :: Maybe Text
  , inPersonSignerSignatureInfo                         :: Maybe RecipientSignatureInformation
  , inPersonSignerSignedDateTime                        :: Maybe Text
  , inPersonSignerSignerEmail                           :: Maybe Text
  , inPersonSignerSignerName                            :: Maybe Text
  , inPersonSignerSignInEachLocation                    :: Maybe Text
  , inPersonSignerSigningGroupId                        :: Maybe Text
  , inPersonSignerSigningGroupName                      :: Maybe Text
  , inPersonSignerSigningGroupUsers                     :: Maybe [UserInfo]
  , inPersonSignerSmsAuthentication                     :: Maybe RecipientSMSAuthentication
  , inPersonSignerSocialAuthentications                 :: Maybe [SocialAuthentication]
  , inPersonSignerStatus                                :: Maybe Text
  , inPersonSignerTabs                                  :: Maybe EnvelopeRecipientTabs
  , inPersonSignerTemplateLocked                        :: Maybe Text
  , inPersonSignerTemplateRequired                      :: Maybe Text
  , inPersonSignerTotalTabCount                         :: Maybe Text
  , inPersonSignerUserId                                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON InPersonSigner where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "inPersonSigner")
instance ToJSON InPersonSigner where
  toJSON = genericToJSON (removeFieldLabelPrefix "inPersonSigner")

instance Default InPersonSigner
