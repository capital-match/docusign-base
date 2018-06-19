module DocuSign.Base.Types.BillingDiscount where

import DocuSign.Base.Types.Common

data BillingDiscount = BillingDiscount
  { billingDiscountBeginQuantity :: Maybe Text
  , billingDiscountDiscount      :: Maybe Text
  , billingDiscountEndQuantity   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingDiscount where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingDiscount")
instance ToJSON BillingDiscount where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingDiscount")

instance Default BillingDiscount
