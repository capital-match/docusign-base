module DocuSign.Base.Types.EnvelopeTransactionStatus where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data EnvelopeTransactionStatus = EnvelopeTransactionStatus
  { envelopeTransactionStatusEnvelopeId    :: Maybe Text
  , envelopeTransactionStatusErrorDetails  :: Maybe ErrorDetails
  , envelopeTransactionStatusStatus        :: Maybe Text
  , envelopeTransactionStatusTransactionId :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeTransactionStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeTransactionStatus")
instance ToJSON EnvelopeTransactionStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeTransactionStatus")

instance Default EnvelopeTransactionStatus
