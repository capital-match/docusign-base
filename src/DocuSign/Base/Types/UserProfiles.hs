module DocuSign.Base.Types.UserProfiles where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AddressInformationV2
import DocuSign.Base.Types.AuthenticationMethod
import DocuSign.Base.Types.UsageHistory
import DocuSign.Base.Types.Users

data UserProfiles = UserProfiles
  { userProfilesAddress                     :: Maybe AddressInformationV2
  , userProfilesAuthenticationMethods       :: Maybe [AuthenticationMethod]
  , userProfilesCompanyName                 :: Maybe Text
  , userProfilesDisplayOrganizationInfo     :: Maybe Text
  , userProfilesDisplayPersonalInfo         :: Maybe Text
  , userProfilesDisplayProfile              :: Maybe Text
  , userProfilesDisplayUsageHistory         :: Maybe Text
  , userProfilesProfileImageUri             :: Maybe Text
  , userProfilesTitle                       :: Maybe Text
  , userProfilesUsageHistory                :: Maybe UsageHistory
  , userProfilesUserDetails                 :: Maybe Users
  , userProfilesUserProfileLastModifiedDate :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON UserProfiles where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userProfiles")
instance ToJSON UserProfiles where
  toJSON = genericToJSON (removeFieldLabelPrefix "userProfiles")

instance Default UserProfiles
