module DocuSign.Base.Types.Intermediary where

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

data Intermediary = Intermediary
  { intermediaryAccessCode                            :: Maybe Text
  , intermediaryAddAccessCodeToEmail                  :: Maybe Text
  , intermediaryClientUserId                          :: Maybe Text
  , intermediaryCustomFields                          :: Maybe [Text]
  , intermediaryDeclinedDateTime                      :: Maybe Text
  , intermediaryDeclinedReason                        :: Maybe Text
  , intermediaryDeliveredDateTime                     :: Maybe Text
  , intermediaryDeliveryMethod                        :: Maybe Text
  , intermediaryDocumentVisibility                    :: Maybe [DocumentVisibility]
  , intermediaryEmail                                 :: Maybe Text
  , intermediaryEmailNotification                     :: Maybe RecipientEmailNotification
  , intermediaryEmailRecipientPostSigningURL          :: Maybe Text
  , intermediaryEmbeddedRecipientStartURL             :: Maybe Text
  , intermediaryErrorDetails                          :: Maybe ErrorDetails
  , intermediaryExcludedDocuments                     :: Maybe [Text]
  , intermediaryFaxNumber                             :: Maybe Text
  , intermediaryIdCheckConfigurationName              :: Maybe Text
  , intermediaryIdCheckInformationInput               :: Maybe IdCheckInformationInput
  , intermediaryInheritEmailNotificationConfiguration :: Maybe Text
  , intermediaryName                                  :: Maybe Text
  , intermediaryNote                                  :: Maybe Text
  , intermediaryPhoneAuthentication                   :: Maybe RecipientPhoneAuthentication
  , intermediaryRecipientAttachments                  :: Maybe [RecipientAttachment]
  , intermediaryRecipientAuthenticationStatus         :: Maybe AuthenticationStatus
  , intermediaryRecipientId                           :: Maybe Text
  , intermediaryRecipientIdGuid                       :: Maybe Text
  , intermediaryRequireIdLookup                       :: Maybe Text
  , intermediaryRoleName                              :: Maybe Text
  , intermediaryRoutingOrder                          :: Maybe Text
  , intermediarySamlAuthentication                    :: Maybe RecipientSAMLAuthentication
  , intermediarySentDateTime                          :: Maybe Text
  , intermediarySignedDateTime                        :: Maybe Text
  , intermediarySigningGroupId                        :: Maybe Text
  , intermediarySigningGroupName                      :: Maybe Text
  , intermediarySigningGroupUsers                     :: Maybe [UserInfo]
  , intermediarySmsAuthentication                     :: Maybe RecipientSMSAuthentication
  , intermediarySocialAuthentications                 :: Maybe [SocialAuthentication]
  , intermediaryStatus                                :: Maybe Text
  , intermediaryTemplateLocked                        :: Maybe Text
  , intermediaryTemplateRequired                      :: Maybe Text
  , intermediaryTotalTabCount                         :: Maybe Text
  , intermediaryUserId                                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Intermediary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "intermediary")
instance ToJSON Intermediary where
  toJSON = genericToJSON (removeFieldLabelPrefix "intermediary")

instance Default Intermediary
