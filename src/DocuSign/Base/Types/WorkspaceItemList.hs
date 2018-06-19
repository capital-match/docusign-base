module DocuSign.Base.Types.WorkspaceItemList where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.WorkspaceItems

data WorkspaceItemList = WorkspaceItemList
  { workspaceItemListItems :: Maybe [WorkspaceItems]
  } deriving (Show, Eq, Generic)

instance FromJSON WorkspaceItemList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "workspaceItemList")
instance ToJSON WorkspaceItemList where
  toJSON = genericToJSON (removeFieldLabelPrefix "workspaceItemList")

instance Default WorkspaceItemList
