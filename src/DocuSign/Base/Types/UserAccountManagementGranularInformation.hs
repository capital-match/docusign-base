module DocuSign.Base.Types.UserAccountManagementGranularInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.SettingsMetadata

data UserAccountManagementGranularInformation = UserAccountManagementGranularInformation
  { userAccountManagementGranularInformationCanManageAdmins          :: Maybe Text
  , userAccountManagementGranularInformationCanManageAdminsMetadata  :: Maybe SettingsMetadata
  , userAccountManagementGranularInformationCanManageGroups          :: Maybe Text
  , userAccountManagementGranularInformationCanManageGroupsMetadata  :: Maybe SettingsMetadata
  , userAccountManagementGranularInformationCanManageSharing         :: Maybe Text
  , userAccountManagementGranularInformationCanManageSharingMetadata :: Maybe SettingsMetadata
  , userAccountManagementGranularInformationCanManageUsers           :: Maybe Text
  , userAccountManagementGranularInformationCanManageUsersMetadata   :: Maybe SettingsMetadata
  } deriving (Show, Eq, Generic)

instance FromJSON UserAccountManagementGranularInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userAccountManagementGranularInformation")
instance ToJSON UserAccountManagementGranularInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "userAccountManagementGranularInformation")

instance Default UserAccountManagementGranularInformation
