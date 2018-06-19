module DocuSign.Base.Types.PowerFormRecipient where

import DocuSign.Base.Types.Common

data PowerFormRecipient = PowerFormRecipient
  { powerFormRecipientAccessCode               :: Maybe Text
  , powerFormRecipientAccessCodeLocked         :: Maybe Text
  , powerFormRecipientAccessCodeRequired       :: Maybe Text
  , powerFormRecipientEmail                    :: Maybe Text
  , powerFormRecipientEmailLocked              :: Maybe Text
  , powerFormRecipientIdCheckConfigurationName :: Maybe Text
  , powerFormRecipientIdCheckRequired          :: Maybe Text
  , powerFormRecipientName                     :: Maybe Text
  , powerFormRecipientRecipientType            :: Maybe Text
  , powerFormRecipientRoleName                 :: Maybe Text
  , powerFormRecipientRoutingOrder             :: Maybe Text
  , powerFormRecipientTemplateRequiresIdLookup :: Maybe Text
  , powerFormRecipientUserNameLocked           :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PowerFormRecipient where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "powerFormRecipient")
instance ToJSON PowerFormRecipient where
  toJSON = genericToJSON (removeFieldLabelPrefix "powerFormRecipient")

instance Default PowerFormRecipient
