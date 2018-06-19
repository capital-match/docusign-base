module DocuSign.Base.Types.DocumentTemplate where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data DocumentTemplate = DocumentTemplate
  { documentTemplateDocumentEndPage   :: Maybe Text
  , documentTemplateDocumentId        :: Maybe Text
  , documentTemplateDocumentStartPage :: Maybe Text
  , documentTemplateErrorDetails      :: Maybe ErrorDetails
  , documentTemplateTemplateId        :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON DocumentTemplate where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "documentTemplate")
instance ToJSON DocumentTemplate where
  toJSON = genericToJSON (removeFieldLabelPrefix "documentTemplate")

instance Default DocumentTemplate
