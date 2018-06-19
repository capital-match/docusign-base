module DocuSign.Base.Types.FoldersRequest where

import DocuSign.Base.Types.Common

data FoldersRequest = FoldersRequest
  { foldersRequestEnvelopeIds  :: Maybe [Text]
  , foldersRequestFromFolderId :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON FoldersRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "foldersRequest")
instance ToJSON FoldersRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "foldersRequest")

instance Default FoldersRequest
