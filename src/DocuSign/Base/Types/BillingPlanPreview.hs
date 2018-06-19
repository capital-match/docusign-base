module DocuSign.Base.Types.BillingPlanPreview where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Invoices

data BillingPlanPreview = BillingPlanPreview
  { billingPlanPreviewCurrencyCode   :: Maybe Text
  , billingPlanPreviewInvoice        :: Maybe Invoices
  , billingPlanPreviewIsProrated     :: Maybe Text
  , billingPlanPreviewSubtotalAmount :: Maybe Text
  , billingPlanPreviewTaxAmount      :: Maybe Text
  , billingPlanPreviewTotalAmount    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPlanPreview where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPlanPreview")
instance ToJSON BillingPlanPreview where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPlanPreview")

instance Default BillingPlanPreview
