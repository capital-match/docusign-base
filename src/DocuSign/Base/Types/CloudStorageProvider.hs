module DocuSign.Base.Types.CloudStorageProvider where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data CloudStorageProvider = CloudStorageProvider
  { cloudStorageProviderAuthenticationUrl :: Maybe Text
  , cloudStorageProviderErrorDetails      :: Maybe ErrorDetails
  , cloudStorageProviderRedirectUrl       :: Maybe Text
  , cloudStorageProviderService           :: Maybe Text
  , cloudStorageProviderServiceId         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CloudStorageProvider where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "cloudStorageProvider")
instance ToJSON CloudStorageProvider where
  toJSON = genericToJSON (removeFieldLabelPrefix "cloudStorageProvider")

instance Default CloudStorageProvider
