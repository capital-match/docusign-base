module DocuSign.Base.Types.NewUser where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data NewUser = NewUser
  { newUserApiPassword           :: Maybe Text
  , newUserCreatedDateTime       :: Maybe Text
  , newUserEmail                 :: Maybe Text
  , newUserErrorDetails          :: Maybe ErrorDetails
  , newUserPermissionProfileId   :: Maybe Text
  , newUserPermissionProfileName :: Maybe Text
  , newUserUri                   :: Maybe Text
  , newUserUserId                :: Maybe Text
  , newUserUserName              :: Maybe Text
  , newUserUserStatus            :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON NewUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "newUser")
instance ToJSON NewUser where
  toJSON = genericToJSON (removeFieldLabelPrefix "newUser")

instance Default NewUser
