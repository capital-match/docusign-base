module DocuSign.Base.Types.FolderItemsResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.FolderItem

data FolderItemsResponse = FolderItemsResponse
  { folderItemsResponseEndPosition   :: Maybe Text
  , folderItemsResponseFolderItems   :: Maybe [FolderItem]
  , folderItemsResponseNextUri       :: Maybe Text
  , folderItemsResponsePreviousUri   :: Maybe Text
  , folderItemsResponseResultSetSize :: Maybe Text
  , folderItemsResponseStartPosition :: Maybe Text
  , folderItemsResponseTotalSetSize  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FolderItemsResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "folderItemsResponse")
instance ToJSON FolderItemsResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "folderItemsResponse")

instance Default FolderItemsResponse
