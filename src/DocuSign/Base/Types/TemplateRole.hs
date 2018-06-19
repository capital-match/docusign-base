module DocuSign.Base.Types.TemplateRole where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EnvelopeRecipientTabs
import DocuSign.Base.Types.RecipientEmailNotification
import DocuSign.Base.Types.RecipientSignatureProvider

data TemplateRole = TemplateRole
  { templateRoleAccessCode                  :: Maybe Text
  , templateRoleClientUserId                :: Maybe Text
  , templateRoleDefaultRecipient            :: Maybe Text
  , templateRoleEmail                       :: Maybe Text
  , templateRoleEmailNotification           :: Maybe RecipientEmailNotification
  , templateRoleEmbeddedRecipientStartURL   :: Maybe Text
  , templateRoleInPersonSignerName          :: Maybe Text
  , templateRoleName                        :: Maybe Text
  , templateRoleRecipientSignatureProviders :: Maybe [RecipientSignatureProvider]
  , templateRoleRoleName                    :: Maybe Text
  , templateRoleRoutingOrder                :: Maybe Text
  , templateRoleSigningGroupId              :: Maybe Text
  , templateRoleTabs                        :: Maybe EnvelopeRecipientTabs
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateRole where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateRole")
instance ToJSON TemplateRole where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateRole")

instance Default TemplateRole
