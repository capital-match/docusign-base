module DocuSign.Base.Types.Folders where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Folder

data Folders = Folders
  { foldersFolders :: Maybe [Folder]
  } deriving (Show, Eq, Generic)

instance FromJSON Folders where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "folders")
instance ToJSON Folders where
  toJSON = genericToJSON (removeFieldLabelPrefix "folders")

instance Default Folders
