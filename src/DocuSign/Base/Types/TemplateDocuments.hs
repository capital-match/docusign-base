module DocuSign.Base.Types.TemplateDocuments where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EnvelopeDocument

data TemplateDocuments = TemplateDocuments
  { templateDocumentsTemplateDocuments :: Maybe [EnvelopeDocument]
  , templateDocumentsTemplateId        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateDocuments where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateDocuments")
instance ToJSON TemplateDocuments where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateDocuments")

instance Default TemplateDocuments
