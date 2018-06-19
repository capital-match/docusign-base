module DocuSign.Base.Types.TemplateDocumentVisibility where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.DocumentVisibility

data TemplateDocumentVisibility = TemplateDocumentVisibility
  { templateDocumentVisibilityDocumentVisibility :: Maybe [DocumentVisibility]
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateDocumentVisibility where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateDocumentVisibility")
instance ToJSON TemplateDocumentVisibility where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateDocumentVisibility")

instance Default TemplateDocumentVisibility
