module DocuSign.Base.Types.PowerFormSendersResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.UserInfo

data PowerFormSendersResponse = PowerFormSendersResponse
  { powerFormSendersResponseEndPosition      :: Maybe Text
  , powerFormSendersResponseNextUri          :: Maybe Text
  , powerFormSendersResponsePowerFormSenders :: Maybe [UserInfo]
  , powerFormSendersResponsePreviousUri      :: Maybe Text
  , powerFormSendersResponseResultSetSize    :: Maybe Text
  , powerFormSendersResponseStartPosition    :: Maybe Text
  , powerFormSendersResponseTotalSetSize     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PowerFormSendersResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "powerFormSendersResponse")
instance ToJSON PowerFormSendersResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "powerFormSendersResponse")

instance Default PowerFormSendersResponse
