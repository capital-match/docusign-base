module DocuSign.Base.Types.ConnectFailureResult where

import DocuSign.Base.Types.Common

data ConnectFailureResult = ConnectFailureResult
  { connectFailureResultConfigId      :: Maybe Text
  , connectFailureResultConfigUrl     :: Maybe Text
  , connectFailureResultEnvelopeId    :: Maybe Text
  , connectFailureResultStatus        :: Maybe Text
  , connectFailureResultStatusMessage :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ConnectFailureResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "connectFailureResult")
instance ToJSON ConnectFailureResult where
  toJSON = genericToJSON (removeFieldLabelPrefix "connectFailureResult")

instance Default ConnectFailureResult
