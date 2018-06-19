module DocuSign.Base.Types.CertifiedDelivery where

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

data CertifiedDelivery = CertifiedDelivery
  { certifiedDeliveryAccessCode                            :: Maybe Text
  , certifiedDeliveryAddAccessCodeToEmail                  :: Maybe Text
  , certifiedDeliveryClientUserId                          :: Maybe Text
  , certifiedDeliveryCustomFields                          :: Maybe [Text]
  , certifiedDeliveryDeclinedDateTime                      :: Maybe Text
  , certifiedDeliveryDeclinedReason                        :: Maybe Text
  , certifiedDeliveryDeliveredDateTime                     :: Maybe Text
  , certifiedDeliveryDeliveryMethod                        :: Maybe Text
  , certifiedDeliveryDocumentVisibility                    :: Maybe [DocumentVisibility]
  , certifiedDeliveryEmail                                 :: Maybe Text
  , certifiedDeliveryEmailNotification                     :: Maybe RecipientEmailNotification
  , certifiedDeliveryEmailRecipientPostSigningURL          :: Maybe Text
  , certifiedDeliveryEmbeddedRecipientStartURL             :: Maybe Text
  , certifiedDeliveryErrorDetails                          :: Maybe ErrorDetails
  , certifiedDeliveryExcludedDocuments                     :: Maybe [Text]
  , certifiedDeliveryFaxNumber                             :: Maybe Text
  , certifiedDeliveryIdCheckConfigurationName              :: Maybe Text
  , certifiedDeliveryIdCheckInformationInput               :: Maybe IdCheckInformationInput
  , certifiedDeliveryInheritEmailNotificationConfiguration :: Maybe Text
  , certifiedDeliveryName                                  :: Maybe Text
  , certifiedDeliveryNote                                  :: Maybe Text
  , certifiedDeliveryPhoneAuthentication                   :: Maybe RecipientPhoneAuthentication
  , certifiedDeliveryRecipientAttachments                  :: Maybe [RecipientAttachment]
  , certifiedDeliveryRecipientAuthenticationStatus         :: Maybe AuthenticationStatus
  , certifiedDeliveryRecipientId                           :: Maybe Text
  , certifiedDeliveryRecipientIdGuid                       :: Maybe Text
  , certifiedDeliveryRequireIdLookup                       :: Maybe Text
  , certifiedDeliveryRoleName                              :: Maybe Text
  , certifiedDeliveryRoutingOrder                          :: Maybe Text
  , certifiedDeliverySamlAuthentication                    :: Maybe RecipientSAMLAuthentication
  , certifiedDeliverySentDateTime                          :: Maybe Text
  , certifiedDeliverySignedDateTime                        :: Maybe Text
  , certifiedDeliverySigningGroupId                        :: Maybe Text
  , certifiedDeliverySigningGroupName                      :: Maybe Text
  , certifiedDeliverySigningGroupUsers                     :: Maybe [UserInfo]
  , certifiedDeliverySmsAuthentication                     :: Maybe RecipientSMSAuthentication
  , certifiedDeliverySocialAuthentications                 :: Maybe [SocialAuthentication]
  , certifiedDeliveryStatus                                :: Maybe Text
  , certifiedDeliveryTemplateLocked                        :: Maybe Text
  , certifiedDeliveryTemplateRequired                      :: Maybe Text
  , certifiedDeliveryTotalTabCount                         :: Maybe Text
  , certifiedDeliveryUserId                                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CertifiedDelivery where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "certifiedDelivery")
instance ToJSON CertifiedDelivery where
  toJSON = genericToJSON (removeFieldLabelPrefix "certifiedDelivery")

instance Default CertifiedDelivery
