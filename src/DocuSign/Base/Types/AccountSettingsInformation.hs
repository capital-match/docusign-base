module DocuSign.Base.Types.AccountSettingsInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data AccountSettingsInformation = AccountSettingsInformation
  { accountSettingsInformationAccountSettings :: Maybe [NameValue]
  } deriving (Show, Eq, Generic)

instance FromJSON AccountSettingsInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountSettingsInformation")
instance ToJSON AccountSettingsInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountSettingsInformation")

instance Default AccountSettingsInformation
