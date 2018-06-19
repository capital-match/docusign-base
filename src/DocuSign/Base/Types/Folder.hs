module DocuSign.Base.Types.Folder where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.Filter

data Folder = Folder
  { folderErrorDetails    :: Maybe ErrorDetails
  , folderFilter          :: Maybe Filter
  , folderFolderId        :: Maybe Text
  , folderFolders         :: Maybe [Folder]
  , folderName            :: Maybe Text
  , folderOwnerEmail      :: Maybe Text
  , folderOwnerUserId     :: Maybe Text
  , folderOwnerUserName   :: Maybe Text
  , folderParentFolderId  :: Maybe Text
  , folderParentFolderUri :: Maybe Text
  , folderType            :: Maybe Text
  , folderUri             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Folder where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "folder")
instance ToJSON Folder where
  toJSON = genericToJSON (removeFieldLabelPrefix "folder")

instance Default Folder
