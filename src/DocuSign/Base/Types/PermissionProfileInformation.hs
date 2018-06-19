module DocuSign.Base.Types.PermissionProfileInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AccountPermissionProfiles

data PermissionProfileInformation = PermissionProfileInformation
  { permissionProfileInformationPermissionProfiles :: Maybe [AccountPermissionProfiles]
  } deriving (Show, Eq, Generic)

instance FromJSON PermissionProfileInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "permissionProfileInformation")
instance ToJSON PermissionProfileInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "permissionProfileInformation")

instance Default PermissionProfileInformation
