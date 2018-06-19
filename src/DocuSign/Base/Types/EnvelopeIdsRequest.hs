module DocuSign.Base.Types.EnvelopeIdsRequest where

import DocuSign.Base.Types.Common

data EnvelopeIdsRequest = EnvelopeIdsRequest
  { envelopeIdsRequestEnvelopeIds    :: Maybe [Text]
  , envelopeIdsRequestTransactionIds :: Maybe [Text]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeIdsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeIdsRequest")
instance ToJSON EnvelopeIdsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeIdsRequest")

instance Default EnvelopeIdsRequest
