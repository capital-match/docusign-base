module DocuSign.Base.Types.EnvelopeTemplateResults where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EnvelopeTemplateResult
import DocuSign.Base.Types.Folder

data EnvelopeTemplateResults = EnvelopeTemplateResults
  { envelopeTemplateResultsEndPosition       :: Maybe Text
  , envelopeTemplateResultsEnvelopeTemplates :: Maybe [EnvelopeTemplateResult]
  , envelopeTemplateResultsFolders           :: Maybe [Folder]
  , envelopeTemplateResultsNextUri           :: Maybe Text
  , envelopeTemplateResultsPreviousUri       :: Maybe Text
  , envelopeTemplateResultsResultSetSize     :: Maybe Text
  , envelopeTemplateResultsStartPosition     :: Maybe Text
  , envelopeTemplateResultsTotalSetSize      :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeTemplateResults where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeTemplateResults")
instance ToJSON EnvelopeTemplateResults where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeTemplateResults")

instance Default EnvelopeTemplateResults
