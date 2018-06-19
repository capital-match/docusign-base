module DocuSign.Base.Types.Agent where

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

data Agent = Agent
  { agentAccessCode                            :: Maybe Text
  , agentAddAccessCodeToEmail                  :: Maybe Text
  , agentClientUserId                          :: Maybe Text
  , agentCustomFields                          :: Maybe [Text]
  , agentDeclinedDateTime                      :: Maybe Text
  , agentDeclinedReason                        :: Maybe Text
  , agentDeliveredDateTime                     :: Maybe Text
  , agentDeliveryMethod                        :: Maybe Text
  , agentDocumentVisibility                    :: Maybe [DocumentVisibility]
  , agentEmail                                 :: Maybe Text
  , agentEmailNotification                     :: Maybe RecipientEmailNotification
  , agentEmailRecipientPostSigningURL          :: Maybe Text
  , agentEmbeddedRecipientStartURL             :: Maybe Text
  , agentErrorDetails                          :: Maybe ErrorDetails
  , agentExcludedDocuments                     :: Maybe [Text]
  , agentFaxNumber                             :: Maybe Text
  , agentIdCheckConfigurationName              :: Maybe Text
  , agentIdCheckInformationInput               :: Maybe IdCheckInformationInput
  , agentInheritEmailNotificationConfiguration :: Maybe Text
  , agentName                                  :: Maybe Text
  , agentNote                                  :: Maybe Text
  , agentPhoneAuthentication                   :: Maybe RecipientPhoneAuthentication
  , agentRecipientAttachments                  :: Maybe [RecipientAttachment]
  , agentRecipientAuthenticationStatus         :: Maybe AuthenticationStatus
  , agentRecipientId                           :: Maybe Text
  , agentRecipientIdGuid                       :: Maybe Text
  , agentRequireIdLookup                       :: Maybe Text
  , agentRoleName                              :: Maybe Text
  , agentRoutingOrder                          :: Maybe Text
  , agentSamlAuthentication                    :: Maybe RecipientSAMLAuthentication
  , agentSentDateTime                          :: Maybe Text
  , agentSignedDateTime                        :: Maybe Text
  , agentSigningGroupId                        :: Maybe Text
  , agentSigningGroupName                      :: Maybe Text
  , agentSigningGroupUsers                     :: Maybe [UserInfo]
  , agentSmsAuthentication                     :: Maybe RecipientSMSAuthentication
  , agentSocialAuthentications                 :: Maybe [SocialAuthentication]
  , agentStatus                                :: Maybe Text
  , agentTemplateLocked                        :: Maybe Text
  , agentTemplateRequired                      :: Maybe Text
  , agentTotalTabCount                         :: Maybe Text
  , agentUserId                                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Agent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "agent")
instance ToJSON Agent where
  toJSON = genericToJSON (removeFieldLabelPrefix "agent")

instance Default Agent
