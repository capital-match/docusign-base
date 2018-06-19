module DocuSign.Base.Types.TemplateMatch where

import DocuSign.Base.Types.Common

data TemplateMatch = TemplateMatch
  { templateMatchDocumentEndPage   :: Maybe Text
  , templateMatchDocumentStartPage :: Maybe Text
  , templateMatchMatchPercentage   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateMatch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateMatch")
instance ToJSON TemplateMatch where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateMatch")

instance Default TemplateMatch
