module DocuSign.Base.Types.ConnectEvents where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ConnectLog

data ConnectEvents = ConnectEvents
  { connectEventsFailures     :: Maybe [ConnectLog]
  , connectEventsLogs         :: Maybe [ConnectLog]
  , connectEventsTotalRecords :: Maybe Text
  , connectEventsType         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ConnectEvents where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "connectEvents")
instance ToJSON ConnectEvents where
  toJSON = genericToJSON (removeFieldLabelPrefix "connectEvents")

instance Default ConnectEvents
