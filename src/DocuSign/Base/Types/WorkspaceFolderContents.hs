module DocuSign.Base.Types.WorkspaceFolderContents where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.WorkspaceItems

data WorkspaceFolderContents = WorkspaceFolderContents
  { workspaceFolderContentsEndPosition   :: Maybe Text
  , workspaceFolderContentsFolder        :: Maybe WorkspaceItems
  , workspaceFolderContentsItems         :: Maybe [WorkspaceItems]
  , workspaceFolderContentsParentFolders :: Maybe [WorkspaceItems]
  , workspaceFolderContentsResultSetSize :: Maybe Text
  , workspaceFolderContentsStartPosition :: Maybe Text
  , workspaceFolderContentsTotalSetSize  :: Maybe Text
  , workspaceFolderContentsWorkspaceId   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON WorkspaceFolderContents where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "workspaceFolderContents")
instance ToJSON WorkspaceFolderContents where
  toJSON = genericToJSON (removeFieldLabelPrefix "workspaceFolderContents")

instance Default WorkspaceFolderContents
