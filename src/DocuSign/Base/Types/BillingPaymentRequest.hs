module DocuSign.Base.Types.BillingPaymentRequest where

import DocuSign.Base.Types.Common

data BillingPaymentRequest = BillingPaymentRequest
  { billingPaymentRequestPaymentAmount :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPaymentRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPaymentRequest")
instance ToJSON BillingPaymentRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPaymentRequest")

instance Default BillingPaymentRequest
