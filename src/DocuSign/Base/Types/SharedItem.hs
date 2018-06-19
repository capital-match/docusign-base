module DocuSign.Base.Types.SharedItem where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.UserInfo

data SharedItem = SharedItem
  { sharedItemErrorDetails :: Maybe ErrorDetails
  , sharedItemShared       :: Maybe Text
  , sharedItemUser         :: Maybe UserInfo
  } deriving (Show, Eq, Generic)

instance FromJSON SharedItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "sharedItem")
instance ToJSON SharedItem where
  toJSON = genericToJSON (removeFieldLabelPrefix "sharedItem")

instance Default SharedItem
