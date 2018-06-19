module DocuSign.Base.Types.EnvelopeEvent where

import DocuSign.Base.Types.Common

data EnvelopeEvent = EnvelopeEvent
  { envelopeEventEnvelopeEventStatusCode :: Maybe Text
  , envelopeEventIncludeDocuments        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeEvent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeEvent")
instance ToJSON EnvelopeEvent where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeEvent")

instance Default EnvelopeEvent
