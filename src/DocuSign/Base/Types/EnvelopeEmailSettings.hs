module DocuSign.Base.Types.EnvelopeEmailSettings where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BccEmailAddress

data EnvelopeEmailSettings = EnvelopeEmailSettings
  { envelopeEmailSettingsBccEmailAddresses         :: Maybe [BccEmailAddress]
  , envelopeEmailSettingsReplyEmailAddressOverride :: Maybe Text
  , envelopeEmailSettingsReplyEmailNameOverride    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeEmailSettings where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeEmailSettings")
instance ToJSON EnvelopeEmailSettings where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeEmailSettings")

instance Default EnvelopeEmailSettings
