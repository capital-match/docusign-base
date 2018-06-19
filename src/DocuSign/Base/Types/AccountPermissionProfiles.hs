module DocuSign.Base.Types.AccountPermissionProfiles where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountRoleSettings
import DocuSign.Base.Types.Users

data AccountPermissionProfiles = AccountPermissionProfiles
  { accountPermissionProfilesModifiedByUsername    :: Maybe Text
  , accountPermissionProfilesModifiedDateTime      :: Maybe Text
  , accountPermissionProfilesPermissionProfileId   :: Maybe Text
  , accountPermissionProfilesPermissionProfileName :: Maybe Text
  , accountPermissionProfilesSettings              :: Maybe AccountRoleSettings
  , accountPermissionProfilesUserCount             :: Maybe Text
  , accountPermissionProfilesUsers                 :: Maybe [Users]
  } deriving (Show, Eq, Generic)

instance FromJSON AccountPermissionProfiles where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountPermissionProfiles")
instance ToJSON AccountPermissionProfiles where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountPermissionProfiles")

instance Default AccountPermissionProfiles
