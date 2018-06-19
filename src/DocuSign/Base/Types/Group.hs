module DocuSign.Base.Types.Group where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.UserInfo

data Group = Group
  { groupErrorDetails        :: Maybe ErrorDetails
  , groupGroupId             :: Maybe Text
  , groupGroupName           :: Maybe Text
  , groupGroupType           :: Maybe Text
  , groupPermissionProfileId :: Maybe Text
  , groupUsers               :: Maybe [UserInfo]
  } deriving (Show, Eq, Generic)

instance FromJSON Group where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "group")
instance ToJSON Group where
  toJSON = genericToJSON (removeFieldLabelPrefix "group")

instance Default Group
