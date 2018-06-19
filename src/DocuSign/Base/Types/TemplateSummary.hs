module DocuSign.Base.Types.TemplateSummary where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.TemplateMatch

data TemplateSummary = TemplateSummary
  { templateSummaryApplied       :: Maybe Text
  , templateSummaryDocumentId    :: Maybe Text
  , templateSummaryDocumentName  :: Maybe Text
  , templateSummaryName          :: Maybe Text
  , templateSummaryTemplateId    :: Maybe Text
  , templateSummaryTemplateMatch :: Maybe TemplateMatch
  , templateSummaryUri           :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateSummary")
instance ToJSON TemplateSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateSummary")

instance Default TemplateSummary
