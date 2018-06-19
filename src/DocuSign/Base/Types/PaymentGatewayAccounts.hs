module DocuSign.Base.Types.PaymentGatewayAccounts where

import DocuSign.Base.Types.Common

data PaymentGatewayAccounts = PaymentGatewayAccounts
  { paymentGatewayAccountsDisplayName             :: Maybe Text
  , paymentGatewayAccountsPaymentGateway          :: Maybe Text
  , paymentGatewayAccountsPaymentGatewayAccountId :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON PaymentGatewayAccounts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "paymentGatewayAccounts")
instance ToJSON PaymentGatewayAccounts where
  toJSON = genericToJSON (removeFieldLabelPrefix "paymentGatewayAccounts")

instance Default PaymentGatewayAccounts
