module DocuSign.Base.Types.BillingInvoicesSummary where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Invoices

data BillingInvoicesSummary = BillingInvoicesSummary
  { billingInvoicesSummaryBillingInvoices :: Maybe [Invoices]
  , billingInvoicesSummaryPastDueBalance  :: Maybe Text
  , billingInvoicesSummaryPaymentAllowed  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingInvoicesSummary where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingInvoicesSummary")
instance ToJSON BillingInvoicesSummary where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingInvoicesSummary")

instance Default BillingInvoicesSummary
