module DocuSign.Base.Types.ChunkedUploadPart where

import DocuSign.Base.Types.Common

data ChunkedUploadPart = ChunkedUploadPart
  { chunkedUploadPartSequence :: Maybe Text
  , chunkedUploadPartSize     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ChunkedUploadPart where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "chunkedUploadPart")
instance ToJSON ChunkedUploadPart where
  toJSON = genericToJSON (removeFieldLabelPrefix "chunkedUploadPart")

instance Default ChunkedUploadPart
