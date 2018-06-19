module DocuSign.Base.Types.ApiRequestLog where

import DocuSign.Base.Types.Common

data ApiRequestLog = ApiRequestLog
  { apiRequestLogCreatedDateTime :: Maybe Text
  , apiRequestLogDescription     :: Maybe Text
  , apiRequestLogRequestLogId    :: Maybe Text
  , apiRequestLogStatus          :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ApiRequestLog where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "apiRequestLog")
instance ToJSON ApiRequestLog where
  toJSON = genericToJSON (removeFieldLabelPrefix "apiRequestLog")

instance Default ApiRequestLog
