module DocuSign.Base.Types.FolderItemResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.FolderItemV2

data FolderItemResponse = FolderItemResponse
  { folderItemResponseEndPosition   :: Maybe Text
  , folderItemResponseFolderItems   :: Maybe [FolderItemV2]
  , folderItemResponseNextUri       :: Maybe Text
  , folderItemResponsePreviousUri   :: Maybe Text
  , folderItemResponseResultSetSize :: Maybe Text
  , folderItemResponseStartPosition :: Maybe Text
  , folderItemResponseTotalRows     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FolderItemResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "folderItemResponse")
instance ToJSON FolderItemResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "folderItemResponse")

instance Default FolderItemResponse
