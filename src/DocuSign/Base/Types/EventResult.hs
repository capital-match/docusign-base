module DocuSign.Base.Types.EventResult where

import DocuSign.Base.Types.Common

data EventResult = EventResult
  { eventResultEventTimestamp          :: Maybe Text
  , eventResultFailureDescription      :: Maybe Text
  , eventResultStatus                  :: Maybe Text
  , eventResultVendorFailureStatusCode :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EventResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "eventResult")
instance ToJSON EventResult where
  toJSON = genericToJSON (removeFieldLabelPrefix "eventResult")

instance Default EventResult
