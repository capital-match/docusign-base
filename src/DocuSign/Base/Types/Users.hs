module DocuSign.Base.Types.Users where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AddressInformationV2
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.ForgottenPasswordInformation
import DocuSign.Base.Types.Group
import DocuSign.Base.Types.NameValue
import DocuSign.Base.Types.UserAccountManagementGranularInformation

data Users = Users
  { usersAccountManagementGranular    :: Maybe UserAccountManagementGranularInformation
  , usersActivationAccessCode         :: Maybe Text
  , usersCreatedDateTime              :: Maybe Text
  , usersCustomSettings               :: Maybe [NameValue]
  , usersEmail                        :: Maybe Text
  , usersEnableConnectForUser         :: Maybe Text
  , usersErrorDetails                 :: Maybe ErrorDetails
  , usersFirstName                    :: Maybe Text
  , usersForgottenPasswordInfo        :: Maybe ForgottenPasswordInformation
  , usersGroupList                    :: Maybe [Group]
  , usersHomeAddress                  :: Maybe AddressInformationV2
  , usersInitialsImageUri             :: Maybe Text
  , usersIsAdmin                      :: Maybe Text
  , usersLastLogin                    :: Maybe Text
  , usersLastName                     :: Maybe Text
  , usersLoginStatus                  :: Maybe Text
  , usersMiddleName                   :: Maybe Text
  , usersPassword                     :: Maybe Text
  , usersPasswordExpiration           :: Maybe Text
  , usersPermissionProfileId          :: Maybe Text
  , usersPermissionProfileName        :: Maybe Text
  , usersProfileImageUri              :: Maybe Text
  , usersSendActivationOnInvalidLogin :: Maybe Text
  , usersSignatureImageUri            :: Maybe Text
  , usersSuffixName                   :: Maybe Text
  , usersTitle                        :: Maybe Text
  , usersUri                          :: Maybe Text
  , usersUserId                       :: Maybe Text
  , usersUserName                     :: Maybe Text
  , usersUserProfileLastModifiedDate  :: Maybe Text
  , usersUserSettings                 :: Maybe [NameValue]
  , usersUserStatus                   :: Maybe Text
  , usersUserType                     :: Maybe Text
  , usersWorkAddress                  :: Maybe AddressInformationV2
  } deriving (Show, Eq, Generic)

instance FromJSON Users where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "users")
instance ToJSON Users where
  toJSON = genericToJSON (removeFieldLabelPrefix "users")

instance Default Users
