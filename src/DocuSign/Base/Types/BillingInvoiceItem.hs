module DocuSign.Base.Types.BillingInvoiceItem where

import DocuSign.Base.Types.Common

data BillingInvoiceItem = BillingInvoiceItem
  { billingInvoiceItemChargeAmount  :: Maybe Text
  , billingInvoiceItemChargeName    :: Maybe Text
  , billingInvoiceItemInvoiceItemId :: Maybe Text
  , billingInvoiceItemQuantity      :: Maybe Text
  , billingInvoiceItemUnitPrice     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingInvoiceItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingInvoiceItem")
instance ToJSON BillingInvoiceItem where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingInvoiceItem")

instance Default BillingInvoiceItem
