module DocuSign.Base.Types.TemplateUpdateSummary where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BulkEnvelopeStatus
import DocuSign.Base.Types.EnvelopeLocks
import DocuSign.Base.Types.EnvelopeRecipientTabs
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.ListCustomField
import DocuSign.Base.Types.RecipientUpdateResponse
import DocuSign.Base.Types.TextCustomField

data TemplateUpdateSummary = TemplateUpdateSummary
  { templateUpdateSummaryBulkEnvelopeStatus           :: Maybe BulkEnvelopeStatus
  , templateUpdateSummaryEnvelopeId                   :: Maybe Text
  , templateUpdateSummaryErrorDetails                 :: Maybe ErrorDetails
  , templateUpdateSummaryListCustomFieldUpdateResults :: Maybe [ListCustomField]
  , templateUpdateSummaryLockInformation              :: Maybe EnvelopeLocks
  , templateUpdateSummaryRecipientUpdateResults       :: Maybe [RecipientUpdateResponse]
  , templateUpdateSummaryTabUpdateResults             :: Maybe EnvelopeRecipientTabs
  , templateUpdateSummaryTextCustomFieldUpdateResults :: Maybe [TextCustomField]
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateUpdateSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateUpdateSummary")
instance ToJSON TemplateUpdateSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateUpdateSummary")

instance Default TemplateUpdateSummary
