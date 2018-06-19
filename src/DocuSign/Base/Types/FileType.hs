module DocuSign.Base.Types.FileType where

import DocuSign.Base.Types.Common

data FileType = FileType
  { fileTypeFileExtension :: Maybe Text
  , fileTypeMimeType      :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FileType where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "fileType")
instance ToJSON FileType where
  toJSON = genericToJSON (removeFieldLabelPrefix "fileType")

instance Default FileType
