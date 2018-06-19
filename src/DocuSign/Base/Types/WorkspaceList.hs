module DocuSign.Base.Types.WorkspaceList where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Workspaces

data WorkspaceList = WorkspaceList
  { workspaceListEndPosition   :: Maybe Text
  , workspaceListResultSetSize :: Maybe Text
  , workspaceListStartPosition :: Maybe Text
  , workspaceListTotalSetSize  :: Maybe Text
  , workspaceListWorkspaces    :: Maybe [Workspaces]
  } deriving (Show, Eq, Generic)

instance FromJSON WorkspaceList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "workspaceList")
instance ToJSON WorkspaceList where
  toJSON = genericToJSON (removeFieldLabelPrefix "workspaceList")

instance Default WorkspaceList
