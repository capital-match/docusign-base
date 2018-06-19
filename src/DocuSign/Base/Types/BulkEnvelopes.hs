module DocuSign.Base.Types.BulkEnvelopes where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BulkEnvelopeStatus

data BulkEnvelopes = BulkEnvelopes
  { bulkEnvelopesBulkEnvelopeStatuses :: Maybe [BulkEnvelopeStatus]
  , bulkEnvelopesEndPosition          :: Maybe Text
  , bulkEnvelopesNextUri              :: Maybe Text
  , bulkEnvelopesPreviousUri          :: Maybe Text
  , bulkEnvelopesResultSetSize        :: Maybe Text
  , bulkEnvelopesStartPosition        :: Maybe Text
  , bulkEnvelopesTotalSetSize         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BulkEnvelopes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bulkEnvelopes")
instance ToJSON BulkEnvelopes where
  toJSON = genericToJSON (removeFieldLabelPrefix "bulkEnvelopes")

instance Default BulkEnvelopes
