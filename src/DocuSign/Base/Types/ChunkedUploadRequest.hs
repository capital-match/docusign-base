module DocuSign.Base.Types.ChunkedUploadRequest where

import DocuSign.Base.Types.Common

data ChunkedUploadRequest = ChunkedUploadRequest
  { chunkedUploadRequestChunkedUploadId :: Maybe Text
  , chunkedUploadRequestData            :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ChunkedUploadRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "chunkedUploadRequest")
instance ToJSON ChunkedUploadRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "chunkedUploadRequest")

instance Default ChunkedUploadRequest
