module DocuSign.Base.Types.MemberSharedItems where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.SharedItem
import DocuSign.Base.Types.TemplateSharedItem
import DocuSign.Base.Types.UserInfo

data MemberSharedItems = MemberSharedItems
  { memberSharedItemsEnvelopes    :: Maybe [SharedItem]
  , memberSharedItemsErrorDetails :: Maybe ErrorDetails
  , memberSharedItemsTemplates    :: Maybe [TemplateSharedItem]
  , memberSharedItemsUser         :: Maybe UserInfo
  } deriving (Show, Eq, Generic)

instance FromJSON MemberSharedItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "memberSharedItems")
instance ToJSON MemberSharedItems where
  toJSON = genericToJSON (removeFieldLabelPrefix "memberSharedItems")

instance Default MemberSharedItems
