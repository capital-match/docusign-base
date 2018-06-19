module DocuSign.Base.Types.EnvelopeTemplates where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.TemplateSummary

data EnvelopeTemplates = EnvelopeTemplates
  { envelopeTemplatesTemplates :: Maybe [TemplateSummary]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeTemplates where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeTemplates")
instance ToJSON EnvelopeTemplates where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeTemplates")

instance Default EnvelopeTemplates
