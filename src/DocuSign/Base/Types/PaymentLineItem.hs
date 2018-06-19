module DocuSign.Base.Types.PaymentLineItem where

import DocuSign.Base.Types.Common

data PaymentLineItem = PaymentLineItem
  { paymentLineItemAmountReference :: Maybe Text
  , paymentLineItemDescription     :: Maybe Text
  , paymentLineItemItemCode        :: Maybe Text
  , paymentLineItemName            :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PaymentLineItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "paymentLineItem")
instance ToJSON PaymentLineItem where
  toJSON = genericToJSON (removeFieldLabelPrefix "paymentLineItem")

instance Default PaymentLineItem
