module DocuSign.Base.Types.BillingPrice where

import DocuSign.Base.Types.Common

data BillingPrice = BillingPrice
  { billingPriceBeginQuantity :: Maybe Text
  , billingPriceEndQuantity   :: Maybe Text
  , billingPriceUnitPrice     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BillingPrice where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "billingPrice")
instance ToJSON BillingPrice where
  toJSON = genericToJSON (removeFieldLabelPrefix "billingPrice")

instance Default BillingPrice
