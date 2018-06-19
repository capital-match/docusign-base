module DocuSign.Base.Types.WorkspaceUser where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data WorkspaceUser = WorkspaceUser
  { workspaceUserAccountId            :: Maybe Text
  , workspaceUserAccountName          :: Maybe Text
  , workspaceUserActiveSince          :: Maybe Text
  , workspaceUserCreated              :: Maybe Text
  , workspaceUserCreatedById          :: Maybe Text
  , workspaceUserEmail                :: Maybe Text
  , workspaceUserErrorDetails         :: Maybe ErrorDetails
  , workspaceUserLastModified         :: Maybe Text
  , workspaceUserLastModifiedById     :: Maybe Text
  , workspaceUserStatus               :: Maybe Text
  , workspaceUserType                 :: Maybe Text
  , workspaceUserUserId               :: Maybe Text
  , workspaceUserUserName             :: Maybe Text
  , workspaceUserWorkspaceId          :: Maybe Text
  , workspaceUserWorkspaceUserBaseUrl :: Maybe Text
  , workspaceUserWorkspaceUserId      :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON WorkspaceUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "workspaceUser")
instance ToJSON WorkspaceUser where
  toJSON = genericToJSON (removeFieldLabelPrefix "workspaceUser")

instance Default WorkspaceUser
