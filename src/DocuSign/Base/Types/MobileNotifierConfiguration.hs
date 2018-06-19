module DocuSign.Base.Types.MobileNotifierConfiguration where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data MobileNotifierConfiguration = MobileNotifierConfiguration
  { mobileNotifierConfigurationDeviceId     :: Maybe Text
  , mobileNotifierConfigurationErrorDetails :: Maybe ErrorDetails
  , mobileNotifierConfigurationPlatform     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON MobileNotifierConfiguration where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "mobileNotifierConfiguration")
instance ToJSON MobileNotifierConfiguration where
  toJSON = genericToJSON (removeFieldLabelPrefix "mobileNotifierConfiguration")

instance Default MobileNotifierConfiguration
