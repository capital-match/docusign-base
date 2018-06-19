module DocuSign.Base.Types.RequestLogs where

import DocuSign.Base.Types.Common

data RequestLogs = RequestLogs
  { requestLogsApiRequestLogging             :: Maybe Text
  , requestLogsApiRequestLogMaxEntries       :: Maybe Text
  , requestLogsApiRequestLogRemainingEntries :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RequestLogs where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "requestLogs")
instance ToJSON RequestLogs where
  toJSON = genericToJSON (removeFieldLabelPrefix "requestLogs")

instance Default RequestLogs
