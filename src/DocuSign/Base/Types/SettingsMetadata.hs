module DocuSign.Base.Types.SettingsMetadata where

import DocuSign.Base.Types.Common

data SettingsMetadata = SettingsMetadata
  { settingsMetadataIs21CFRPart11 :: Maybe Text
  , settingsMetadataOptions       :: Maybe [Text]
  , settingsMetadataRights        :: Maybe Text
  , settingsMetadataUiHint        :: Maybe Text
  , settingsMetadataUiOrder       :: Maybe Text
  , settingsMetadataUiType        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SettingsMetadata where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "settingsMetadata")
instance ToJSON SettingsMetadata where
  toJSON = genericToJSON (removeFieldLabelPrefix "settingsMetadata")

instance Default SettingsMetadata
