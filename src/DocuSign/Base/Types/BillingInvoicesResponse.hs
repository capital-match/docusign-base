module DocuSign.Base.Types.BillingInvoicesResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Invoices

data BillingInvoicesResponse = BillingInvoicesResponse
  { billingInvoicesResponseBillingInvoices :: Maybe [Invoices]
  , billingInvoicesResponseNextUri         :: Maybe Text
  , billingInvoicesResponsePreviousUri     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingInvoicesResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingInvoicesResponse")
instance ToJSON BillingInvoicesResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingInvoicesResponse")

instance Default BillingInvoicesResponse
