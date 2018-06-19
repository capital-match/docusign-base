module DocuSign.Base.Types.ENoteConfigurations where

import DocuSign.Base.Types.Common

data ENoteConfigurations = ENoteConfigurations
  { eNoteConfigurationsConnectConfigured :: Maybe Text
  , eNoteConfigurationsENoteConfigured   :: Maybe Text
  , eNoteConfigurationsOrganization      :: Maybe Text
  , eNoteConfigurationsPassword          :: Maybe Text
  , eNoteConfigurationsUserName          :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ENoteConfigurations where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "eNoteConfigurations")
instance ToJSON ENoteConfigurations where
  toJSON = genericToJSON (removeFieldLabelPrefix "eNoteConfigurations")

instance Default ENoteConfigurations
