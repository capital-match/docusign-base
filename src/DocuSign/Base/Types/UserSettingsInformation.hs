module DocuSign.Base.Types.UserSettingsInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue
import DocuSign.Base.Types.SenderEmailNotifications
import DocuSign.Base.Types.SignerEmailNotifications
import DocuSign.Base.Types.UserAccountManagementGranularInformation

data UserSettingsInformation = UserSettingsInformation
  { userSettingsInformationAccountManagementGranular :: Maybe UserAccountManagementGranularInformation
  , userSettingsInformationSenderEmailNotifications  :: Maybe SenderEmailNotifications
  , userSettingsInformationSignerEmailNotifications  :: Maybe SignerEmailNotifications
  , userSettingsInformationUserSettings              :: Maybe [NameValue]
  } deriving (Show, Eq, Generic)

instance FromJSON UserSettingsInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userSettingsInformation")
instance ToJSON UserSettingsInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "userSettingsInformation")

instance Default UserSettingsInformation
