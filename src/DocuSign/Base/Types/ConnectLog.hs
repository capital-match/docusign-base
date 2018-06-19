module DocuSign.Base.Types.ConnectLog where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ConnectDebugLog

data ConnectLog = ConnectLog
  { connectLogAccountId       :: Maybe Text
  , connectLogConfigUrl       :: Maybe Text
  , connectLogConnectDebugLog :: Maybe [ConnectDebugLog]
  , connectLogConnectId       :: Maybe Text
  , connectLogCreated         :: Maybe Text
  , connectLogEmail           :: Maybe Text
  , connectLogEnvelopeId      :: Maybe Text
  , connectLogError           :: Maybe Text
  , connectLogFailureId       :: Maybe Text
  , connectLogFailureUri      :: Maybe Text
  , connectLogLastTry         :: Maybe Text
  , connectLogLogId           :: Maybe Text
  , connectLogLogUri          :: Maybe Text
  , connectLogRetryCount      :: Maybe Text
  , connectLogRetryUri        :: Maybe Text
  , connectLogStatus          :: Maybe Text
  , connectLogSubject         :: Maybe Text
  , connectLogUserName        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ConnectLog where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "connectLog")
instance ToJSON ConnectLog where
  toJSON = genericToJSON (removeFieldLabelPrefix "connectLog")

instance Default ConnectLog
