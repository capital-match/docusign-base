module DocuSign.Base.Types.GroupUsers where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.UserInfo

data GroupUsers = GroupUsers
  { groupUsersEndPosition   :: Maybe Text
  , groupUsersNextUri       :: Maybe Text
  , groupUsersPreviousUri   :: Maybe Text
  , groupUsersResultSetSize :: Maybe Text
  , groupUsersStartPosition :: Maybe Text
  , groupUsersTotalSetSize  :: Maybe Text
  , groupUsersUsers         :: Maybe [UserInfo]
  } deriving (Show, Eq, Generic)

instance FromJSON GroupUsers where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "groupUsers")
instance ToJSON GroupUsers where
  toJSON = genericToJSON (removeFieldLabelPrefix "groupUsers")

instance Default GroupUsers
