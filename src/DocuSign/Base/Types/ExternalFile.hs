module DocuSign.Base.Types.ExternalFile where

import DocuSign.Base.Types.Common

data ExternalFile = ExternalFile
  { externalFileDate      :: Maybe Text
  , externalFileId        :: Maybe Text
  , externalFileImg       :: Maybe Text
  , externalFileName      :: Maybe Text
  , externalFileSize      :: Maybe Text
  , externalFileSupported :: Maybe Text
  , externalFileType      :: Maybe Text
  , externalFileUri       :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ExternalFile where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "externalFile")
instance ToJSON ExternalFile where
  toJSON = genericToJSON (removeFieldLabelPrefix "externalFile")

instance Default ExternalFile
