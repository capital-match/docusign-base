module DocuSign.Base.Types.UserCustomSettings where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data UserCustomSettings = UserCustomSettings
  { userCustomSettingsCustomSettings :: Maybe [NameValue]
  } deriving (Show, Eq, Generic)

instance FromJSON UserCustomSettings where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userCustomSettings")
instance ToJSON UserCustomSettings where
  toJSON = genericToJSON (removeFieldLabelPrefix "userCustomSettings")

instance Default UserCustomSettings
