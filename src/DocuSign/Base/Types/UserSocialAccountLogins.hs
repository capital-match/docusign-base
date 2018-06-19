module DocuSign.Base.Types.UserSocialAccountLogins where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data UserSocialAccountLogins = UserSocialAccountLogins
  { userSocialAccountLoginsEmail        :: Maybe Text
  , userSocialAccountLoginsErrorDetails :: Maybe ErrorDetails
  , userSocialAccountLoginsProvider     :: Maybe Text
  , userSocialAccountLoginsSocialId     :: Maybe Text
  , userSocialAccountLoginsUserName     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON UserSocialAccountLogins where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userSocialAccountLogins")
instance ToJSON UserSocialAccountLogins where
  toJSON = genericToJSON (removeFieldLabelPrefix "userSocialAccountLogins")

instance Default UserSocialAccountLogins
