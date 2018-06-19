module DocuSign.Base.Types.EnvelopeDocumentFields where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data EnvelopeDocumentFields = EnvelopeDocumentFields
  { envelopeDocumentFieldsDocumentFields :: Maybe [NameValue]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeDocumentFields where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeDocumentFields")
instance ToJSON EnvelopeDocumentFields where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeDocumentFields")

instance Default EnvelopeDocumentFields
