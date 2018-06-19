module DocuSign.Base.Types.DocumentTemplateList where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.DocumentTemplate

data DocumentTemplateList = DocumentTemplateList
  { documentTemplateListDocumentTemplates :: Maybe [DocumentTemplate]
  } deriving (Show, Eq, Generic)

instance FromJSON DocumentTemplateList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "documentTemplateList")
instance ToJSON DocumentTemplateList where
  toJSON = genericToJSON (removeFieldLabelPrefix "documentTemplateList")

instance Default DocumentTemplateList
