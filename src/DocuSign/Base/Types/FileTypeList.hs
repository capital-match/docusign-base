module DocuSign.Base.Types.FileTypeList where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.FileType

data FileTypeList = FileTypeList
  { fileTypeListFileTypes :: Maybe [FileType]
  } deriving (Show, Eq, Generic)

instance FromJSON FileTypeList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "fileTypeList")
instance ToJSON FileTypeList where
  toJSON = genericToJSON (removeFieldLabelPrefix "fileTypeList")

instance Default FileTypeList
