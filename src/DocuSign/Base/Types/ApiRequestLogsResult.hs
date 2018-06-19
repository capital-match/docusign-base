module DocuSign.Base.Types.ApiRequestLogsResult where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ApiRequestLog

data ApiRequestLogsResult = ApiRequestLogsResult
  { apiRequestLogsResultApiRequestLogs :: Maybe [ApiRequestLog]
  } deriving (Show, Eq, Generic)

instance FromJSON ApiRequestLogsResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "apiRequestLogsResult")
instance ToJSON ApiRequestLogsResult where
  toJSON = genericToJSON (removeFieldLabelPrefix "apiRequestLogsResult")

instance Default ApiRequestLogsResult
