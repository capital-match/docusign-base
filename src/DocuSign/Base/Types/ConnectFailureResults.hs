module DocuSign.Base.Types.ConnectFailureResults where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ConnectFailureResult

data ConnectFailureResults = ConnectFailureResults
  { connectFailureResultsRetryQueue :: Maybe [ConnectFailureResult]
  } deriving (Show, Eq, Generic)

instance FromJSON ConnectFailureResults where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "connectFailureResults")
instance ToJSON ConnectFailureResults where
  toJSON = genericToJSON (removeFieldLabelPrefix "connectFailureResults")

instance Default ConnectFailureResults
