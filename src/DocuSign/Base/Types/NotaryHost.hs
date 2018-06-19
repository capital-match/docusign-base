module DocuSign.Base.Types.NotaryHost where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AuthenticationStatus
import DocuSign.Base.Types.DocumentVisibility
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.IdCheckInformationInput
import DocuSign.Base.Types.PropertyMetadata
import DocuSign.Base.Types.RecipientAttachment
import DocuSign.Base.Types.RecipientEmailNotification
import DocuSign.Base.Types.RecipientPhoneAuthentication
import DocuSign.Base.Types.RecipientSAMLAuthentication
import DocuSign.Base.Types.RecipientSMSAuthentication
import DocuSign.Base.Types.SocialAuthentication

data NotaryHost = NotaryHost
  { notaryHostAccessCode                            :: Maybe Text
  , notaryHostAddAccessCodeToEmail                  :: Maybe Text
  , notaryHostClientUserId                          :: Maybe Text
  , notaryHostCustomFields                          :: Maybe [Text]
  , notaryHostDeclinedDateTime                      :: Maybe Text
  , notaryHostDeclinedReason                        :: Maybe Text
  , notaryHostDeliveredDateTime                     :: Maybe Text
  , notaryHostDeliveryMethod                        :: Maybe Text
  , notaryHostDocumentVisibility                    :: Maybe [DocumentVisibility]
  , notaryHostEmail                                 :: Maybe Text
  , notaryHostEmailNotification                     :: Maybe RecipientEmailNotification
  , notaryHostEmbeddedRecipientStartURL             :: Maybe Text
  , notaryHostErrorDetails                          :: Maybe ErrorDetails
  , notaryHostFaxNumber                             :: Maybe Text
  , notaryHostHostRecipientId                       :: Maybe Text
  , notaryHostIdCheckConfigurationName              :: Maybe Text
  , notaryHostIdCheckInformationInput               :: Maybe IdCheckInformationInput
  , notaryHostInheritEmailNotificationConfiguration :: Maybe Text
  , notaryHostName                                  :: Maybe Text
  , notaryHostNotaryEmailMetadata                   :: Maybe PropertyMetadata
  , notaryHostNotaryNameMetadata                    :: Maybe PropertyMetadata
  , notaryHostNote                                  :: Maybe Text
  , notaryHostPhoneAuthentication                   :: Maybe RecipientPhoneAuthentication
  , notaryHostRecipientAttachments                  :: Maybe [RecipientAttachment]
  , notaryHostRecipientAuthenticationStatus         :: Maybe AuthenticationStatus
  , notaryHostRecipientId                           :: Maybe Text
  , notaryHostRecipientIdGuid                       :: Maybe Text
  , notaryHostRequireIdLookup                       :: Maybe Text
  , notaryHostRoleName                              :: Maybe Text
  , notaryHostRoutingOrder                          :: Maybe Text
  , notaryHostSamlAuthentication                    :: Maybe RecipientSAMLAuthentication
  , notaryHostSentDateTime                          :: Maybe Text
  , notaryHostSignedDateTime                        :: Maybe Text
  , notaryHostSmsAuthentication                     :: Maybe RecipientSMSAuthentication
  , notaryHostSocialAuthentications                 :: Maybe [SocialAuthentication]
  , notaryHostStatus                                :: Maybe Text
  , notaryHostTemplateLocked                        :: Maybe Text
  , notaryHostTemplateRequired                      :: Maybe Text
  , notaryHostTotalTabCount                         :: Maybe Text
  , notaryHostUserId                                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON NotaryHost where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "notaryHost")
instance ToJSON NotaryHost where
  toJSON = genericToJSON (removeFieldLabelPrefix "notaryHost")

instance Default NotaryHost
