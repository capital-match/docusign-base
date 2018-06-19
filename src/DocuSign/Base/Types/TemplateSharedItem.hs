module DocuSign.Base.Types.TemplateSharedItem where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MemberGroupSharedItem
import DocuSign.Base.Types.UserInfo
import DocuSign.Base.Types.UserSharedItem

data TemplateSharedItem = TemplateSharedItem
  { templateSharedItemErrorDetails :: Maybe ErrorDetails
  , templateSharedItemOwner        :: Maybe UserInfo
  , templateSharedItemShared       :: Maybe Text
  , templateSharedItemSharedGroups :: Maybe [MemberGroupSharedItem]
  , templateSharedItemSharedUsers  :: Maybe [UserSharedItem]
  , templateSharedItemTemplateId   :: Maybe Text
  , templateSharedItemTemplateName :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateSharedItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateSharedItem")
instance ToJSON TemplateSharedItem where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateSharedItem")

instance Default TemplateSharedItem
