module DocuSign.Base.Types.Workspaces where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.WorkspaceUser

data Workspaces = Workspaces
  { workspacesBillableAccountId         :: Maybe Text
  , workspacesCreated                   :: Maybe Text
  , workspacesCreatedByInformation      :: Maybe WorkspaceUser
  , workspacesLastModified              :: Maybe Text
  , workspacesLastModifiedByInformation :: Maybe WorkspaceUser
  , workspacesStatus                    :: Maybe Text
  , workspacesWorkspaceBaseUrl          :: Maybe Text
  , workspacesWorkspaceDescription      :: Maybe Text
  , workspacesWorkspaceId               :: Maybe Text
  , workspacesWorkspaceName             :: Maybe Text
  , workspacesWorkspaceUri              :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Workspaces where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "workspaces")
instance ToJSON Workspaces where
  toJSON = genericToJSON (removeFieldLabelPrefix "workspaces")

instance Default Workspaces
