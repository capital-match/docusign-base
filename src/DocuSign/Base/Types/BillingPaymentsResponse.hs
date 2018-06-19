module DocuSign.Base.Types.BillingPaymentsResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Payments

data BillingPaymentsResponse = BillingPaymentsResponse
  { billingPaymentsResponseBillingPayments :: Maybe [Payments]
  , billingPaymentsResponseNextUri         :: Maybe Text
  , billingPaymentsResponsePreviousUri     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPaymentsResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPaymentsResponse")
instance ToJSON BillingPaymentsResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPaymentsResponse")

instance Default BillingPaymentsResponse
