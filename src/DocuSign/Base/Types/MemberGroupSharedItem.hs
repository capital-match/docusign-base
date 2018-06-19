module DocuSign.Base.Types.MemberGroupSharedItem where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.Group

data MemberGroupSharedItem = MemberGroupSharedItem
  { memberGroupSharedItemErrorDetails :: Maybe ErrorDetails
  , memberGroupSharedItemGroup        :: Maybe Group
  , memberGroupSharedItemShared       :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON MemberGroupSharedItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "memberGroupSharedItem")
instance ToJSON MemberGroupSharedItem where
  toJSON = genericToJSON (removeFieldLabelPrefix "memberGroupSharedItem")

instance Default MemberGroupSharedItem
