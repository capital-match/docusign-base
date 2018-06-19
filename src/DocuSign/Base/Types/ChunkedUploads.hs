module DocuSign.Base.Types.ChunkedUploads where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ChunkedUploadPart

data ChunkedUploads = ChunkedUploads
  { chunkedUploadsChecksum              :: Maybe Text
  , chunkedUploadsChunkedUploadId       :: Maybe Text
  , chunkedUploadsChunkedUploadParts    :: Maybe [ChunkedUploadPart]
  , chunkedUploadsChunkedUploadUri      :: Maybe Text
  , chunkedUploadsCommitted             :: Maybe Text
  , chunkedUploadsExpirationDateTime    :: Maybe Text
  , chunkedUploadsMaxChunkedUploadParts :: Maybe Text
  , chunkedUploadsMaxTotalSize          :: Maybe Text
  , chunkedUploadsTotalSize             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ChunkedUploads where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "chunkedUploads")
instance ToJSON ChunkedUploads where
  toJSON = genericToJSON (removeFieldLabelPrefix "chunkedUploads")

instance Default ChunkedUploads
