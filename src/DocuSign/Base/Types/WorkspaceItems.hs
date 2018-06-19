module DocuSign.Base.Types.WorkspaceItems where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.WorkspaceUser
import DocuSign.Base.Types.WorkspaceUserAuthorization

data WorkspaceItems = WorkspaceItems
  { workspaceItemsCallerAuthorization       :: Maybe WorkspaceUserAuthorization
  , workspaceItemsContentType               :: Maybe Text
  , workspaceItemsCreated                   :: Maybe Text
  , workspaceItemsCreatedById               :: Maybe Text
  , workspaceItemsCreatedByInformation      :: Maybe WorkspaceUser
  , workspaceItemsExtension                 :: Maybe Text
  , workspaceItemsFileSize                  :: Maybe Text
  , workspaceItemsFileUri                   :: Maybe Text
  , workspaceItemsId                        :: Maybe Text
  , workspaceItemsIsPublic                  :: Maybe Text
  , workspaceItemsLastModified              :: Maybe Text
  , workspaceItemsLastModifiedById          :: Maybe Text
  , workspaceItemsLastModifiedByInformation :: Maybe WorkspaceUser
  , workspaceItemsName                      :: Maybe Text
  , workspaceItemsPageCount                 :: Maybe Text
  , workspaceItemsParentFolderId            :: Maybe Text
  , workspaceItemsParentFolderUri           :: Maybe Text
  , workspaceItemsType                      :: Maybe Text
  , workspaceItemsUri                       :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON WorkspaceItems where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "workspaceItems")
instance ToJSON WorkspaceItems where
  toJSON = genericToJSON (removeFieldLabelPrefix "workspaceItems")

instance Default WorkspaceItems
