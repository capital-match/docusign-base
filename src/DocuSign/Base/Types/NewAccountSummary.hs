module DocuSign.Base.Types.NewAccountSummary where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BillingPlanPreview

data NewAccountSummary = NewAccountSummary
  { newAccountSummaryAccountId          :: Maybe Text
  , newAccountSummaryAccountIdGuid      :: Maybe Text
  , newAccountSummaryAccountName        :: Maybe Text
  , newAccountSummaryApiPassword        :: Maybe Text
  , newAccountSummaryBaseUrl            :: Maybe Text
  , newAccountSummaryBillingPlanPreview :: Maybe BillingPlanPreview
  , newAccountSummaryUserId             :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON NewAccountSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "newAccountSummary")
instance ToJSON NewAccountSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix "newAccountSummary")

instance Default NewAccountSummary
