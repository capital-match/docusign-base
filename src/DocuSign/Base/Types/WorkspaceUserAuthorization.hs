module DocuSign.Base.Types.WorkspaceUserAuthorization where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.WorkspaceUser

data WorkspaceUserAuthorization = WorkspaceUserAuthorization
  { workspaceUserAuthorizationCanDelete                :: Maybe Text
  , workspaceUserAuthorizationCanMove                  :: Maybe Text
  , workspaceUserAuthorizationCanTransact              :: Maybe Text
  , workspaceUserAuthorizationCanView                  :: Maybe Text
  , workspaceUserAuthorizationCreated                  :: Maybe Text
  , workspaceUserAuthorizationCreatedById              :: Maybe Text
  , workspaceUserAuthorizationErrorDetails             :: Maybe ErrorDetails
  , workspaceUserAuthorizationModified                 :: Maybe Text
  , workspaceUserAuthorizationModifiedById             :: Maybe Text
  , workspaceUserAuthorizationWorkspaceUserId          :: Maybe Text
  , workspaceUserAuthorizationWorkspaceUserInformation :: Maybe WorkspaceUser
  } deriving (Show, Eq, Generic)

instance FromJSON WorkspaceUserAuthorization where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "workspaceUserAuthorization")
instance ToJSON WorkspaceUserAuthorization where
  toJSON = genericToJSON (removeFieldLabelPrefix "workspaceUserAuthorization")

instance Default WorkspaceUserAuthorization
