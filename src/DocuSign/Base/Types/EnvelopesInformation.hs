module DocuSign.Base.Types.EnvelopesInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Envelopes
import DocuSign.Base.Types.EnvelopeTransactionStatus

data EnvelopesInformation = EnvelopesInformation
  { envelopesInformationEndPosition                 :: Maybe Text
  , envelopesInformationEnvelopes                   :: Maybe [Envelopes]
  , envelopesInformationEnvelopeTransactionStatuses :: Maybe [EnvelopeTransactionStatus]
  , envelopesInformationNextUri                     :: Maybe Text
  , envelopesInformationPreviousUri                 :: Maybe Text
  , envelopesInformationResultSetSize               :: Maybe Text
  , envelopesInformationStartPosition               :: Maybe Text
  , envelopesInformationTotalSetSize                :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopesInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopesInformation")
instance ToJSON EnvelopesInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopesInformation")

instance Default EnvelopesInformation
