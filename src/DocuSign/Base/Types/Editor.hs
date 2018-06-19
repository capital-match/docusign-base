module DocuSign.Base.Types.Editor where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AuthenticationStatus
import DocuSign.Base.Types.DocumentVisibility
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.IdCheckInformationInput
import DocuSign.Base.Types.RecipientAttachment
import DocuSign.Base.Types.RecipientEmailNotification
import DocuSign.Base.Types.RecipientPhoneAuthentication
import DocuSign.Base.Types.RecipientSAMLAuthentication
import DocuSign.Base.Types.RecipientSMSAuthentication
import DocuSign.Base.Types.SocialAuthentication
import DocuSign.Base.Types.UserInfo

data Editor = Editor
  { editorAccessCode                            :: Maybe Text
  , editorAddAccessCodeToEmail                  :: Maybe Text
  , editorClientUserId                          :: Maybe Text
  , editorCustomFields                          :: Maybe [Text]
  , editorDeclinedDateTime                      :: Maybe Text
  , editorDeclinedReason                        :: Maybe Text
  , editorDeliveredDateTime                     :: Maybe Text
  , editorDeliveryMethod                        :: Maybe Text
  , editorDocumentVisibility                    :: Maybe [DocumentVisibility]
  , editorEmail                                 :: Maybe Text
  , editorEmailNotification                     :: Maybe RecipientEmailNotification
  , editorEmailRecipientPostSigningURL          :: Maybe Text
  , editorEmbeddedRecipientStartURL             :: Maybe Text
  , editorErrorDetails                          :: Maybe ErrorDetails
  , editorFaxNumber                             :: Maybe Text
  , editorIdCheckConfigurationName              :: Maybe Text
  , editorIdCheckInformationInput               :: Maybe IdCheckInformationInput
  , editorInheritEmailNotificationConfiguration :: Maybe Text
  , editorName                                  :: Maybe Text
  , editorNote                                  :: Maybe Text
  , editorPhoneAuthentication                   :: Maybe RecipientPhoneAuthentication
  , editorRecipientAttachments                  :: Maybe [RecipientAttachment]
  , editorRecipientAuthenticationStatus         :: Maybe AuthenticationStatus
  , editorRecipientId                           :: Maybe Text
  , editorRecipientIdGuid                       :: Maybe Text
  , editorRequireIdLookup                       :: Maybe Text
  , editorRoleName                              :: Maybe Text
  , editorRoutingOrder                          :: Maybe Text
  , editorSamlAuthentication                    :: Maybe RecipientSAMLAuthentication
  , editorSentDateTime                          :: Maybe Text
  , editorSignedDateTime                        :: Maybe Text
  , editorSigningGroupId                        :: Maybe Text
  , editorSigningGroupName                      :: Maybe Text
  , editorSigningGroupUsers                     :: Maybe [UserInfo]
  , editorSmsAuthentication                     :: Maybe RecipientSMSAuthentication
  , editorSocialAuthentications                 :: Maybe [SocialAuthentication]
  , editorStatus                                :: Maybe Text
  , editorTemplateLocked                        :: Maybe Text
  , editorTemplateRequired                      :: Maybe Text
  , editorTotalTabCount                         :: Maybe Text
  , editorUserId                                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Editor where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "editor")
instance ToJSON Editor where
  toJSON = genericToJSON (removeFieldLabelPrefix "editor")

instance Default Editor
