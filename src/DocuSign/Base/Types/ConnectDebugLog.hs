module DocuSign.Base.Types.ConnectDebugLog where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data ConnectDebugLog = ConnectDebugLog
  { connectDebugLogConnectConfig    :: Maybe Text
  , connectDebugLogErrorDetails     :: Maybe ErrorDetails
  , connectDebugLogEventDateTime    :: Maybe Text
  , connectDebugLogEventDescription :: Maybe Text
  , connectDebugLogPayload          :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ConnectDebugLog where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "connectDebugLog")
instance ToJSON ConnectDebugLog where
  toJSON = genericToJSON (removeFieldLabelPrefix "connectDebugLog")

instance Default ConnectDebugLog
