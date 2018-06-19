module DocuSign.Base.Types.UserSocialIdResult where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.UserSocialAccountLogins

data UserSocialIdResult = UserSocialIdResult
  { userSocialIdResultSocialAccountInformation :: Maybe [UserSocialAccountLogins]
  , userSocialIdResultUserId                   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON UserSocialIdResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userSocialIdResult")
instance ToJSON UserSocialIdResult where
  toJSON = genericToJSON (removeFieldLabelPrefix "userSocialIdResult")

instance Default UserSocialIdResult
