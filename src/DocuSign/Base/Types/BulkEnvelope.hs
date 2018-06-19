module DocuSign.Base.Types.BulkEnvelope where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data BulkEnvelope = BulkEnvelope
  { bulkEnvelopeBulkRecipientRow  :: Maybe Text
  , bulkEnvelopeBulkStatus        :: Maybe Text
  , bulkEnvelopeEmail             :: Maybe Text
  , bulkEnvelopeEnvelopeId        :: Maybe Text
  , bulkEnvelopeEnvelopeUri       :: Maybe Text
  , bulkEnvelopeErrorDetails      :: Maybe ErrorDetails
  , bulkEnvelopeName              :: Maybe Text
  , bulkEnvelopeSubmittedDateTime :: Maybe Text
  , bulkEnvelopeTransactionId     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BulkEnvelope where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bulkEnvelope")
instance ToJSON BulkEnvelope where
  toJSON = genericToJSON (removeFieldLabelPrefix "bulkEnvelope")

instance Default BulkEnvelope
