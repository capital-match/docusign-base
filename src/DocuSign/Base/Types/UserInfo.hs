module DocuSign.Base.Types.UserInfo where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data UserInfo = UserInfo
  { userInfoActivationAccessCode :: Maybe Text
  , userInfoEmail                :: Maybe Text
  , userInfoErrorDetails         :: Maybe ErrorDetails
  , userInfoLoginStatus          :: Maybe Text
  , userInfoSendActivationEmail  :: Maybe Text
  , userInfoUri                  :: Maybe Text
  , userInfoUserId               :: Maybe Text
  , userInfoUserName             :: Maybe Text
  , userInfoUserStatus           :: Maybe Text
  , userInfoUserType             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON UserInfo where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userInfo")
instance ToJSON UserInfo where
  toJSON = genericToJSON (removeFieldLabelPrefix "userInfo")

instance Default UserInfo
