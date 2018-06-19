module DocuSign.Base.Types.EnvelopeSummary where

import DocuSign.Base.Types.Common

data EnvelopeSummary = EnvelopeSummary
  { envelopeSummaryEnvelopeId     :: Maybe Text
  , envelopeSummaryStatus         :: Maybe Text
  , envelopeSummaryStatusDateTime :: Maybe Text
  , envelopeSummaryUri            :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeSummary")
instance ToJSON EnvelopeSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeSummary")

instance Default EnvelopeSummary
