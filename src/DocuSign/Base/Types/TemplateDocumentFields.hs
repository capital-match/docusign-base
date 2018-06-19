module DocuSign.Base.Types.TemplateDocumentFields where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data TemplateDocumentFields = TemplateDocumentFields
  { templateDocumentFieldsDocumentFields :: Maybe [NameValue]
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateDocumentFields where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateDocumentFields")
instance ToJSON TemplateDocumentFields where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateDocumentFields")

instance Default TemplateDocumentFields
