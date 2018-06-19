module DocuSign.Base.Types.CloudStorage where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ExternalDocServiceErrorDetails
import DocuSign.Base.Types.ExternalFile

data CloudStorage = CloudStorage
  { cloudStorageEndPosition   :: Maybe Text
  , cloudStorageErrorDetails  :: Maybe ExternalDocServiceErrorDetails
  , cloudStorageId            :: Maybe Text
  , cloudStorageItems         :: Maybe [ExternalFile]
  , cloudStorageName          :: Maybe Text
  , cloudStorageNextUri       :: Maybe Text
  , cloudStoragePreviousUri   :: Maybe Text
  , cloudStorageResultSetSize :: Maybe Text
  , cloudStorageStartPosition :: Maybe Text
  , cloudStorageTotalSetSize  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CloudStorage where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "cloudStorage")
instance ToJSON CloudStorage where
  toJSON = genericToJSON (removeFieldLabelPrefix "cloudStorage")

instance Default CloudStorage
