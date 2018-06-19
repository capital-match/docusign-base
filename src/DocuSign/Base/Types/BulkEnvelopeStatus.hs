module DocuSign.Base.Types.BulkEnvelopeStatus where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BulkEnvelope

data BulkEnvelopeStatus = BulkEnvelopeStatus
  { bulkEnvelopeStatusBatchId               :: Maybe Text
  , bulkEnvelopeStatusBatchSize             :: Maybe Text
  , bulkEnvelopeStatusBulkEnvelopes         :: Maybe [BulkEnvelope]
  , bulkEnvelopeStatusBulkEnvelopesBatchUri :: Maybe Text
  , bulkEnvelopeStatusEndPosition           :: Maybe Text
  , bulkEnvelopeStatusFailed                :: Maybe Text
  , bulkEnvelopeStatusNextUri               :: Maybe Text
  , bulkEnvelopeStatusPreviousUri           :: Maybe Text
  , bulkEnvelopeStatusQueued                :: Maybe Text
  , bulkEnvelopeStatusResultSetSize         :: Maybe Text
  , bulkEnvelopeStatusSent                  :: Maybe Text
  , bulkEnvelopeStatusStartPosition         :: Maybe Text
  , bulkEnvelopeStatusSubmittedDate         :: Maybe Text
  , bulkEnvelopeStatusTotalSetSize          :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BulkEnvelopeStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bulkEnvelopeStatus")
instance ToJSON BulkEnvelopeStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix "bulkEnvelopeStatus")

instance Default BulkEnvelopeStatus
