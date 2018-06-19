module DocuSign.Base.Types.UserInfoList where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.UserInfo

data UserInfoList = UserInfoList
  { userInfoListUsers :: Maybe [UserInfo]
  } deriving (Show, Eq, Generic)

instance FromJSON UserInfoList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userInfoList")
instance ToJSON UserInfoList where
  toJSON = genericToJSON (removeFieldLabelPrefix "userInfoList")

instance Default UserInfoList
