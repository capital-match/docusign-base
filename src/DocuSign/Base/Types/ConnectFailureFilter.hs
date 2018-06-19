module DocuSign.Base.Types.ConnectFailureFilter where

import DocuSign.Base.Types.Common

data ConnectFailureFilter = ConnectFailureFilter
  { connectFailureFilterEnvelopeIds :: Maybe [Text]
  , connectFailureFilterSynchronous :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ConnectFailureFilter where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "connectFailureFilter")
instance ToJSON ConnectFailureFilter where
  toJSON = genericToJSON (removeFieldLabelPrefix "connectFailureFilter")

instance Default ConnectFailureFilter
