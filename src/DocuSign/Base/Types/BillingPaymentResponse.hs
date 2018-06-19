module DocuSign.Base.Types.BillingPaymentResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BillingPayment

data BillingPaymentResponse = BillingPaymentResponse
  { billingPaymentResponseBillingPayments :: Maybe [BillingPayment]
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPaymentResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPaymentResponse")
instance ToJSON BillingPaymentResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPaymentResponse")

instance Default BillingPaymentResponse
