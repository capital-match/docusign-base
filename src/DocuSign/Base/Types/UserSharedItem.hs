module DocuSign.Base.Types.UserSharedItem where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.UserInfo

data UserSharedItem = UserSharedItem
  { userSharedItemErrorDetails :: Maybe ErrorDetails
  , userSharedItemShared       :: Maybe Text
  , userSharedItemUser         :: Maybe UserInfo
  } deriving (Show, Eq, Generic)

instance FromJSON UserSharedItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userSharedItem")
instance ToJSON UserSharedItem where
  toJSON = genericToJSON (removeFieldLabelPrefix "userSharedItem")

instance Default UserSharedItem
