module DocuSign.Base.Types.CloudStorageProviders where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.CloudStorageProvider

data CloudStorageProviders = CloudStorageProviders
  { cloudStorageProvidersStorageProviders :: Maybe [CloudStorageProvider]
  } deriving (Show, Eq, Generic)

instance FromJSON CloudStorageProviders where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "cloudStorageProviders")
instance ToJSON CloudStorageProviders where
  toJSON = genericToJSON (removeFieldLabelPrefix "cloudStorageProviders")

instance Default CloudStorageProviders
