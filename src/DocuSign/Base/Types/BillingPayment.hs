module DocuSign.Base.Types.BillingPayment where

import DocuSign.Base.Types.Common

data BillingPayment = BillingPayment
  { billingPaymentAmount    :: Maybe Text
  , billingPaymentInvoiceId :: Maybe Text
  , billingPaymentPaymentId :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPayment where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPayment")
instance ToJSON BillingPayment where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPayment")

instance Default BillingPayment
