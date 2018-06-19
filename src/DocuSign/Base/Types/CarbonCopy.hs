module DocuSign.Base.Types.CarbonCopy where

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

data CarbonCopy = CarbonCopy
  { carbonCopyAccessCode                            :: Maybe Text
  , carbonCopyAddAccessCodeToEmail                  :: Maybe Text
  , carbonCopyClientUserId                          :: Maybe Text
  , carbonCopyCustomFields                          :: Maybe [Text]
  , carbonCopyDeclinedDateTime                      :: Maybe Text
  , carbonCopyDeclinedReason                        :: Maybe Text
  , carbonCopyDeliveredDateTime                     :: Maybe Text
  , carbonCopyDeliveryMethod                        :: Maybe Text
  , carbonCopyDocumentVisibility                    :: Maybe [DocumentVisibility]
  , carbonCopyEmail                                 :: Maybe Text
  , carbonCopyEmailNotification                     :: Maybe RecipientEmailNotification
  , carbonCopyEmailRecipientPostSigningURL          :: Maybe Text
  , carbonCopyEmbeddedRecipientStartURL             :: Maybe Text
  , carbonCopyErrorDetails                          :: Maybe ErrorDetails
  , carbonCopyExcludedDocuments                     :: Maybe [Text]
  , carbonCopyFaxNumber                             :: Maybe Text
  , carbonCopyIdCheckConfigurationName              :: Maybe Text
  , carbonCopyIdCheckInformationInput               :: Maybe IdCheckInformationInput
  , carbonCopyInheritEmailNotificationConfiguration :: Maybe Text
  , carbonCopyName                                  :: Maybe Text
  , carbonCopyNote                                  :: Maybe Text
  , carbonCopyPhoneAuthentication                   :: Maybe RecipientPhoneAuthentication
  , carbonCopyRecipientAttachments                  :: Maybe [RecipientAttachment]
  , carbonCopyRecipientAuthenticationStatus         :: Maybe AuthenticationStatus
  , carbonCopyRecipientId                           :: Maybe Text
  , carbonCopyRecipientIdGuid                       :: Maybe Text
  , carbonCopyRequireIdLookup                       :: Maybe Text
  , carbonCopyRoleName                              :: Maybe Text
  , carbonCopyRoutingOrder                          :: Maybe Text
  , carbonCopySamlAuthentication                    :: Maybe RecipientSAMLAuthentication
  , carbonCopySentDateTime                          :: Maybe Text
  , carbonCopySignedDateTime                        :: Maybe Text
  , carbonCopySigningGroupId                        :: Maybe Text
  , carbonCopySigningGroupName                      :: Maybe Text
  , carbonCopySigningGroupUsers                     :: Maybe [UserInfo]
  , carbonCopySmsAuthentication                     :: Maybe RecipientSMSAuthentication
  , carbonCopySocialAuthentications                 :: Maybe [SocialAuthentication]
  , carbonCopyStatus                                :: Maybe Text
  , carbonCopyTemplateLocked                        :: Maybe Text
  , carbonCopyTemplateRequired                      :: Maybe Text
  , carbonCopyTotalTabCount                         :: Maybe Text
  , carbonCopyUserId                                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CarbonCopy where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "carbonCopy")
instance ToJSON CarbonCopy where
  toJSON = genericToJSON (removeFieldLabelPrefix "carbonCopy")

instance Default CarbonCopy
