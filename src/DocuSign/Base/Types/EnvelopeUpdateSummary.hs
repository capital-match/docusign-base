module DocuSign.Base.Types.EnvelopeUpdateSummary where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BulkEnvelopeStatus
import DocuSign.Base.Types.EnvelopeLocks
import DocuSign.Base.Types.EnvelopeRecipientTabs
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.ListCustomField
import DocuSign.Base.Types.RecipientUpdateResponse
import DocuSign.Base.Types.TextCustomField

data EnvelopeUpdateSummary = EnvelopeUpdateSummary
  { envelopeUpdateSummaryBulkEnvelopeStatus           :: Maybe BulkEnvelopeStatus
  , envelopeUpdateSummaryEnvelopeId                   :: Maybe Text
  , envelopeUpdateSummaryErrorDetails                 :: Maybe ErrorDetails
  , envelopeUpdateSummaryListCustomFieldUpdateResults :: Maybe [ListCustomField]
  , envelopeUpdateSummaryLockInformation              :: Maybe EnvelopeLocks
  , envelopeUpdateSummaryRecipientUpdateResults       :: Maybe [RecipientUpdateResponse]
  , envelopeUpdateSummaryTabUpdateResults             :: Maybe EnvelopeRecipientTabs
  , envelopeUpdateSummaryTextCustomFieldUpdateResults :: Maybe [TextCustomField]
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeUpdateSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeUpdateSummary")
instance ToJSON EnvelopeUpdateSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeUpdateSummary")

instance Default EnvelopeUpdateSummary
