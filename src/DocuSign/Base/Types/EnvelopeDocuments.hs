module DocuSign.Base.Types.EnvelopeDocuments where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EnvelopeDocument

data EnvelopeDocuments = EnvelopeDocuments
  { envelopeDocumentsEnvelopeDocuments :: Maybe [EnvelopeDocument]
  , envelopeDocumentsEnvelopeId        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeDocuments where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeDocuments")
instance ToJSON EnvelopeDocuments where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeDocuments")

instance Default EnvelopeDocuments
