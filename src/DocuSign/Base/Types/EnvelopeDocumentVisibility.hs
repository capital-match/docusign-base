module DocuSign.Base.Types.EnvelopeDocumentVisibility where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.DocumentVisibility

data EnvelopeDocumentVisibility = EnvelopeDocumentVisibility
  { envelopeDocumentVisibilityDocumentVisibility :: Maybe [DocumentVisibility]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeDocumentVisibility where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeDocumentVisibility")
instance ToJSON EnvelopeDocumentVisibility where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeDocumentVisibility")

instance Default EnvelopeDocumentVisibility
